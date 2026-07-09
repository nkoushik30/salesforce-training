# Objective

The objective of Day 7 was to understand how enterprise-grade Salesforce applications are developed, tested, and maintained using professional development practices. This session focused on the importance of Apex Testing, asynchronous processing, Salesforce DX, Command-Line Interface (CLI), and the complete Salesforce development workflow used by development teams. It also demonstrated how different Salesforce components work together to build reliable, scalable, and maintainable enterprise applications. :contentReference[oaicite:0]{index=0}

Topics Covered:
- Apex Testing
- Unit Testing in Salesforce
- Asynchronous Apex
- Salesforce DX (Developer Experience)
- Salesforce CLI
- Professional Development Workflow
- Enterprise System Integration
- Test Case Design
- GitHub and Version Control

---

# What is Apex Testing?

Apex Testing is the process of verifying that Apex code works correctly before it is deployed into production. Salesforce requires developers to write test classes to validate business logic and ensure that applications behave as expected under different scenarios. :contentReference[oaicite:1]{index=1}

## Purpose

- Verify that Apex code functions correctly.
- Detect bugs before deployment.
- Improve application reliability.
- Ensure business requirements are met.
- Maintain application quality during future updates.

## Why is it Important?

In enterprise applications, even a small bug can impact thousands of users or business transactions. Testing helps developers identify issues early, reduce deployment risks, and maintain stable applications.

Salesforce enforces testing by requiring at least **75% Apex code coverage** before production deployment.

## Where is it Used in Salesforce?

Apex Testing is used for:

- Apex Classes
- Apex Triggers
- Batch Apex
- Queueable Apex
- Future Methods
- Scheduled Apex

## Enterprise Relevance

Large organizations continuously update their Salesforce applications. Automated testing ensures that new features do not break existing functionality, making software maintenance easier and more reliable.

### Example Test Class

```apex
@isTest
private class AccountTest {

    @isTest
    static void createAccountTest() {

        Account acc = new Account(Name='ABC Pvt Ltd');

        insert acc;

        System.assertEquals(
            'ABC Pvt Ltd',
            [SELECT Name FROM Account WHERE Id=:acc.Id].Name
        );
    }
}
```

---

# What is Unit Testing?

Unit Testing is the process of testing individual units of code independently to verify that each component performs its intended function.

## Purpose

- Validate individual methods.
- Verify business logic.
- Detect defects early.
- Increase confidence before deployment.

## Why is it Important?

Instead of testing the complete application at once, developers test each small component independently, making debugging much easier.

## Where is it Used?

Unit tests are commonly written for:

- Apex methods
- Trigger logic
- Utility classes
- Controller classes
- Service classes

## Enterprise Relevance

Enterprise software contains thousands of methods. Unit testing ensures every critical function continues to work correctly even after frequent code changes.

### Example

```apex
System.assertEquals(100, totalAmount);
```

---

# What is Asynchronous Apex?

Asynchronous Apex allows code to execute in the background instead of immediately. This enables Salesforce to process long-running operations without delaying the user's current request. :contentReference[oaicite:2]{index=2}

## Purpose

- Execute long-running operations.
- Improve system performance.
- Prevent request timeouts.
- Handle large data volumes efficiently.

## Why is it Important?

Some business operations require significant processing time. Running them synchronously would slow down the user interface and may exceed Salesforce governor limits.

Asynchronous processing improves both system performance and user experience.

## Types of Asynchronous Apex

- Future Methods
- Queueable Apex
- Batch Apex
- Scheduled Apex

## Where is it Used?

Typical use cases include:

- Sending bulk emails
- Processing thousands of records
- External API integrations
- Data synchronization
- Large report generation

## Enterprise Relevance

Large organizations often perform background jobs involving millions of records. Asynchronous Apex enables these operations without affecting active users.

### Future Method Example

```apex
@future
public static void sendEmail() {

    // Background email processing

}
```

---

# Synchronous vs Asynchronous Processing

| Synchronous | Asynchronous |
|-------------|--------------|
| Executes immediately | Executes later in the background |
| User waits for completion | User continues working |
| Suitable for quick operations | Suitable for long-running tasks |
| Faster response required | Better for heavy processing |

### Real-World Example

**Synchronous**

Customer clicks **Save** and immediately receives confirmation.

**Asynchronous**

After saving, Salesforce sends hundreds of confirmation emails in the background without making the customer wait.

---

# What is Salesforce DX?

Salesforce DX (Developer Experience) is Salesforce's modern development framework that supports source-driven development, team collaboration, version control, and automated deployment. :contentReference[oaicite:3]{index=3}

## Purpose

- Simplify Salesforce development.
- Enable collaborative development.
- Integrate with GitHub.
- Support continuous integration and deployment.

## Why is it Important?

Traditional Salesforce development relied heavily on browser-based configuration.

Salesforce DX introduces a modern software development workflow similar to other programming platforms.

## Features

- Source-driven development
- Scratch Orgs
- Version control integration
- Package-based development
- Team collaboration
- Automated deployment

