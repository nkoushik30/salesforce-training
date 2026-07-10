# Objective

The objective of Day 13 was to understand how Salesforce applications are deployed and maintained in enterprise environments. Instead of focusing on writing code, the emphasis was on learning the software delivery lifecycle, DevOps principles, CI/CD pipelines, GitHub-based collaboration, deployment workflows, and release management used by professional Salesforce development teams.

Topics Covered:
- Salesforce Development Lifecycle
- Org Development Model
- Sandbox Strategy
- CI/CD (Continuous Integration & Continuous Deployment)
- GitHub Collaboration
- Branching Strategy
- Deployment Pipelines
- Release Management
- Salesforce DX Overview
- DevOps Concepts
- Enterprise Software Delivery

---

# What is the Salesforce Development Lifecycle?

The Salesforce Development Lifecycle is a structured process that teams follow to build, test, validate, and deploy Salesforce applications safely.

Rather than making changes directly in the Production Org, developers work through multiple environments to ensure quality and stability.

Typical workflow:

```
Developer Sandbox
        ↓
Integration Testing
        ↓
User Acceptance Testing (UAT)
        ↓
Staging
        ↓
Production
```

Benefits include:

- Safer deployments
- Better collaboration
- Easier bug tracking
- Reduced production risks
- Reliable software releases

---

# Org Development Model

Salesforce organizations (Orgs) are separated into different environments to support development and deployment.

### Development Sandbox

- Individual workspace for developers
- Used to write Apex, LWC, Flows, and configurations
- Safe environment for experimentation

### Integration Sandbox

- Combines work from multiple developers
- Used to verify compatibility between features

### UAT (User Acceptance Testing)

- Business users validate functionality
- Confirms requirements before deployment

### Production Org

- Live environment used by end users
- Only thoroughly tested changes should be deployed

---

# What is CI/CD?

CI/CD stands for:

- **Continuous Integration (CI)**
- **Continuous Deployment (CD)**

CI/CD automates the software delivery process by validating code before deployment and reducing manual effort.

Typical CI/CD pipeline:

```
Developer
      ↓
Git Commit
      ↓
GitHub Repository
      ↓
Automated Build
      ↓
Automated Testing
      ↓
Validation
      ↓
Deployment
      ↓
Production
```

---

# Continuous Integration (CI)

Continuous Integration is the practice of regularly merging code changes into a shared repository.

During CI:

- Code is committed frequently
- Automated builds are triggered
- Unit tests run automatically
- Errors are detected early

Advantages:

- Faster feedback
- Fewer merge conflicts
- Higher code quality
- Improved collaboration

---

# Continuous Deployment (CD)

Continuous Deployment automates the release of validated code to target environments.

Deployment may occur to:

- Testing Org
- Staging Org
- Production Org

Benefits include:

- Faster releases
- Consistent deployments
- Reduced manual errors
- Reliable software delivery

---

# Why Deployment Workflow Matters

Enterprise Salesforce applications support thousands of users and critical business operations.

A structured deployment workflow helps to:

- Prevent system failures
- Protect business data
- Ensure application stability
- Validate code before release
- Reduce downtime

Without a proper deployment process, even small mistakes can impact an entire organization.

---

# Why Editing Production Directly is Dangerous

Direct changes in the Production Org can lead to serious issues.

Possible risks include:

- Application crashes
- Data loss
- Broken automation
- Security vulnerabilities
- Downtime for users
- Difficult rollback

For example, if a college management system serving 50,000 students receives an untested update, admission processes, attendance, grading, or fee management could stop working immediately.

---

# GitHub in Salesforce Development

GitHub acts as the central repository for Salesforce source code.

It provides:

- Version control
- Team collaboration
- Code history
- Branch management
- Pull requests
- Code reviews
- Backup of project source

GitHub enables multiple developers to work on the same project without overwriting each other's changes.

---

# Problems Without Version Control

Without Git or GitHub:

- Developers overwrite each other's work
- No history of code changes
- Difficult to identify bugs
- No rollback capability
- Merge conflicts become unmanageable
- Increased deployment failures

Version control ensures traceability and controlled collaboration.

---

# Why Large Teams Need Branches

In enterprise projects, developers work on separate branches instead of modifying the main codebase directly.

Branching allows teams to:

