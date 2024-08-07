public class CitizenLightngcontrollerbhanu {
    
    @AuraEnabled
    public static  List<Citizens__c> getcitizen(){
        list<Citizens__c> citizendata =[select 	Name,	Email_Id__c,Age__c from Citizens__c];
        return citizendata;
    }
     public static  List<Citizens__c> searchemail(String Emailid){
        list<Citizens__c> citizendata =[select 	Name,	Email_Id__c,Age__c from Citizens__c where 
                                        Email_Id__c =: Emailid];
        return citizendata;
    }

}