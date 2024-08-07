trigger ClosedOpportunityTrigger on Opportunity (after insert , after update) {
    
    List<Task> tlist =new List<Task>();
    
    for(Opportunity oppo: trigger.new){
        if(oppo.StageName == 'Closed Won'){
            tlist.add(new Task(Subject = 'Follow Up Test Task', WhatId = oppo.Id));
        }
    }
    if(tlist.size()>0){
        INSERT tlist;
    }

}