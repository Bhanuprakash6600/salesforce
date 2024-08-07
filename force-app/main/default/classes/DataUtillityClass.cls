public class DataUtillityClass {
    Public List<Account>Accounts{set;get;}
    Public List<Contact>contactsdata{set;get;}
    Public List<Case>casesdata{set;get;}
    Public List<Vaccine_Orders__c>orderlist{set;get;}
    
    public DataUtillityClass(){
          orderlist = [select	Name,Vaccine__c,Vaccine__R.Manufactured_By__c,Vaccine__R.No_OF_Doses__c,Vaccine__R.Instruction_to_use_vaccine__c
                       from Vaccine_Orders__c];
        
        contactsdata=new List<Contact>();
        casesdata=new List<Case>();
        
        
        Accounts = [select Name,Id ,(select Name,Id from contacts),
                   (select Id from cases) from Account];
        
        for(Account acc :Accounts){
            if(acc.contacts.size()>0){
             contactsdata.addAll(acc.contacts);   
            }
              if(acc.contacts.size()>0){
              casesdata.addAll(acc.cases);   
            }
            
            
        }
        
    }
    Public void getordersAndvaccineDetails(){
      
        
    }

}