trigger Phone on Contact (after update) {

    if(trigger.isAfter && trigger.isUpdate){
        PhoneHandler.PhoneNumber(trigger.new ,trigger.OldMap);
    }

}