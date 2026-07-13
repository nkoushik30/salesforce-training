
# Salesforce Administrator - Day 1: User Management & Security

## Overview

This repository contains the work completed for **Salesforce Administrator Track - Day 1**. The focus of this task is understanding Salesforce user management, access control, identity management, and enterprise security principles.

---

## Learning Objectives

By completing this task, I learned:

- The responsibilities of a Salesforce Administrator
- How Salesforce manages users
- Differences between Roles, Profiles, and Permission Sets
- Identity Management and Single Sign-On (SSO)
- Enterprise security best practices
- How organizations control user access to data

---

## Trailhead Modules Completed

- Salesforce Admin: Quick Look
- Prepare Your Salesforce Org for Users
- User Management
- Identity Basics
- Permission Set Groups

---

## Key Concepts

### Salesforce Administrator

A Salesforce Administrator is responsible for configuring, maintaining, and securing a Salesforce organization. Their responsibilities include:

- User Management
- Security Configuration
- Data Management
- Automation
- Customization
- Reports and Dashboards
- System Maintenance

---

### Difference Between User, Role, Profile, and Permission Set

| Component      | Purpose                                                                                                                             |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| User           | Represents an individual who logs into Salesforce.                                                                                  |
| Profile        | Defines what a user can do, including object permissions, field access, and system permissions. Every user has exactly one profile. |
| Role           | Determines record visibility through the role hierarchy. It controls what records users can view.                                   |
| Permission Set | Provides additional permissions without changing the user's profile. A user can have multiple permission sets.                      |

---

## Identity Management

Salesforce Identity Management enables secure authentication and access across applications.

Topics covered:

- Authentication
- Authorization
- Identity Provider (IdP)
- Service Provider (SP)
- Single Sign-On (SSO)
- Secure Login Management

---

## Practical Exercise

Designed user access for the following roles:

- Student
- Faculty
- Placement Officer
- Head of Department (HOD)
- Principal
- Salesforce Administrator

Access permissions were considered for:

- Student Records
- Course Records
- Placement Records
- Attendance Records

Each role was evaluated based on:

- View
- Create
- Edit
- Delete

---

## College Security Design

### Student

- View own records
- No delete permissions
- Limited edit permissions

### Faculty

- Manage attendance
- Update course information
- View student records

### Placement Officer

- Manage placement records
- View student academic information

### HOD

- Department-wide visibility
- Approve departmental updates

### Principal

- Organization-wide visibility
- Administrative reporting

### Salesforce Administrator

- Full system access
- User management
- Security management
- Configuration and customization

---

## Administrator Access Risks

Accidentally assigning Administrator access to a student could lead to:

- Unauthorized access to confidential records
- Data modification or deletion
- User account management
- Security setting changes
- Permission escalation
- Exposure of sensitive institutional data

### Prevention

- Apply the Principle of Least Privilege
- Regularly audit user permissions
- Use Permission Sets instead of unnecessary profile changes
- Enable Multi-Factor Authentication (MFA)
- Review login history and setup audit trail
- Restrict administrator accounts

---

## Reflection

Enterprise systems contain sensitive business and customer data. Strong access control ensures that users can only access the information necessary for their responsibilities.

Implementing Roles, Profiles, Permission Sets, and Identity Management helps maintain data security, regulatory compliance, and operational integrity.

---

## Interview Questions Practiced

- What is a Salesforce User?
- What is a Profile?
- What is a Permission Set?
- Difference between Role and Profile?
- Why should users not be given Administrator access?
- What is Single Sign-On (SSO)?
- What is Identity Management?
- How does Salesforce secure data?
- Why can a user have multiple Permission Sets but only one Profile?
- What does a Salesforce Administrator do?

---

## Skills Gained

- Salesforce Administration Fundamentals
- User Management
- Security & Access Control
- Profiles and Permission Sets
- Role Hierarchy
- Identity Management
- Enterprise Security
- Single Sign-On (SSO)
- Salesforce Best Practices

---

## Repository Structure

```
admin-day1-user-management/
│── README.md
```

---

## Conclusion

Day 1 established the foundation of Salesforce Administration by focusing on user management and enterprise security. Understanding how Roles, Profiles, Permission Sets, and Identity Management work together is essential for building secure and scalable Salesforce organizations.
