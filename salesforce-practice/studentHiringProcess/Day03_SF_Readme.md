
# Salesforce Interview Readiness Bootcamp – Day 3 Assignment

## Student Details

**Name:** NELLURI KOUSHIK
**Roll Number:** 23PA1A05H7
**Branch:** CSE - C

---

# Part 1 – Interview Warm-up

## 1. What is a Validation Rule?

A Validation Rule validates the data before it is saved into the Salesforce database. It checks whether the entered data meets the specified conditions. If the condition evaluates to **TRUE**, Salesforce displays an error message and prevents the record from being saved.

**Example:** `CGPA > 8.0`

---

## 2. What is a Flow?

Flow is a Salesforce automation tool used to automate business processes without writing code. It can perform tasks such as sending emails, updating records, and setting field values automatically.

**Common Types of Flows:**

- Record-Triggered Flow
- Screen Flow
- Scheduled Flow
- Autolaunched Flow
- Platform Event Flow

---

## 3. What is an Apex Trigger?

An Apex Trigger is used to execute custom business logic automatically before or after database operations such as insert, update, delete, or undelete. It is mainly used when Flow cannot handle complex business requirements.

---

## 4. When would you choose a Flow instead of a Trigger?

I would choose Flow whenever the business requirement can be completed using declarative automation. It is easier to build, maintain, and does not require writing Apex code.

---

## 5. Can a Validation Rule update another field? Why or why not?

No. A Validation Rule only validates the data entered by the user. It cannot update or modify any field values; it only allows or prevents the record from being saved.

---

## 6. Which executes first: Validation Rule, Flow, or Trigger?

```
Flow
   │
   ▼
Trigger
   │
   ▼
Validation Rule
```

---

## 7. What is a Record-Triggered Flow?

A Record-Triggered Flow automatically executes whenever a record is created, updated, or deleted. It allows developers and administrators to automate business processes without writing Apex code.

---

# Part 2 – Business Scenario

*(Implementation completed in Salesforce Org.)*

- Email notification to Placement Officer.
- Automatically populate Application Date.
- Prevent duplicate applications.
- Reject applications with low CGPA.
- Automatically create Offer Letter when Status becomes **Selected**.

---

# Part 3 – Design Challenge

| Requirement                   | Solution         |
| ----------------------------- | ---------------- |
| Reject Duplicate Applications | Validation Rule  |
| Auto-fill Application Date    | Before-Save Flow |
| Send Email                    | After-Save Flow  |
| Reject Low CGPA               | Validation Rule  |
| Create Offer Letter           | After-Save Flow  |

---

# Part 4 – Hands-on Assignment

Implemented a **Record-Triggered Flow** that:

- Automatically sets the Application Date.
- Sends an email notification to the Placement Officer.
- Successfully executes after record creation.

**Screenshots Included:**

- Flow Canvas
- Start Element
- Assignment Element
- Email Action
- Successful Execution

---

# Part 5 – Validation Rule Challenge

Implemented Validation Rules for:

- Student CGPA should meet the minimum job requirement.
- Application Date should not exceed the Job Closing Date.
- Mandatory fields cannot be left blank.

---

# Part 6 – Trigger vs Flow Debate

| Requirement           | Preferred Solution |
| --------------------- | ------------------ |
| Update Field          | Before-Save Flow   |
| Create Related Record | After-Save Flow    |
| Send Email            | After-Save Flow    |
| Call REST API         | Apex Trigger       |
| Complex Calculations  | Apex Trigger       |
| Process Large Data    | Apex Trigger       |

---

# Part 7 – Mini Project Enhancement

The Placement Management System was enhanced with:

- Record-Triggered Flow
- Validation Rules
- Automatic Email Notification
- Automatic Offer Letter Creation
- Automatic Application Date Population

---

# Part 8 – Debugging Challenge

## 1. What problem might occur?

If the Trigger, Flow, and Workflow all update the same **Status** field, they may conflict with each other. This can cause duplicate updates, unexpected behavior, and make debugging difficult.

---

## 2. Could automation repeatedly execute?

Yes. One automation updating the **Status** field can trigger another automation, creating a loop. This repeated execution may hit Salesforce governor limits and reduce system performance.

---

## 3. How would you redesign this solution?

I would use only one automation tool to update the **Status** field. If Flow can handle the requirement, I would use a **Record-Triggered Flow** and remove the Workflow Rule. Apex Trigger should be used only when the business logic is too complex for Flow.

---

# Part 9 – Interview Questions

## 1. What is the difference between Workflow, Process Builder, and Flow?

Workflow Rule is the oldest automation tool with limited features. Process Builder provides more functionality but is now retired. Flow is the latest and recommended automation tool that can handle almost all business requirements. Salesforce recommends using Flow for new automation.

---

## 2. Why is Flow replacing Workflow Rules?

Flow is replacing Workflow Rules because it is more powerful and flexible. It can perform complex tasks like creating records, sending emails, and calling Apex. It also improves performance and reduces the need for multiple automation tools.

---

## 3. What is a Record-Triggered Flow?

A Record-Triggered Flow runs automatically when a record is created or updated. It performs actions like updating fields, sending emails, or creating related records without manual intervention.

---

## 4. What are Before-Save and After-Save Flows?

Before-Save Flow runs before the record is saved and is mainly used to update the same record. After-Save Flow runs after the record is saved and is used for sending emails, creating related records, or updating other objects.

---

## 5. When should Apex be preferred over Flow?

Apex should be used when the business logic is too complex for Flow. It is useful for API integrations, complex calculations, and large-scale data processing.

---

## 6. Can Flow call Apex?

Yes. Flow can call Apex using Invocable Methods. This allows Flow to perform advanced operations that are not available using declarative automation alone.

---

## 7. What are the advantages of declarative automation?

Declarative automation requires little or no coding, making development faster and easier. It is easy to maintain, follows Salesforce best practices, and reduces development effort.

---

## 8. Explain one Flow that you built.

I built a Record-Triggered Flow for the Placement Management System. When a student submits an application, it automatically fills the Application Date and sends an email to the Placement Officer. This improves efficiency and reduces manual work.

---

## 9. Explain one Validation Rule that you created.

I created a Validation Rule to check whether a student's CGPA meets the minimum job requirement. If the CGPA is lower than the required value, Salesforce prevents the record from being saved and displays an error message.

---

## 10. If given the choice, why did you use Flow instead of Apex?

I used Flow because it can handle the required automation without writing code. It is easier to build, maintain, and modify than Apex. Apex should only be used for complex business logic or integrations.

---

# GitHub Repository

**GitHub:** *Add your GitHub Repository Link Here*

---

# Conclusion

Successfully completed all the required tasks for the **Salesforce Interview Readiness Bootcamp – Day 3 Assignment**, including Interview Questions, Business Scenario analysis, Validation Rules, Flow implementation, Trigger vs Flow comparison, Debugging Challenge, and Placement Management System enhancements.
