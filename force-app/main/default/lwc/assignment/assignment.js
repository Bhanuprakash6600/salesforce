import { LightningElement,track,api} from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import Candidate_object from '@salesforce/schema/Candidate__c';

export default class assignment extends LightningElement {
   objectApiName=Candidate_object;
   showDetails = false;
   fields;
   component;
   showHide =false;
   buttonShow = true;
   showOutput = false;
   handleCheckBox(event){
    if(event.target.checked == true)
    this.buttonShow = false;
    else
    this.buttonShow = true;
   }
   
   handleSubmit(event){
    //this.showDetails = true;
    this.showDetails = true;
    this.showOutput = false;
   

    event.preventDefault();
    
    this.fields = event.detail.fields;

}

SaveForm(){
        if(!this.showOutput){
             this.template.querySelector('lightning-record-edit-form').submit(this.fields);
        }
    }
            
handleSuccess(event){
                  alert(event.detail.id);
                    const evt = new ShowToastEvent({
                            title: 'Success',
                            message: 'Record sucessfully inserted',
                            variant: 'success',
                            mode: 'dismissable'
                        });
                    this.dispatchEvent(evt);
                     this[NavigationMixin.Navigate]({
                        type: 'standard__recordPage',
                        attributes: {
                            recordId: event.detail.id,
                            target: '_blank',
                            objectApiName: 'Candidate__c',
                            actionName: 'view'
                        },
                    }).then((url)=>{
                        window.open(url);
                    });
                    eval("$A.get('e.force:refreshView').fire();");
                }
            }