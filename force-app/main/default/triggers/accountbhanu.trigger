trigger accountbhanu on Account (before insert ,after insert,after update) {
    if(trigger.isInsert && trigger.isbefore){
        AccountBhanuHandler.vadliationtype(trigger.new);
        
    }
    if(trigger.isInsert && trigger.isafter){
        AccountBhanuHandler.insertcontact(trigger.new);
       
    }

    if(trigger.isupdate && trigger.isafter){
        AccountBhanuHandler.createopportunity(trigger.newMap ,trigger.oldMap);

    }
    if(trigger.isDelete && trigger.isBefore){
        AccountBhanuHandler.preventaccountdelete(trigger.old);
    }

}
