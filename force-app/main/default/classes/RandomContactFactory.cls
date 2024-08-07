public class RandomContactFactory {
    
    
    public static  List<Contact> generateRandomContacts(Integer num, String lastname){
        list<Contact> conlist =new list<Contact>();
        for(Integer i=0;i<num; i++){
            Contact c=new Contact(FirstName ='abcd'+i ,LastName ='efgh');
            conlist.add(c);
            
        }
        return conlist;
    }

}