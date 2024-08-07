import { LightningElement,track } from 'lwc';

export default class HellowWorld extends LightningElement {
    greeting = 'World';
    changeHandler(event) {
      this.greeting = event.target.value;

      
    }
    fullname='salceforce';
    title='aura'
    changeHandler(event){
      this.title=event.target.value;
    }

    @track address ={
      city : 'bangalore',
      state: 'Ap',
      pincode:'517112'

    }
    onchangehandler(event){
      this.address.city=event.target.value;
    }
}