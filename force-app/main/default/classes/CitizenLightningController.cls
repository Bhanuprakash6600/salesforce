public class CitizenLightningController {
    
   @AuraEnabled
    public static  List<Citizens__c> getCitizens(){
        list<Citizens__c> citizendata=[select Name,DOB__c,Email_Id__c,Phone_Number__c from Citizens__c];
        return citizendata; 
        
}
       @AuraEnabled
    public static   list<Citizens__c> getdata(string state){
        list<Citizens__c> citizendata=[select Name,DOB__c,Email_Id__c,Phone_Number__c from Citizens__c
                                      where State__c=:state];
        return citizendata; 
        
}
  
}