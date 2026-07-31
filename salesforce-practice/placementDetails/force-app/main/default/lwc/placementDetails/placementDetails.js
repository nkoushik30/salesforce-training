import { LightningElement } from 'lwc';

export default class PlacementDetails extends LightningElement {
    placementName = 'The ksquare Group';
    startDate = '25/07/2026';
    endDate = '25/07/2026';
    status = 'CLosed';
    totalApplied = 200;
    totalselected = 28;
    totalNotSelected = this.totalApplied - this.totalselected;
}