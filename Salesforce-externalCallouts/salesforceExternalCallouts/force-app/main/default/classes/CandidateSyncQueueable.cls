public with sharing class CandidateSyncQueueable
    implements Queueable, Database.AllowsCallouts {

    private Id externalApplicationId;

    public CandidateSyncQueueable(Id externalApplicationId) {
        this.externalApplicationId = externalApplicationId;
    }

    public void execute(QueueableContext context) {

        External_Application__c applicationRecord = [
            SELECT Id,
                   Student__c,
                   Hiring_2026__c,
                   External_Application_Status__c
            FROM External_Application__c
            WHERE Id = :externalApplicationId
            LIMIT 1
        ];

        try {

            // Get Student information
            Student__c student = [
                SELECT Id,
                       Name,
                       Student_ID__c,
                       College_Email_ID__c,
                       Personal_Email_Id__c,
                       Branch__c
                FROM Student__c
                WHERE Id = :applicationRecord.Student__c
                LIMIT 1
            ];

            // Get Hiring 2026 information
            Hiring_2026__c hiring = [
                SELECT Id,
                       Hiring_Company__c,
                       Student_Btech_Percentage__c,
                       Student_Email__c,
                       Student_Mobile__c
                FROM Hiring_2026__c
                WHERE Id = :applicationRecord.Hiring_2026__c
                LIMIT 1
            ];

            // Build candidate JSON
            Map<String, Object> candidate =
                new Map<String, Object>();

            // Student ID
            candidate.put(
                'studentId',
                student.Student_ID__c
            );

            // Student name
            candidate.put(
                'name',
                student.Name
            );

            // Use college email first.
            // If college email is empty, use personal email.
            String email;

            if (String.isNotBlank(student.College_Email_ID__c)) {
                email = student.College_Email_ID__c;
            } else {
                email = student.Personal_Email_Id__c;
            }

            candidate.put(
                'email',
                email
            );

            
            // student Mobile number 
            candidate.put(
                'Mobile number',
                hiring.Student_Mobile__c
            );

            // Branch
            candidate.put(
                'branch',
                student.Branch__c
            );

            // Percentage
            candidate.put(
                'Percentage',
                hiring.Student_Btech_Percentage__c
            );

            // Hiring / Job ID
            candidate.put(
                'jobId',
                String.valueOf(hiring.Id)
            );

            // Hiring company
            candidate.put(
                'company',
                String.valueOf(hiring.Hiring_Company__c)
            );

            // Role is not currently available
            // in the fields you provided.
            candidate.put(
                'role',
                hiring.Hiring_Company__c.Name
            );

            // Selection date
            candidate.put(
                'selectionDate',
                String.valueOf(Date.today())
            );
            
            // Create HTTP request
            HttpRequest request = new HttpRequest();
            request.setEndpoint(
                'callout:Recruitment_API/candidates'
            );
            
            request.setMethod('POST');
            
            request.setHeader(
                'Content-Type',
                'application/json'
            );
            
            request.setBody(
                JSON.serialize(candidate)
            );
            
            request.setTimeout(10000);
            
            // Send request
            Http http = new Http();
           
            HttpResponse response = http.send(request);
           
            // Process response
            processResponse(
                applicationRecord.Id,
                response
            );
        } catch (Exception ex) {
            updateIntegrationFailure(
                applicationRecord.Id,
                'Unexpected integration error: ' +
                ex.getMessage()
            );
        }
    }

    private void processResponse(
        Id applicationId,
        HttpResponse response
    ) {
        Integer statusCode =
            response.getStatusCode();

        // SUCCESS
        if (statusCode == 200 || statusCode == 201) {
            String externalCandidateId;
            try {
                if (String.isNotBlank(response.getBody())) {
                    Map<String, Object> responseBody =
                        (Map<String, Object>)
                        JSON.deserializeUntyped(
                            response.getBody()
                        );
                    if (
                        responseBody.containsKey(
                            'candidateId'
                        )
                    ) {
                        externalCandidateId =
                            String.valueOf(
                                responseBody.get(
                                    'candidateId'
                                )
                            );
                    }
                }
            } catch (Exception ex) {
                externalCandidateId = null;
            }

            update new External_Application__c(
                Id = applicationId,
                External_Application_Status__c =
                    'Sent',
                External_Candidate_Id__c =
                    externalCandidateId,
                Last_Integration_Attempt__c =
                    System.now(),
                Integration_Error__c =
                    null
            );
            return;
        }

        // BAD REQUEST
        if (statusCode == 400) {
            updateIntegrationFailure(
                applicationId,
                '400 Bad Request: ' +
                response.getBody()
            );
            return;
        }

        // AUTHENTICATION FAILURE
        if (statusCode == 401) {
            updateIntegrationFailure(
                applicationId,
                '401 Authentication Failure: ' +
                response.getBody()
            );
            return;
        }

        // AUTHORIZATION FAILURE
        if (statusCode == 403) {
            updateIntegrationFailure(
                applicationId,
                '403 Forbidden: ' +
                response.getBody()
            );
            return;
        }


        // SERVER ERROR
        if (statusCode >= 500) {

            updateRetryRequired(
                applicationId,
                'External server error: HTTP ' +
                statusCode +
                ' - ' +
                response.getBody()
            );

            return;
        }


        // UNEXPECTED RESPONSE
        updateIntegrationFailure(
            applicationId,
            'Unexpected HTTP response: ' +
            statusCode +
            ' - ' +
            response.getBody()
        );
    }


    private void updateIntegrationFailure(
        Id applicationId,
        String errorMessage
    ) {

        update new External_Application__c(
            Id = applicationId,

            External_Application_Status__c =
                'Failed',

            Integration_Error__c =
                errorMessage,

            Last_Integration_Attempt__c =
                System.now()
        );
    }


    private void updateRetryRequired(
        Id applicationId,
        String errorMessage
    ) {
        update new External_Application__c(
            Id = applicationId,
            External_Application_Status__c =
                'Retry Required',
            Integration_Error__c =
                errorMessage,
            Last_Integration_Attempt__c =
                System.now()
        );
    }
}