trigger CitizenTrigger on Citizens__c (before insert) {
    
    //for(Citizens__c person : Trigger.New){
    //  	person.vaccinated_status__c ='slot not yet booked';
    //
    
    if(Trigger.isBefore){
        
        set<string>emailids=new set<string> ();
        map<String,Citizens__c> citizensEmailmap =new map<String,Citizens__c>();
        for(Citizens__c person : Trigger.New){
            emailids.add(person.Email_Id__c);
            
            
            
        }
        list<Citizens__c> citizenRecord =[select Name,DOB__c,Email_Id__c,Phone_Number__c from Citizens__c
                                          where Email_Id__c=:emailids];
        for(Citizens__c citizen : citizenRecord){
            citizensEmailMap.put(citizen.Email_Id__c, citizen);
                }
        
       for(Citizens__c person : Trigger.New){
           if(citizensEmailMap.get(person.Email_Id__c)!=Null){
               
               person.addError('already customer is existing with this email id');
           }else{
               person.vaccinated_status__c='slot not yet booked';
               
           }
       }
                
                if(Trigger.isAfter){
                    
                }
        }
    }