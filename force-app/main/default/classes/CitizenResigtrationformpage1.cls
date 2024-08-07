public class CitizenResigtrationformpage1 {
    Public Boolean showoutput1{get;set;}
    Public Boolean showoutput2{get;set;}
    Public Boolean showoutput3{get;set;}
    Public String searchid{get;set;}
    Public String username{get;set;}
    Public String password{get;set;}
     Public String searchstr{get;set;}
    
    public Citizens__c Newrecord;
    public List<Citizens__c> results{get;set;}
    
    public CitizenResigtrationformpage1(apexPages.StandardController strCtr1){
        showoutput2=true;
        Newrecord=(Citizens__c)strCtr1.getRecord();
       
        
    }
     public void save(){
         insert Newrecord;
        showoutput1=false;
        showoutput2=true;
        showoutput3=false;
        
    }
    
    
    Public void action1(){
        showoutput1=true;
        showoutput2=false;
        showoutput3=false;
       
       
    }
    
    public void action2(){
        showoutput1=false;
        showoutput2=true;
        showoutput3=false;
        
    }
    public void action3(){
         showoutput1=false;
        showoutput2=false;
        showoutput3=true;
        
    }
    public void SubmitForsearch(){
        results=[Select id,Name,Address__c,	Age__c from Citizens__c WHERE Name=:searchstr];
    }
      public PageReference submitforsignin(){
          PageReference PageRef;

       //List<Citizens__c> signresults=[Select Password__c,Name	from Citizens__c WHERE (Email_Id__c=:username or Phone_Number__c=:username) and Password__c:=password];
     List<Citizens__c> signresults=[Select Name from Citizens__c WHERE Name=:username ];
         // List<Citizens__c> signresults=[Select id,Name,Address__c,	Age__c from Citizens__c WHERE Name=:searchstr];
          if(signresults.size()>0){
             PageRef =new PageReference('/apex/SigninSuccesfulmessage');
              
            
          }
          else{
                Apexpages.addMessage(new ApexPages.message(ApexPages.severity.CONFIRM, 'Password is incrt'));
              
          }
          return PageRef;
    }
    
    
    
    
}