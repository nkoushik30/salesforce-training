import { LightningElement, wire } from 'lwc';
import getPatients from '@salesforce/apex/PatientController.getPatients';

export default class HospitalMgmt extends LightningElement {

    patients;
    error;

    @wire(getPatients)
    wiredPatients({ error, data }) {
        if (data) {
            this.patients = data;
            this.error = undefined;
        } else if (error) {
            this.error = error.body.message;
            this.patients = undefined;
        }
    }
}