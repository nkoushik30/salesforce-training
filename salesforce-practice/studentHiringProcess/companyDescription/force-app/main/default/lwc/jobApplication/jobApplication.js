import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import { NavigationMixin } from 'lightning/navigation';

import ROLE_NAME_FIELD
    from '@salesforce/schema/Hiring_Company__c.Role_Name__c';

import COMPANY_NAME_FIELD
    from '@salesforce/schema/Hiring_Company__c.Name';

import ROLE_DESCRIPTION_FIELD
    from '@salesforce/schema/Hiring_Company__c.Role_Description__c';

export default class JobApplication extends NavigationMixin(LightningElement) {

    @api recordId;

    company;
    error;
    showMessage = false;

    @wire(getRecord, {
        recordId: '$recordId',
        fields: [
            ROLE_NAME_FIELD,
            COMPANY_NAME_FIELD,
            ROLE_DESCRIPTION_FIELD
        ]
    })
    wiredCompany({ data, error }) {

        if (data) {
            this.company = data;
            this.error = undefined;

            console.log('Hiring Company ID:', this.recordId);

            console.log(
                'Role Name:',
                getFieldValue(data, ROLE_NAME_FIELD)
            );

            console.log(
                'Company Name:',
                getFieldValue(data, COMPANY_NAME_FIELD)
            );

            console.log(
                'Description:',
                getFieldValue(data, ROLE_DESCRIPTION_FIELD)
            );
        }

        if (error) {
            this.company = undefined;
            this.error = error;

            console.error('Error loading Hiring Company:', error);
        }
    }

    get roleName() {
        return this.company
            ? getFieldValue(this.company, ROLE_NAME_FIELD)
            : '';
    }

    get companyName() {
        return this.company
            ? getFieldValue(this.company, COMPANY_NAME_FIELD)
            : '';
    }

    get roleDescription() {
        return this.company
            ? getFieldValue(this.company, ROLE_DESCRIPTION_FIELD)
            : '';
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

    handleView() {
        this.showMessage = !this.showMessage;
    }
}