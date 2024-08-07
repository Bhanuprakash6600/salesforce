public with sharing class AccountBhanuHandler {
    public AccountBhanuHandler() {

    }
    public static void  vadliationtype(List<account> accountlist){
        for(account obj:accountlist){
            if(obj.rating =='hot' && obj.Type ==null){
                obj.addError('fill this detail');
            }
        }

    }
    public static void insertcontact(List<account> accountlist){
        List<Contact> contactlist = new List<Contact>();
        for(account obj:accountlist){
            Contact con=new Contact();
                con.LastName=obj.Name;
                con.AccountId=obj.Id;
                con.email=obj.Email_ID__c;
                contactlist.add(con);
            }
            if(contactlist!=null && contactlist.size()>0){
                insert Contactlist;
            }
    }
    public static void createopportunity(Map<Id, Account> ActMapNew,Map<Id, Account> ActMapOld){
        List<Opportunity> OpportunityList = new List<Opportunity>();
        for(account objlist:ActMapNew.values()){
            if(ActMapNew.get(objlist.Id).Rating!=ActMapOld.get(objlist.Id).Rating
            && ActMapNew.get(objlist.Id).Rating == 'Warm'){
            Opportunity opp =new Opportunity();
            opp.AccountId =objlist.Id;
            opp.Name =objlist.Name;
            opp.Stagename='hello bhanu';
            OpportunityList.add(opp);
        }
    }
        if(!OpportunityList.isEmpty()){
            try{
                insert OpportunityList;
            }
        
        catch(Exception e){
            System.debug('eg'+e.getMessage());

        }
    }
    }
    public static void preventaccountdelete(List<Account> accountlist){
        Set<Id> accountIdset =new set<Id>();
        Map<Id,boolean> PrimarySetDataMap = new Map<Id,boolean>();
        
        For(Account obj :accountlist){
            accountIdset.add(obj.Id);
        
        }
        if(accountIdset!=null && accountIdset.size()>0){
            for(contact conobj:[select id,Is_Primary__c,AccountId from Contact
            where  AccountId in : accountIdset And Is_Primary__c=true])
            PrimarySetDataMap.put(conobj.AccountId,conobj.Is_Primary__c);
        }
        for (Account obj :accountlist){
            if(PrimarySetDataMap.get(obj.id)!='' && PrimarySetDataMap.get(obj.id)==true){
                obj.addError('you cant delete thia account');
            }
        }

    }
    
   
}
