trigger AccountTrigger on Account (before insert ,after insert ,before update ,after update) {
    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccountTriggerHandler.insertBefore(Trigger.New);
        }
        else if(Trigger.isAfter){
              AccountTriggerHandler.createRelaredopp(Trigger.New);
        } 
        }
    if(Trigger.isUpdate){
         if(Trigger.isBefore){
            AccountTriggerHandler.updatephonenumberdescription(Trigger.New ,Trigger.oldMap);
        }
          else if(Trigger.isAfter){
              AccountTriggerHandler.createRelaredopp(Trigger.New);
        } 
    }
        
    }