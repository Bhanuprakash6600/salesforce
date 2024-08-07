public class VaccineSlotBookingController {
    Public List<Slot_Confimation_Data__c> slitsBooked{get;set;}
    
    Public String recordNametoDelete{set;get;}
    
    Public PageReference redirectToslotDetailpage(){
      PageReference  PageRef = new PageReference('/apex/VaccineslotBooking');
       
        return PageRef;
    }

     Public PageReference gotoCovishieldpage(){
      PageReference  PageRef = new PageReference('/apex/Covidsheiddetailpage');
       
        return PageRef;
    }
    public VaccineSlotBookingController(){
        slitsBooked=[Select Id,Name,Date_of_vaccine__c,Citizecns__c,Vaccine__c from Slot_Confimation_Data__c];
    }
    public void DeleteRecord(){
          system.debug('recordNametoDelete'+recordNametoDelete);
              List< Slot_Confimation_Data__c> slitsBookedinfo=[Select Id,Name,Date_of_vaccine__c,Citizecns__c,Vaccine__c from Slot_Confimation_Data__c where Name =:recordNametoDelete];
        Delete slitsBookedinfo;
        
    }
       public void refresh10sec(){
         

                slitsBooked=[Select Id,Name,Date_of_vaccine__c,Citizecns__c,Vaccine__c from Slot_Confimation_Data__c order By CreatedDate DESC] ;
        
    }
}