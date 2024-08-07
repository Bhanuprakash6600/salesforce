public class CitizenRegstractionClass1 {
    public  Citizens__c NewCitizen{get;set;}
    public Boolean showblock{get;set;}
    public Boolean showblock2{get;set;}
    
    
    public CitizenRegstractionClass1(){
       showblock2=true;
        
    }
    public void action(){
         NewCitizen =new Citizens__c();
        showblock=true;
        showblock2=false;
        
    }
    public void action1(){
        showblock=false;
        showblock2=true;
    
        
    }
    public void submit(){
        Insert NewCitizen;
        
    }
    

}