- Develop features independently
- Fix bugs safely
- Review code before merging
- Reduce integration conflicts
- Maintain project stability

Typical branch strategy:

```
Main Branch
     │
 ├── Feature Branch A
 ├── Feature Branch B
 ├── Bug Fix Branch
 └── Release Branch
```

---

# Team Collaboration Scenario

Imagine a project with 10 Salesforce developers working simultaneously.

Without GitHub, branches, testing, and deployment workflows:

- Developers could overwrite each other's work.
- Multiple versions of the same file would create conflicts.
- Bugs could reach production without testing.
- Releases would become unpredictable.
- Tracking responsibility for changes would be difficult.

Using GitHub and CI/CD enables structured collaboration, code reviews, automated testing, and controlled deployments.

---

# Enterprise Deployment Risks

Enterprise applications require careful release management because failures affect thousands of users.

Common deployment risks include:

- Downtime
- Data corruption
- Broken integrations
- Failed automation
- Performance issues
- Security vulnerabilities
- User dissatisfaction

These risks are minimized through testing, validation, approvals, and staged deployments.

---

# Salesforce DX and DevOps

Salesforce DX (Developer Experience) provides modern tools for source-driven Salesforce development.

Combined with DevOps practices, it enables:

- Source-driven development
- Git-based collaboration
- Automated deployments
- Continuous testing
- Team-based workflows
- Faster release cycles

Together, Salesforce DX and DevOps improve development efficiency and software quality.

---

# What is DevOps?

DevOps is a software engineering culture that combines development and operations to deliver software more efficiently.

Core principles include:

- Automation
- Collaboration
- Continuous testing
- Continuous deployment
- Monitoring
- Rapid feedback

The goal is to release reliable software quickly while minimizing risks.

---

# CI/CD Workflow Explained

```
Developer Writes Code
          ↓
Git Commit
          ↓
GitHub Repository
          ↓
Automated Testing
          ↓
Validation
          ↓
Deployment
          ↓
Production Release
```

### Importance of Each Step

**Developer Writes Code**

New features or bug fixes are implemented.

**Git Commit**

Changes are tracked and stored in version control.

**GitHub Repository**

Provides collaboration, history, and centralized source management.

**Automated Testing**

Detects bugs before deployment.

**Validation**

Ensures code meets quality and deployment requirements.

**Deployment**

Moves validated changes into target environments.

**Production Release**

Makes stable features available to end users.

---

# Writing Code vs Engineering Enterprise Software

Writing code focuses on implementing functionality.

Engineering enterprise software involves:

- Planning
- Collaboration
- Version control
- Testing
- Deployment strategies
- Security
- Maintainability
- Scalability
- Monitoring
- Long-term reliability

A working program is only one part of delivering enterprise software successfully.

---

# Reflection

Day 13 highlighted that successful Salesforce development extends beyond coding. Enterprise applications require structured workflows, collaborative development practices, automated testing, and reliable deployment strategies.

Understanding CI/CD, GitHub collaboration, DevOps, and release management prepares developers to contribute effectively in professional Salesforce teams where software quality, stability, and maintainability are essential.

---

# Revision Questions

### 1. Why is deployment workflow important?

It ensures software is tested, validated, and safely deployed while minimizing production risks.

### 2. Why should teams avoid editing production directly?

Direct changes may introduce bugs, downtime, or data loss without proper validation.

### 3. What problems happen without version control?

Code conflicts, lost work, no rollback capability, poor collaboration, and difficult debugging.

### 4. Why do enterprise systems require CI/CD?

To automate testing, improve reliability, accelerate releases, and reduce deployment errors.

### 5. Why should testing happen before deployment?

Testing identifies defects before users are affected, improving software quality.

### 6. Why do large teams need branches?

Branches allow developers to work independently and merge changes safely.

### 7. What is rollback and why is it important?

Rollback restores a previous stable version when a deployment fails, reducing downtime and business impact.

### 8. Why are deployment pipelines useful?

They automate builds, testing, validation, and deployments, ensuring consistent and reliable releases.

### 9. Why is DevOps important in modern software engineering?

DevOps improves collaboration, automation, software quality, and delivery speed.

### 10. Why is enterprise software development different from simple coding?

Enterprise development requires planning, collaboration, testing, deployment strategies, security, scalability, and long-term maintenance in addition to writing code.