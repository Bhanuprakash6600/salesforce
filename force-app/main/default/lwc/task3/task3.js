import { LightningElement,track,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Candidate_object from '@salesforce/schema/Candidate__c';

export default class Task3 extends LightningElement {
   objectApiName=Candidate_object;
   showDetails = false;
   fields;
   component;
   showHide;
   buttonShow = true;
   showErrMsg = false;
   handleCheckBox(event){
    if(event.target.checked == true)
    this.buttonShow = false;
    else
    this.buttonShow = true;
   }

   
   handleSubmit(event){
    event.preventDefault();
    this.showHide = 'slds-hidden';
    this.showDetails = true;
    this.fields = event.detail.fields;
   }

  
   
        
    
   
    
    handleRemove(event){
        const valueRemoved =event.target.name;
        this.allValues.splice(this.allValues.indexOf(valueRemoved),1);
    }
   
    Error(event){

    }
    
    SaveForm(){
        if(!this.showErrMsg){
             this.template.querySelector('lightning-record-edit-form').submit(this.fields);
             alert("Your data was saved")
             window.location.href =".https://bhanu6600-saleforce-dev-ed.lightning.force.com/lightning/o/Candidate__c/list?filterName=Recent";
            
        }
    }
            Submit(event){
                event.preventDefault();
                this.showHide = 'slds-hidden';
                this.showDetails = true;
                this.fields = event.detail.fields;
         
            }
                closeAction(){
                    const isClose = true;
                  
                    this.dispatchEvent(new CloseActionScreenEvent());
                  
                    const valueChangeEvent = new CustomEvent("closeAction", {
                  
                        detail: { isClose }
                  
                      });
                  
                      
                  
                      this.dispatchEvent(valueChangeEvent);
                  }

                  


    
}