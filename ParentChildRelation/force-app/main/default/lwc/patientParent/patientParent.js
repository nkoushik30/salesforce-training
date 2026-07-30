import { LightningElement } from 'lwc';

export default class PatientParent extends LightningElement {

    recordId = '';

    message = 'Waiting for child...';

    handleChange(event){
        this.recordId = event.target.value;
    }

    handleNotify(event){
        this.message = event.detail;
    }

}