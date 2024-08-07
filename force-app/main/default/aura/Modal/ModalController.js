({
	cancelmodel : function(component, event, helper) {
        var cancelEvent =component.getEvent("Modalcancel");
        cancelEvent.setParams({"isitCancel" : true});

        cancelEvent.fire();
		
	},
    closemodel : function(component, event, helper) {
      var cancelEvent =component.getEvent("Modalcancel");
        cancelEvent.setParams({"isitCancel" : false});

        cancelEvent.fire();
		
		
	}
})