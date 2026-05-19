## Objective

The main objective of Day 6 was to understand how Salesforce stores and retrieves data, how enterprise systems react automatically to events, and how automation is implemented using SOQL and Apex Triggers.

Topics Covered:
- SOQL Basics
- SOSL Basics
- DML Operations
- Apex Triggers
- Event-Driven Systems
- Flow vs Trigger
- Before vs After Trigger Logic

---

# What is SOQL?

SOQL stands for Salesforce Object Query Language.

It is used to retrieve data from Salesforce objects. SOQL is similar to SQL but is specially designed for Salesforce data structures.

SOQL helps developers:
- Fetch records
- Filter data
- Access related records
- Build automation logic
- Generate reports

## Example

```sql
SELECT Name FROM Student__c
```

This query retrieves all student names from the Student object.

---

# What is an Apex Trigger?

An Apex Trigger is a piece of Apex code that automatically executes when specific database events occur in Salesforce.

Triggers help automate business operations whenever records are inserted, updated, deleted, or restored.

Triggers support:
- Before Insert
- After Insert
- Before Update
- After Update
- Before Delete
- After Delete

## Example

When a student registers for a course:
- Send a welcome email
- Notify faculty
- Update total registration count

All these actions can happen automatically using Apex Triggers.

---

# Difference Between Flow and Trigger

| Flow | Apex Trigger |
|---|---|
| Declarative automation | Programmatic automation |
| Built using UI | Written using Apex code |
| Easy to maintain | More flexible |
| Best for simple logic | Best for complex business logic |
| Faster development | Better for advanced processing |
| Limited customization | Full coding control |

---

# Difference Between Before Trigger and After Trigger

| Before Trigger | After Trigger |
|---|---|
| Runs before saving data | Runs after saving data |
| Used for validation | Used for post-processing |
| Can modify field values | Used for notifications |
| Faster for updates | Works on committed records |

## Example

### Before Trigger
Validate student age before record insertion.

### After Trigger
Send confirmation email after registration is completed.

---

# Trigger Thinking – Automatic Actions After Data Changes

## 1. Student Registration Completed

### Event
After a new student record is inserted.

### Automatic Action
- Send welcome email
- Generate student ID
- Assign orientation schedule

---

## 2. Course Capacity Reached

### Event
After course enrollment count becomes full.

### Automatic Action
- Notify faculty
- Block further registrations
- Update course availability status

---

## 3. Attendance Below 75%

### Event
After attendance percentage gets updated.

### Automatic Action
- Send warning notification
- Alert parents
- Inform faculty advisor

---

## 4. Fee Payment Completed

### Event
After fee status changes to Paid.

### Automatic Action
- Generate payment receipt
- Update finance records
- Send payment confirmation email

---

## 5. Faculty Assigned to Course

### Event
After faculty-course mapping record is updated.

### Automatic Action
- Share timetable automatically
- Send course allocation details
- Update faculty dashboard

---

# Flow vs Trigger Thinking

| Scenario | Best Choice | Reason |
|---|---|---|
| Simple email notification | Flow | Easy to configure without coding |
| Complex fee eligibility validation | Apex Trigger | Requires advanced business logic |
| Updating multiple related records | Apex Trigger | Better handling of bulk operations |
| External API integration | Apex Trigger | Supports custom integration logic |
| Approval notifications | Flow | Declarative automation is sufficient |
| Attendance alerts | Flow | Simple automation process |

---

# Query Thinking

## Student Queries

- Find all students enrolled in Course A
- Find students with attendance below 75%
- Find students who have unpaid fees
- Find students registered this semester
- Find students assigned to Faculty X

---

## Course Queries

- Find all available courses
- Find courses handled by Faculty X
- Find courses with maximum enrollments
- Find courses starting next month
- Find courses with no registered students

---

## Faculty Queries

- Find all faculty in Computer Science department
- Find faculty handling more than 3 subjects
- Find faculty assigned to final year students
- Find faculty with pending course approvals

---

# Reflection

Enterprise systems require event-driven behavior because businesses cannot manually monitor every operation continuously.

Automation helps systems:
- React instantly to changes
- Reduce manual effort
- Improve efficiency
- Increase accuracy
- Handle large-scale operations
- Maintain consistency

## Real-World Examples

### Banking Systems
Automatically detect suspicious transactions.

### E-Commerce Platforms
Automatically update inventory after orders.

### Hospital Management Systems
Notify doctors immediately during emergencies.

### College Management Systems
Send attendance alerts automatically.

Without automation, enterprise systems become:
- Slow
- Error-prone
- Difficult to manage
- Less scalable

---

# Reflective Questions

## 1. Why do systems need triggers?

Triggers allow systems to respond automatically to important business events without requiring manual intervention.

They improve:
- Speed
- Accuracy
- Automation
- Efficiency

---

## 2. Difference Between Polling and Event-Driven Systems

| Polling | Event-Driven |
|---|---|
| Continuously checks for updates | Responds only when events occur |
| Consumes more resources | Resource efficient |
| Slower response | Faster reactions |
| Inefficient for large systems | Better scalability |

---

## 3. Why are database queries important?

Database queries help retrieve useful information quickly from large datasets.

Queries are important for:
- Reports
- Dashboards
- Analytics
- Business decisions
- Automation logic

---

## 4. When should Flows be preferred over Triggers?

Flows should be preferred when:
- Automation is simple
- No complex coding is required
- Business users need easy maintenance
- Notifications and approvals are involved

---

## 5. What problems happen if automation logic becomes too complex?

Complex automation can lead to:
- Performance issues
- Debugging difficulties
- System failures
- Conflicting automations
- Maintenance challenges

---

## 6. Why should developers think carefully before automating actions?

Poor automation design can:
- Create unnecessary processing
- Cause incorrect updates
- Reduce performance
- Affect scalability

Developers must ensure automation is:
- Efficient
- Reliable
- Scalable
- Business-friendly

---

# End of Day Learning Outcome

By completing Day 6, I understood:
- How Salesforce retrieves data using SOQL
- How event-driven systems work
- What Apex Triggers are
- Difference between Flow and Trigger
- Difference between Before and After Triggers
- How enterprise systems react automatically to data changes
- Difference between declarative and programmatic automation

---

# Conclusion

Day 6 provided a strong understanding of how enterprise systems automate processes using Salesforce technologies like SOQL and Apex Triggers.

The session helped build knowledge about:
- Data querying
- Event-driven architecture
- Automation strategies
- Business process handling
- Real-world enterprise system behavior

This knowledge is important for building scalable and intelligent Salesforce applications.
