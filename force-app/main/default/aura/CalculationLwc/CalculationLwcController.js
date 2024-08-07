({
	myAction : function(component, event, helper) {
      
        
     
	},
    Docall : function(component, event, helper) {
        var clickedbutton=event.getSource().getLocalId();
        var num1=component.get("v.input1");
        var num2=component.get("v.input2");
        var num3;
       
       
        
        if(clickedbutton==='add'){
          
            num3 =parseInt(num1) + parseInt(num2);
        }
        if(clickedbutton==='sub'){
              num3 =parseInt(num1)-parseInt(num2);
        }
        if(clickedbutton==='mult'){
              num3 =parseInt(num1) * parseInt(num2);
        }
        if(clickedbutton==='div'){
             num3 =parseInt(num1) /parseInt(num2);
        }
   component.set("v.output",num3)
    }
    

})