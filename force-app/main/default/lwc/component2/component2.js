import {LightningElement ,api,track} from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {NavigationMixin} from 'lightning/navigation';
export default class Component2 extends NavigationMixin(LightningElement) {		
           showDetails = false;
           fields;
         component; showhide; buttonShow =true;showErrMsg = false;  
	//	@track Fnameval;
    SaveChange(event){
        if(!this.showErrMsg){

            this.template.querySelector('lightning-record-edit-form').submit(this.fields);
            alert("Your data was saved")
            window.location.href =".https://bhanu6600-saleforce-dev-ed.lightning.force.com/lightning/o/Candidate__c/list?filterName=Recent";
           

       }
          }    
	 handleSuccess(event) {		
			 this.showDetails = true;
			 event.preventDefault();
              this.showHide = 'slds-hidden';       
            this.fields = event.detail.fields;
        const evt = new ShowToastEvent({
            //title: "Candidate Account created",
           // message: "Record ID: " + event.detail.id,
            //variant: "success"
        });
        this.dispatchEvent(evt);
        alert("Your data was saved")
        window.location.href =".https://bhanu6600-saleforce-dev-ed.lightning.force.com/lightning/o/Candidate__c/list?filterName=Recent";
       
	
    }
		handleReset() {
        const inputFields = this.template.querySelectorAll(
            'lightning-input'
        );
        if (inputFields) {
            inputFields.forEach(field => {  field.reset();}); }         
        
    }
    handleSubmit (event){

        event.preventDefault();

        this.showHide = 'slds-hidden';

        this.showDetails = true;

        this.fields = event.detail.fields;

 

    }
    handleCheckBox(event){

        if(event.target.checked == true)
    
        this.buttonShow = false;
    
        else
    
        this.buttonShow = true;
    
       }
       handleSaveRecords(){

        if(!this.showErrMsg){

             this.template.querySelector('lightning-record-edit-form').submit(this.fields);
             

        }

    }
		
}