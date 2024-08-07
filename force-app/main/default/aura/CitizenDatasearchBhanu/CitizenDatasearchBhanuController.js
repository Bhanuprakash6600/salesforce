({
    
    myAction : function(component, event, helper) {
        var emailformui=component.get("v.Emailid");
        component.set('v.columns',[
            {label:'Name',fieldname:'Name', type:'text'},
            {label:'email',fieldname:'Email_Id__c', type:'email'},
            {label:'age',fieldname:'Age__c', type:'text'},
        ]);
        
        
       var apexCall=component.get("c.getcitizen");
            apexCall.setParam({Emailid:emailformui});
        apexCall.setcallBack(this,function(response){
            component.set("v.data",response.getReturnValue());
        });
        $A.enqueueAction(apexCall);
        
       
    }        
})