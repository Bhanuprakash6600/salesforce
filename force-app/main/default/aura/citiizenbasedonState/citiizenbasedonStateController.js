({
	handlechange : function(component, event, helper) {
        component.set("v.citizenColumns",
                      [{label:"name", fieldName:"Name" , type:"text"},
                       {label:"phone", fieldName:"Phone_c", type:"text"}] );
        var selectedoptionvalue=event.getParam("value");
        alert("hello"+selectedoptionvalue);
        
        var action =componint.get("c.getdata");
        action.setParams({state :selectedoptionvalue});
        action.setCallback(this,function(res){
           var results= res.getReturnValue();
            component.get("v.CitizenData",results)
        });
        $A.enqueueAction(action);
		
	}
})