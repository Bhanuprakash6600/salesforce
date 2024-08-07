public with sharing class CasetriggerHandler {
    public static void CasetriggerHandler(List<Case> casedeletedList) {

        set<Id> aads = new set<Id>();

        if(!casedeletedList.isEmpty()){
            for(case deletedlist : casedeletedList)
            {
              if(deletedlist.account !='null'){
                aads.add(deletedlist.AccountID)
                
              }


            }
        }

    }
}