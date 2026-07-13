
# Salesforce Administrator - Day 4: Security & Sharing Model

## Overview

This repository contains the work completed for **Salesforce Administrator Track - Day 4**. The focus of this task is understanding Salesforce's Security & Sharing Model, including Organization-Wide Defaults (OWD), Role Hierarchy, Sharing Rules, Field-Level Security, and Record-Level Security.

---

## Learning Objectives

By completing this task, I learned to:

- Understand Salesforce's layered security model
- Configure Organization-Wide Defaults (OWD)
- Implement Role Hierarchies
- Create Sharing Rules
- Differentiate Profiles, Permission Sets, and Roles
- Design secure access for enterprise organizations

---

## Trailhead Modules Completed

- Data Security
- Control Access to Objects
- Control Access to Fields
- Control Access to Records
- Role Hierarchy
- Sharing Rules

---

# Salesforce Security Model

Salesforce uses multiple layers of security to control user access:

1. Organization-Level Security
2. Object-Level Security
3. Field-Level Security
4. Record-Level Security

Together, these layers ensure users can only access the data required for their responsibilities.

---

# What is Organization-Wide Default (OWD)?

Organization-Wide Default (OWD) defines the default level of access users have to records they do not own.

### Common OWD Settings

- Private
- Public Read Only
- Public Read/Write
- Controlled by Parent

### Why OWD is Important

- Protects sensitive data
- Restricts unnecessary access
- Forms the foundation of record-level security
- Supports enterprise compliance requirements

---

# What is Role Hierarchy?

Role Hierarchy allows users higher in the organizational hierarchy to automatically access records owned by users below them.

### Benefits

- Simplifies data sharing
- Mirrors organizational structure
- Enables managerial oversight
- Eliminates unnecessary manual sharing

---

# What are Sharing Rules?

Sharing Rules automatically grant additional record access to users beyond the Organization-Wide Default settings.

### Types of Sharing Rules

- Owner-Based Sharing Rules
- Criteria-Based Sharing Rules

### Benefits

- Extend access without changing ownership
- Support collaboration
- Maintain secure default settings

---

# Difference Between Profile, Permission Set, and Role

| Feature          | Profile                                | Permission Set                      | Role                      |
| ---------------- | -------------------------------------- | ----------------------------------- | ------------------------- |
| Purpose          | Defines what a user can do             | Grants additional permissions       | Defines record visibility |
| Required         | Yes (One per user)                     | Optional (Multiple allowed)         | Optional                  |
| Controls         | Object, Field, App, System permissions | Extra object and system permissions | Record-level access       |
| Multiple Allowed | No                                     | Yes                                 | No (One role per user)    |

---

# College Security Design

## User Roles

- Student
- Faculty
- Placement Officer
- Head of Department (HOD)
- Principal
- Salesforce Administrator

---

## Access Design

| Role                     | View                           | Edit                    | Delete      |
| ------------------------ | ------------------------------ | ----------------------- | ----------- |
| Student                  | Own records only               | Limited profile updates | No          |
| Faculty                  | Student and attendance records | Attendance              | No          |
| Placement Officer        | Placement records              | Placement details       | Limited     |
| HOD                      | Department records             | Department records      | Limited     |
| Principal                | All records                    | Most records            | Restricted  |
| Salesforce Administrator | Full access                    | Full access             | Full access |

---

# Faculty Access Scenario

## Requirement

- Faculty A should only access CSE students.
- Faculty B should only access ECE students.
- HOD should access all students within the department.
- Principal should access every student record.

---

## Security Design

### Organization-Wide Default

Student Records → **Private**

Reason:

Only record owners should have default access.

---

### Role Hierarchy

```
Principal
    │
   HOD
    │
Faculty
    │
Students
```

Reason:

Higher-level users automatically inherit access from lower roles.

---

### Sharing Rules

- Share CSE student records with CSE Faculty.
- Share ECE student records with ECE Faculty.
- Department-wide access for HOD.
- Principal receives organization-wide visibility through the role hierarchy.

---

### Permission Sets

Use Permission Sets to grant additional capabilities such as:

- Placement management
- Attendance updates
- Temporary project permissions
- Special administrative tasks

---

# Reflection

## Why Should Salesforce Not Make All Records Public?

1. Protects sensitive student information.
2. Prevents unauthorized access.
3. Ensures regulatory compliance.
4. Reduces accidental data modification.
5. Maintains organizational hierarchy.
6. Protects confidential placement data.
7. Limits access based on job responsibilities.
8. Improves overall system security.
9. Supports audit and accountability.
10. Preserves data integrity and privacy.

---

# Interview Questions Practiced

1. What is Organization-Wide Default (OWD)?
2. What is a Role Hierarchy?
3. What is a Sharing Rule?
4. Difference between Profile and Role?
5. Difference between Object Access and Record Access?
6. What is Field-Level Security?
7. Why are Sharing Rules needed?
8. How does Salesforce secure records?
9. Why not make all records public?
10. Explain the Salesforce Security Model.
11. Difference between Profile and Permission Set?
12. Why can a user have multiple Permission Sets but only one Profile?

---

# Skills Gained

- Salesforce Security Model
- Organization-Wide Defaults (OWD)
- Role Hierarchy
- Sharing Rules
- Record-Level Security
- Object-Level Security
- Field-Level Security
- Permission Sets
- Enterprise Access Control
- User Access Management

---

# Repository Structure

```
admin-day4-security-sharing/
│── README.md
```

---

# Conclusion

Day 4 focused on one of the most critical areas of Salesforce Administration—Security and Sharing. By understanding Profiles, Permission Sets, Roles, OWD, Role Hierarchies, Sharing Rules, and Field-Level Security, administrators can design secure, scalable, and compliant access models that protect organizational data while enabling effective collaboration.
