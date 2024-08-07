import { LightningElement } from 'lwc';

export default class Quizz_App extends LightningElement {

    selected={}
    correctanswer =0;
    issubmitted=false;
    get Allnotselected(){
        return ! (Object.keys(this.selected).length===this.MYQuestions.length)

    }
    MYQuestions =[
        { Id :"Question1",
        question:"capital of Ap",
        answer:{
            A:"ctr",
            B:"vjy",
            C:"sri"
        },
        correctanswer:"B"
    },
    {
        Id :"Question2",
        question:"capital of ts",
        answer:{
            A:"ctr",
            B:"vjy",
            C:"hyd"
        },
        correctanswer:"c"


    },
    {
        Id :"Question3",
        question:"capital of Ka",
        answer:{
            A:"Blr",
            B:"vjy",
            C:"sri"
        },
        correctanswer:"A"
    }
       
    ]
    changehandler(event){
        console.log('name',event.target.name)
        console.log('value',event.target.value)
        const{name ,value}=event.target
        this.selected={...this.selected,[name]:value}
    }
    submithandler(event){
        event.preventDefualt()
      let correct =  this.MYQuestions.filter(item=>this.selected[item.Id] === item.correctanswer)
      this.correctanswer=correct.length
      this.issubmitted=true;


    }
    resethandler(){
        this.selected={}
        this.correctanswer=0
        
    }
}