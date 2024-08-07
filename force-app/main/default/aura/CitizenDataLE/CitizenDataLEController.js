({
	myAction : function(component, event, helper) {
       component.set("v.showform",false);
        component.set('v.columns',[
            {label:'Name',fieldName:'Name',type:'text'},
             {label:'Date of birth',fieldName:'DOB__c',type:'	Date'},
             {label:'Email',fieldName:'Email_Id__c',type:'email'},
             {label:'Phone_Number__c',fieldName:'Phone_Number__c',type:'text'},
            
        ]);
            
       var apexCall = component.get("c.getCitizens1");
             
        apexCall.setcallBack(this,function(result){
               
           component.set("v.data", result.getReturnValue());
            
                             
         });
        $A.enqueueAction(apexCall);
		
	},
            showcreatecitizen : function(component, event, helper) {
            component.set("v.showform",true);
            },
            
            
         hidemodal : function(component, event, helper) {
            component.set("v.showform",false);
            var param1=event.getParam("isitCancel")
            alert(param1);
            if(param1===true){  
            var  toastevent=$A.get("e.force:showToast");
            
            toastevent.setParams({
            
            "title":"success",
            "message":"citizencannel",
            "type":"warning"
            });
            toastevent.fire();
            
            }
            else{
            
            var  toastevent=$A.get("e.force:showToast");
            
            toastevent.setParams({
            
            "title":"success",
            "message":"citizen",
            "type":"sucess"
            });
            toastevent.fire();
            }
           
             
            }
            
})