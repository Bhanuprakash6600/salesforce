trigger SlotconfirmationTrigger on Slot_Confimation_Data__c (after insert) {
    Map<Id,String> citizenIdAndDoseMap =new Map<Id,String>();
    
    for(Slot_Confimation_Data__c data:Trigger.New){
        citizenIdAndDoseMap.put(data.Citizecns__c, data.which_dose__c);
        
    }
    List<Citizens__c> citizenData =[select Id,	vaccinated_status__c from Citizens__c where Id=:citizenIdAndDoseMap.keySet()];

     List<Citizens__c>  citizenDatatoupdate = new List<Citizens__c>();
    
    for(Citizens__c citizen :citizenData){
        citizen.vaccinated_status__c =citizenIdAndDoseMap.get(citizen.Id);
        citizenDatatoupdate.add(citizen);
    }
    update citizenDatatoupdate;
}