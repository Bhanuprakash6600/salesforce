public class CovishiedDetailscontroller {
   Public Slot_Confimation_Data__c vaccine{get;set;}
    public boolean ShowEntryDetails{Set;get;}
     public boolean ShowconfirmationDetails{Set;get;}
    
    Public CovishiedDetailscontroller(){
        ShowEntryDetails=true;
       vaccine =new Slot_Confimation_Data__c();
        Vaccine__c vaccinedetails=[Select Id,Name from Vaccine__c where Name='cowids'];
        
        vaccine.Vaccine__c=vaccinedetails.Id;
    } 
        Public void save(){
            ShowEntryDetails=false;
            ShowconfirmationDetails=true;
            
            insert vaccine;
             Apexpages.addMessage(new ApexPages.message(ApexPages.severity.CONFIRM, 'Password is incrt'));
        
        
    }
         Public PageReference gotoHomepage(){
      PageReference  PageRef = new PageReference('/apex/SigninSuccesfulmessage');
       
        return PageRef;
    }

}