import { LightningElement, api, wire } from 'lwc';

import { getRecord } from 'lightning/uiRecordApi';

import NAME_FIELD from '@salesforce/schema/Patient__c.Name';

const fields = [NAME_FIELD];

export default class PatientChild extends LightningElement {

    @api recordId;

    @wire(getRecord,{
        recordId:'$recordId',
        fields
    })
    patient;

    sendMessage(){

        const event = new CustomEvent('notify',{
            detail:'Button clicked from Child Component'
        });

        this.dispatchEvent(event);

    }

}