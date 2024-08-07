@istest
public class TestRestrictContactByName {
    @istest
    public static void testcontact(){
        Contact c =new Contact();
        c.LastName ='INVALIDNAME';
        Test.startTest();
        Database.SaveResult result =Database.insert(c , false);
        Test.stopTest();
        
        System.Assert(!result.isSuccess());
        System.Assert(result.getErrors().size() >0);
        System.assertEquals('The Last Name INVALIDNAME is not allowed for DML',result.getErrors()[0].getMessage());
    }

}