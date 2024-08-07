public class CitizenController {
   public List<Citizens__c> CitizensRecordList{get;set;}
    
    public CitizenController(){
        
        CitizensRecordList=[select Name,Aadhar__c,Phone_Number__c from Citizens__c];
    }
}