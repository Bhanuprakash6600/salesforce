public class Citizen1 {
    public String F{get;set;}
    public String Ln{get;set;}
    public String Phone{get;set;}
    public String Email{get;set;}
    public String Address{get;set;}
    public String password{get;set;}
    public String DoB{get;set;}
    Public String Output{get;set;} 
    
    pUblic void submit(){
        Citizens__c citizens=new Citizens__c();
        citizens.Name=F+LN;
        citizens.Email_Id__c=Email;
        citizens.Phone_Number__c=Phone;
        citizens.Address__c=Address;

        insert citizens;
        
        if(citizens.Id!=NULL){
           Output ='this is sucessful store in data';
            Apexpages.addMessage(new ApexPages.message(ApexPages.severity.CONFIRM, 'we can see data'));
        
        
    }
    
    }

}