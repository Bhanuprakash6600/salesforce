public class AccountTriggerHandler {
    public static void insertBefore(List<Account> newList){
        for(Account acc : newList){
            if(acc.Industry !=null && acc.Industry == 'Media'){
                acc.Rating = 'Hot';
            }   
        }
       
    }
  public static void createRelaredopp(List<Account> newList){
        List<Opportunity> opportunitytobeinsert = new List<Opportunity>();
        
        for(Account acc : newList){
            Opportunity opp =new Opportunity();
            opp.Name = acc.Name;
            opp.AccountId = acc.Id;
            opp.StageName ='Prospecting';
            opp.CloseDate = System.today();
            opportunitytobeinsert.add(opp);
                
        }
        if(!opportunitytobeinsert.isEmpty()){
            insert opportunitytobeinsert;
        }
        
        
    }
    
    public static void updatephonenumberdescription(List<Account> newlist,Map<Id,Account> oldMap){
        
        for(Account acc: newlist){
            if(oldMap!=null && acc.Phone!= oldMap.get(acc.Id).phone){
                acc.Description ='phone was updated';
            }
            
        }
        
    }
}