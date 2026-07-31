import { LightningElement } from 'lwc';

export default class Hiring_component extends LightningElement {

    studentName = 'Nelluri Koushik';
    studentEmail = '23pa1a05h7@vishnu.edu.in';
    mobileNumber = '8309094146';
    CGPA = 8.8;
    collegeName = 'Vishnu';
    resumeLink = 'https://nelluri-koushik-portfolio.vercel.app/';
    status = "Not Applied";
    showMessage = false;
    
    // Updates student name
    handleStudentNameChange(event) {
        this.studentName = event.target.value;
    }
    
    // Updates student email
    handleStudentEmailChange(event) {
        this.studentEmail = event.target.value;
    }

    // Updates Mobile number
    handleMobileNumberChange(event) {
        this.mobileNumber = event.target.value;
    }

    //updates CGPA
    handleCGPAChange(event){
        this.CGPA = event.target.value;
    }

    //Updates College Name 
    handleCollegeNameChange(event){
        this.collegeName = event.target.value
    }

    //Updates resume Link
    handleResumeLinkChange(event){
        this.resumeLink =  event.target.value;
    }
    // Shows welcome message
    handleSubmit() {
        this.showMessage = true;
        this.status = "Applied";
    }
}