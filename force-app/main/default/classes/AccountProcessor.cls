public class AccountProcessor {
    @future
    public static void countContacts(List<ID> accountId_lst){
        Map<Id,Integer> account_cno =new Map<Id,Integer>();
        List<account> account_lst_all=new List<account>([select id,(select id from contacts) from account]);
        for(account a:account_lst_all){
            account_cno.put(a.id,a.contacts.size());
        }
        List<account> account_lst =new List<account>();
        for(Id accountId : accountId_lst){
            if(account_cno.containsKey(accountId)){
            account acc=new account();
            acc.id=accountid;
            acc.Number_Of_Contacts__c = account_cno.get(accountId);
            account_lst.add(acc);
        }
    }
    upsert account_lst;

}
}