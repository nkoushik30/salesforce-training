public with sharing class CandidateSyncInvoker {

    public class Request {
        @InvocableVariable(required=true)
        public Id externalApplicationId;
    }
    @InvocableMethod(
        label='Sync Candidate to External Recruitment System'
        description='Queues the selected candidate for external recruitment synchronization'
    )
    public static void syncCandidate(List<Request> requests) {
        for (Request request : requests) {
            if (request.externalApplicationId == null) {
                continue;
            }
            System.enqueueJob(
                new CandidateSyncQueueable(
                    request.externalApplicationId
                )
            );
        }
    }
}