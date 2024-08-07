trigger accountname on account (before insert) {
    if(trigger.insert && trigger.isbefore){
        for(account obj:trigger.new){
            if(obj.rating =='hot' && obj.Type ==null){
                abj.addError('fill this detail')
            }
        }
    }

}