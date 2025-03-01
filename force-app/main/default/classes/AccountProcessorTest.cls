@isTest
public class AccountProcessorTest {
 @istest
    public static void testFun(){
        account acc =new account();
        acc.Name = ' MATW INC';
        insert acc;
        
        contact con = new contact();
        con.lastName ='bhanu1';
        con.AccountId =acc.Id;
        insert con;
        
        contact con1 =new contact();
        con1.lastName ='reddy';
        con1.AccountId =acc.Id;
        insert con1;
        
        List<Id> acc_list =new List<Id>();
        acc_list.add(acc.Id);
        Test.startTest();
         AccountProcessor.countContacts(acc_list);
        Test.stopTest();
        List<account> acc1 =new List<account>([select Number_of_Contacts__c from account where id = :acc.id]);
        system.assertEquals(2,acc1[0].Number_of_Contacts__c);
        
    }
}