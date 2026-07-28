public with sharing class PatientController {
    @AuraEnabled(cacheable=true)
    public static List<Patient__c> getPatients() {
        return [
            SELECT Id,
                   Name,
                   Patient_Mobile__c,
                   Patient_Gender__c
            FROM Patient__c
            ORDER BY CreatedDate DESC
        ];
    }
}