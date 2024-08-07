import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import WEBSITE_FIELD from '@salesforce/schema/Account.Website';
import Rating_FIELD from '@salesforce/schema/Account.Rating'
import Phone from '@salesforce/schema/Account.Phone';
import NumberOfEmployees from '@salesforce/schema/Lead.NumberOfEmployees';
import AccountId from '@salesforce/schema/Opportunity.AccountId';
import BillingAddress from '@salesforce/schema/Account.BillingAddress';
import Fax from '@salesforce/schema/Account.Fax';
import AnnualRevenue from '@salesforce/schema/Account.AnnualRevenue';
//import DisplayUrl from '@salesforce/schema/Product2.DisplayUrl';


/**
 * Creates Account records.
 */
export default class AccountCreator extends LightningElement {

    accountObject = ACCOUNT_OBJECT;
    myFields = [NAME_FIELD, WEBSITE_FIELD,Rating_FIELD,Phone,NumberOfEmployees,AccountId,BillingAddress,AnnualRevenue,Fax];

    handleAccountCreated(){
        //alert("Your data was saved")
       // this.template.querySelector(".https://bhanu6600-saleforce-dev-ed.lightning.force.com/lightning/o/Account/list?filterName=Recent");

       window.location.href = "https://bhanu6600-saleforce-dev-ed.lightning.force.com/lightning/o/Account/list?filterName=Recent";
    }
}