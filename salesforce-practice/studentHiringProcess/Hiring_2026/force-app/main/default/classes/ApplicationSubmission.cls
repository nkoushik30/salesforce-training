public with sharing class ApplicationSubmission {

    public static void submitApplication(String studentEmail) {

        List<Hiring_2026__c> existingApplications = [
            SELECT Id
            FROM Hiring_2026__c
            WHERE Student_Email__c = :studentEmail
            LIMIT 1
        ];

        if (!existingApplications.isEmpty()) {
            System.debug('Duplicate application found.');
        } else {
            System.debug('Applied successfully.');
        }
    }
}