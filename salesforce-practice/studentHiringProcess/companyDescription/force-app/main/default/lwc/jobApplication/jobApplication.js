import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { NavigationMixin } from 'lightning/navigation';

import ROLE_NAME_FIELD
    from '@salesforce/schema/Hiring_Company__c.Role_Name__c';

export default class JobApplication extends NavigationMixin(LightningElement) {

    @api recordId;

    company;
    error;

    @wire(getRecord, {
        recordId: '$recordId',
        fields: [ROLE_NAME_FIELD]
    })
    wiredCompany({ data, error }) {

        if (data) {
            this.company = data;
            this.error = undefined;

            console.log('Hiring Company ID:', this.recordId);
        }

        if (error) {
            this.company = undefined;
            this.error = error;

            console.error('Error:', error);
        }
    }

    get roleName() {

        if (!this.company) {
            return '';
        }

        return getFieldValue(
            this.company,
            ROLE_NAME_FIELD
        );
    }

    handleApply() {

        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Hiring_2026__c',
                actionName: 'new'
            }
        });

    }
}