## Where is it Used?

Salesforce DX is commonly used with:

- Visual Studio Code
- GitHub
- Salesforce CLI
- CI/CD Pipelines

## Enterprise Relevance

Large organizations have multiple developers working simultaneously. Salesforce DX allows teams to collaborate efficiently while maintaining version history and deployment consistency.

### Example CLI Command

```bash
sf org create scratch
```

---

# What is Salesforce CLI?

Salesforce CLI (Command-Line Interface) is a command-line tool that enables developers to create projects, authenticate organizations, retrieve metadata, deploy code, run tests, and automate Salesforce development tasks. :contentReference[oaicite:4]{index=4}

## Purpose

- Automate repetitive tasks.
- Increase developer productivity.
- Manage Salesforce projects.
- Simplify deployments.

## Why is it Important?

Instead of performing manual operations through the browser, developers can execute commands quickly from the terminal.

## Common CLI Commands

```bash
sf org login web
```

```bash
sf project deploy start
```

```bash
sf project retrieve start
```

```bash
sf apex run test
```

## Enterprise Relevance

Professional development teams automate deployments using Salesforce CLI, reducing manual effort and improving deployment consistency.

---

# Professional Salesforce Development Workflow

Modern Salesforce development follows a structured workflow that supports collaboration, testing, version control, and automated deployment.

Typical workflow:

1. Create a Salesforce DX project.
2. Develop features in Visual Studio Code.
3. Store source code in GitHub.
4. Test using Apex Test Classes.
5. Deploy using Salesforce CLI.
6. Validate functionality.
7. Release to production through CI/CD pipelines.

This workflow ensures applications remain stable, maintainable, and scalable.

---

# Complete Enterprise System Workflow

The following example demonstrates how different Salesforce features work together in a College Management System. :contentReference[oaicite:5]{index=5}

```
Student Registration
        │
        ▼
Validation Rules verify data
        │
        ▼
Flow sends confirmation message
        │
        ▼
Apex Trigger updates course availability
        │
        ▼
Formula Fields recalculate remaining seats
        │
        ▼
Platform Event publishes notification
        │
        ▼
Database stores records
        │
        ▼
Reports and Dashboards generate analytics
```

## Explanation

### Student Registration

The student submits the registration form.

### Validation Rules

Salesforce validates mandatory fields, email format, and business rules before saving the record.

### Flow

A Flow automatically sends a confirmation email or updates related records.

### Apex Trigger

The trigger updates course enrollment counts whenever a new student registers.

### Formula Fields

Formula fields automatically calculate values such as available seats or enrollment percentages.

### Platform Events

Notifications are published to connected systems or applications.

### Database

Validated records are stored securely within Salesforce.

### Reports and Dashboards

Management views real-time analytics for admissions, enrollments, and available seats.

---

# Important Test Cases

## 1. Invalid Email Address

**Test**

Enter an incorrectly formatted email.

**Expected Result**

Validation Rule prevents record creation.

**Risk if Not Tested**

Incorrect communication with students.

---

## 2. Duplicate Registration

**Test**

Attempt to register the same student twice.

**Expected Result**

Duplicate records are prevented.

**Risk if Not Tested**

Duplicate admissions and inconsistent reports.

---

## 3. Course Overbooking

**Test**

Register students after course capacity has been reached.

**Expected Result**

Registration is blocked.

**Risk if Not Tested**

Students may exceed available seats.

---

## 4. Attendance Calculation

**Test**

Verify attendance percentage after updates.

**Expected Result**

Formula fields calculate correct values.

**Risk if Not Tested**

Incorrect academic records.

---

## 5. Trigger Execution

**Test**

Create a student record and verify that related course counts update correctly.

**Expected Result**

Course availability is updated automatically.

**Risk if Not Tested**

Enrollment statistics become inaccurate.

---

# Background Processing Examples

The following operations are better executed asynchronously:

## Sending Bulk Emails

Thousands of emails can be processed in the background without slowing the application.

## Large Report Generation

Complex reports can be generated asynchronously while users continue working.

## Data Synchronization

Synchronizing Salesforce with external systems is more efficient when processed in the background.

---

# GitHub and Version Control

GitHub provides a centralized repository for managing Salesforce source code.

## Benefits

- Version history
- Team collaboration
- Code reviews
- Branch management
- Rollback capability
- CI/CD integration

Enterprise teams rely on GitHub to safely manage changes across multiple developers.

---

# Reflection

Enterprise software development requires much more than writing code. Applications must be reliable, scalable, maintainable, and easy to update without disrupting business operations.

Apex Testing ensures business logic is correct before deployment. Asynchronous Apex improves performance by processing long-running operations in the background. Salesforce DX introduces a modern source-driven development approach, while Salesforce CLI automates repetitive development tasks. GitHub enables collaboration, version control, and continuous integration.

Together, these technologies form the foundation of professional Salesforce development, allowing organizations to build secure, high-quality applications that can evolve efficiently as business requirements change. :contentReference[oaicite:6]{index=6}