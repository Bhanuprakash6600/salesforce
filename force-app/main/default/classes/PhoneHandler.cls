public with sharing class PhoneHandler {
    public Static void PhoneNumber(List<Contact> Newlist,Map<Id,Contact> OldMap) {
        Map<Id,Contact> conMapPhone = new Map<Id,Contact>();
        List<Contact> listupdatecontacts =new List<Contact>();
        List<Account> Listupdateaccount = new List<Account>();

        If(!Newlist.isEmpty()){

            for(Contact newCon : Newlist)
            {
                if(OldMap != null){
                    Contact oldCon = OldMap.get(newCon.Id);

                    if(newCon.AccountId != null && newCon.Phone != oldCon.phone)
                    {
                        conMapPhone.put(newCon.AccountId,newCon);

                    }

                }

            }
        }
        if(!conMapPhone.isEmpty())
        {
            List<Contact> conList = [Select id,Phone,AccountId from Contact where AccountId IN : conMapPhone.keyset()];
            for(Contact con : conList)
            {
                if(conMapPhone.containskey(con.AccountId) && con.phone != conMapPhone.get(con.AccountID).phone){
                    con.phone = conMapPhone.get(con.AccountId).phone;
                    listupdatecontacts.add(con);
                    
                }

            }

        }
        for(Id Ids :conMapPhone.keyset())
        {
            account acc=new account();
            acc.id = Ids;
            acc.phone = conMapPhone.get(Ids).phone;
            Listupdateaccount.add(acc);
            System.debug('Listupdateaccount'+ acc);

        }
        if(!listupdatecontacts.isEmpty()){

            Update listupdatecontacts;
            System.debug('1Listupdateaccount'+ listupdatecontacts);
        }

        if(!Listupdateaccount.isEmpty()){

            Update Listupdateaccount;
            System.debug('2Listupdateaccount'+Listupdateaccount);
        }

    }
}