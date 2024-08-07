@istest
public class TestVerifyDate {
    @istest
    public static void CheckDates(){
        Date testdatenew =verifydate.CheckDates(date.today(), date.today().addDays(-1));
        system.assertEquals(date.newInstance(2023, 10, 30),testdatenew);
    }
    
    @istest
    public static void DateWithin30Days(){
        Date testdatenew =verifydate.CheckDates(date.today(), date.today().addDays(20));
        system.assertEquals(date.today().addDays(20),testdatenew);
    }
     @istest
    public static void testdatenews(){
        Date testdatenew =verifydate.CheckDates(date.today(), date.today().addDays(31));
        system.assertEquals(date.newInstance(2023, 10, 30),testdatenew);
    }

}