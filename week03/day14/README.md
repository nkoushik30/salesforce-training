# Objective

The objective of Day 14 was to understand how Salesforce automates business processes using Flow Builder and Approval Processes. The focus was on designing controlled enterprise workflows using decision-based automation, branching logic, variables, approvals, and governance principles to ensure secure and reliable business operations.

Topics Covered:
- Salesforce Flow Builder
- Decision Elements
- Variables and Resources
- Formula Logic
- Branching Workflows
- Multi-Step Automation
- Approval Processes
- Multi-Level Approvals
- Enterprise Governance
- Controlled Business Operations

---

# What is Salesforce Flow Builder?

Salesforce Flow Builder is a declarative automation tool that allows administrators and developers to create business processes without writing code.

A Flow can:

- Automate repetitive tasks
- Update records automatically
- Send notifications
- Collect user input
- Execute business logic
- Integrate multiple Salesforce objects

Flow Builder helps organizations reduce manual work while ensuring business rules are consistently followed.

---

# Components of a Flow

A Salesforce Flow consists of several building blocks that work together to automate a process.

### Start Element

Defines how the flow begins.

Examples:

- Record Created
- Record Updated
- Scheduled Trigger
- Screen Flow
- Manual Launch

---

### Decision Element

Decision elements evaluate conditions and determine which path the workflow should follow.

Example:

```
Attendance >= 75%
        │
       Yes
        │
Student continues normally
        │
       No
        │
Send Warning
```

Decision elements make workflows intelligent by allowing different actions based on business conditions.

---

### Variables

Variables temporarily store information that can be used throughout the flow.

Examples:

- Student Name
- Attendance Percentage
- Leave Days
- Scholarship Amount

Variables make workflows dynamic and reusable.

---

### Assignment Elements

Assignment elements modify or store values inside variables.

Examples:

- Increase leave balance
- Update approval status
- Store calculated values

---

### Action Elements

Actions perform business operations such as:

- Sending Emails
- Creating Records
- Updating Records
- Calling Apex
- Posting Notifications

---

# Branching Flow Logic

Branching allows a single workflow to perform different actions depending on conditions.

Example:

```
Check Student Attendance
          │
          ▼
Attendance ≥ 75%
      │
      ▼
No Action Required

Attendance < 75%
      │
      ▼
Warning Email

Attendance < 60%
      │
      ▼
Notify Parents

Attendance < 50%
      │
      ▼
Escalate to Administrator
```

### Decision Points

- Attendance is evaluated.
- Different thresholds determine different branches.

### Branches

- Normal attendance
- Warning notification
- Parent notification
- Administrative escalation

### Actions Triggered

- Email notification
- Parent communication
- Administrative review
- Possible disciplinary action

Branching ensures that every situation is handled appropriately based on predefined business rules.

---

# Multi-Step Workflow Example

Example: Student Scholarship Request

```
Student submits request
          │
          ▼
Verify eligibility
          │
          ▼
Department Review
          │
          ▼
Finance Approval
          │
          ▼
Principal Approval
          │
          ▼
Scholarship Granted
```

Each stage must be completed before the workflow moves to the next step.

---

# What is an Approval Process?

An Approval Process is a Salesforce automation feature that routes records to one or more approvers before important actions are completed.

Approval processes help organizations maintain accountability, security, and compliance.

Typical approval actions include:

- Approve
- Reject
- Recall
- Reassign

---

# Multi-Level Approval Workflow Design

## 1. Course Creation

### Approval Order

1. Faculty Member submits course proposal.
2. Head of Department reviews the proposal.
3. Academic Committee verifies curriculum alignment.
4. Principal grants final approval.

### After Approval

- Course is created.
- Students can register.
- Notification is sent to relevant departments.

### After Rejection

- Proposal returns to faculty with comments.
- Faculty modifies and resubmits.

---

## 2. Faculty Leave Request

### Approval Order

1. Faculty submits leave request.
2. Head of Department reviews availability.
3. HR verifies leave balance.
4. Principal approves extended leave if required.

### After Approval

- Leave is recorded.
- Attendance system is updated.
- Faculty receives confirmation.

### After Rejection

- Leave request is declined.
- Reason is communicated to the faculty member.

---

## 3. Student Scholarship Request

### Approval Order

1. Student submits application.
2. Scholarship Committee verifies eligibility.
3. Finance Department confirms funding.
4. Principal approves the scholarship.

### After Approval

- Scholarship is awarded.
- Student records are updated.
- Payment process begins.

### After Rejection

- Student receives rejection with appropriate reason.

---

## 4. Budget Approval

### Approval Order

1. Department submits budget proposal.
2. Finance Department reviews costs.
3. Finance Manager validates allocation.
4. Principal grants final approval.

### After Approval

- Budget becomes available.
- Procurement process begins.

### After Rejection

- Proposal is returned for revision.

---

# Why Enterprises Use Approval Workflows

Approval workflows ensure that important business decisions are reviewed before implementation.

Benefits include:

- Better accountability
- Reduced errors
- Increased transparency
- Regulatory compliance
- Controlled business operations

---

# Enterprise Governance

Governance refers to the policies and controls that ensure business processes are executed securely and consistently.

Good governance helps organizations:

- Protect sensitive information
- Prevent unauthorized actions
- Maintain compliance
- Improve accountability
- Reduce operational risks

---

# Why Can't Everyone Modify Important Records?

Allowing unrestricted access creates significant business risks.

Possible problems include:

- Unauthorized record changes
- Fraud
- Incorrect approvals
- Data corruption
- Security breaches
- Financial losses
- Regulatory violations

Sensitive operations should only be performed by authorized personnel following defined approval procedures.

---

# Why Automation Must Follow Business Rules

Automation should always reflect organizational policies.

Business rules ensure that:

- Correct decisions are made
- Policies are enforced consistently
- Errors are minimized
- Compliance requirements are met
- Workflows remain predictable

Without business rules, automation may perform incorrect or unsafe actions.

---

# Enterprise Workflow Example

```
Record Created
        │
        ▼
Check Business Rules
        │
        ▼
Decision Element
   │            │
Approved     Rejected
   │            │
Update       Notify User
Records
   │
   ▼
Complete Workflow
```

This structured approach ensures every process follows the organization's governance requirements.

---

# Reflection

Today's learning demonstrated that enterprise systems require controlled workflows rather than unrestricted actions. Approval processes, branching logic, and governance ensure that important business decisions are reviewed, validated, and executed securely.

Flow Builder enables organizations to automate complex processes while maintaining consistency, accountability, and compliance. These practices are essential in large organizations where thousands of users interact with business-critical data every day.

---

# Revision Questions

### 1. Why are approval workflows important?

They ensure important business actions are reviewed and authorized before execution, improving accountability and reducing errors.

### 2. Why do businesses require governance?

Governance protects business data, enforces policies, ensures compliance, and reduces operational risks.

### 3. What are branching workflows?

Branching workflows use decision logic to direct a process along different paths based on defined conditions.

### 4. Why should automation follow business rules?

Business rules ensure automation performs consistent, accurate, and policy-compliant actions.

### 5. Why are decision nodes important in flows?

Decision nodes evaluate conditions and determine the appropriate workflow path based on business logic.

### 6. Why should enterprises restrict sensitive operations?

Restricting sensitive operations prevents unauthorized access, protects data, and minimizes business risks.

### 7. Why are approvals important in large organizations?

Approvals ensure accountability, maintain governance, and prevent unauthorized or incorrect business decisions.

### 8. Why should workflows be auditable?

Auditable workflows provide transparency, support compliance, simplify troubleshooting, and maintain a complete history of business actions.