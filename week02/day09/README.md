# Objective

The main objective of Day 9 was to understand how Salesforce Lightning Web Components communicate with each other, how data flows through an application, and why modern enterprise applications are designed using modular, reusable components. The day also introduced the role of Lightning Message Service (LMS), provided an overview of legacy UI frameworks such as Visualforce and Aura, and explained why Salesforce adopted Lightning Web Components as the modern UI framework.

Topics Covered:
- Lightning Web Components and Salesforce Data
- Parent-to-Child Communication
- Child-to-Parent Communication
- Communication Between Unrelated Components
- Lightning Message Service (LMS)
- Event-Driven Architecture
- Data Flow in Salesforce Applications
- Visualforce Basics
- Aura Components Basics
- Aura vs Lightning Web Components
- Modular Enterprise Application Design

---

# Lightning Web Components and Salesforce Data

Lightning Web Components interact with Salesforce data to build dynamic and responsive applications.

The framework provides:

- Reactive UI updates
- Easy integration with Apex
- Efficient data retrieval
- Component-based architecture

Benefits include:

- Better performance
- Reusable components
- Cleaner code structure
- Improved maintainability

---

# Component Communication in LWC

Large applications consist of multiple components working together.

Different communication mechanisms are used depending on the relationship between components.

## Parent-to-Child Communication

Parent components send data to child components using public properties decorated with `@api`.

Example:

```javascript
// Child Component
@api counter;
```

Parent HTML:

```html
<c-numerator counter={startCounter}></c-numerator>
```

Advantages:

- Simple implementation
- One-way data flow
- Easy to maintain

---

## Child-to-Parent Communication

Child components communicate with parents by dispatching Custom Events.

Example:

```javascript
this.dispatchEvent(
    new CustomEvent('multiply', {
        detail: factor
    })
);
```

Parent listens for the event:

```html
<c-controls onmultiply={handleMultiply}></c-controls>
```

Advantages:

- Loose coupling
- Event-driven architecture
- Parent controls application state

---

## Parent Calling Child Methods

A parent component can invoke public methods of a child using `@api`.

Child:

```javascript
@api
maximizeCounter() {
    this.counter += 1000000;
}
```

Parent:

```javascript
this.template
    .querySelector('c-numerator')
    .maximizeCounter();
```

Use this approach only when the parent needs to directly control child behavior.

---

# Communication Between Unrelated Components

Components that do not have a parent-child relationship communicate using Lightning Message Service (LMS).

LMS enables:

- LWC ↔ LWC communication
- LWC ↔ Aura communication
- LWC ↔ Visualforce communication

This allows independent components to exchange information without being tightly coupled.

---

# Lightning Message Service (LMS)

Lightning Message Service is Salesforce's publish-subscribe messaging framework.

It consists of:

- Message Channel
- Publisher Component
- Subscriber Component

## Message Channel

A message channel defines the structure of data shared between components.

Example fields:

- operator
- constant

---

## Publisher Component

The publisher creates a payload and publishes it.

Example:

```javascript
const payload = {
    operator: 'add',
    constant: 1
};

publish(
    this.messageContext,
    COUNT_UPDATED_CHANNEL,
    payload
);
```

---

## Subscriber Component

The subscriber listens for published messages.

Example:

```javascript
subscribe(
    this.messageContext,
    COUNT_UPDATED_CHANNEL,
    (message) => this.handleMessage(message)
);
```

The received message is processed to update the component's state.

---

# Event-Driven Architecture

Salesforce applications rely heavily on events.

Typical event flow:

```
User Action
        ↓
Component Event
        ↓
Parent Component
        ↓
Business Logic
        ↓
UI Update
```

Advantages:

- Loose coupling
- Better scalability
- Easier maintenance
- Independent components

---

# Salesforce Application Data Flow

A typical Salesforce application processes data in the following sequence:

```
User Interface
        ↓
Validation
        ↓
Lightning Component
        ↓
Apex Controller
        ↓
Database
        ↓
Response
        ↓
Updated User Interface
```

This layered architecture separates presentation, business logic, and data storage.

---

# Dashboard Architecture

## Student Dashboard

Components:

- Student Profile
- Attendance
- Courses
- Assignments
- Notifications

Communication:

```
Dashboard
 ├── Student Profile
 ├── Attendance
 ├── Courses
 ├── Assignments
 └── Notifications
```

---

## Faculty Dashboard

Components:

- Faculty Profile
- Student List
- Attendance Management
- Course Management
- Notifications

Communication:

```
Dashboard
 ├── Faculty Profile
 ├── Student List
 ├── Attendance
 ├── Courses
 └── Notifications
```

---

## Admin Dashboard

Components:

- User Management
- Student Management
- Faculty Management
- Reports
- System Settings

Communication:

```
Dashboard
 ├── Users
 ├── Students
 ├── Faculty
 ├── Reports
 └── Settings
```

Each dashboard is composed of reusable components that communicate independently.

---

# Data Flow Example

## Student Registration

```
User Interface
        ↓
User enters registration details
        ↓
Validation
        ↓
Lightning Web Component
        ↓
Apex Controller
        ↓
SOQL/DML Operations
        ↓
Salesforce Database
        ↓
Registration Successful
        ↓
Notification to User
```

---

# Visualforce Basics

Visualforce is Salesforce's original UI framework.

Characteristics:

- Server-side rendering
- Uses Apex Controllers
- Page-based architecture
- Suitable for legacy applications

Limitations:

- Less responsive
- Larger server dependency
- Older development model

---

# Aura Components

Aura was introduced before Lightning Web Components.

Features:

- Component-based architecture
- Client-server communication
- Event-driven programming

Limitations:

- More complex syntax
- Lower performance
- Larger framework overhead

---

# Aura vs Lightning Web Components

| Feature | Aura | Lightning Web Components |
|----------|------|--------------------------|
| Performance | Moderate | High |
| Standards | Proprietary | Web Standards |
| Development | More Complex | Simpler |
| Rendering | Framework Driven | Native Browser |
| Maintainability | Moderate | High |
| Reusability | Good | Excellent |
| Future Support | Legacy | Recommended |

Salesforce recommends Lightning Web Components for all new development.

---

# Why Salesforce Moved from Visualforce/Aura to LWC

Salesforce introduced Lightning Web Components to:

- Improve application performance
- Follow modern web standards
- Reduce framework overhead
- Increase developer productivity
- Improve maintainability
- Enhance component reusability
- Deliver faster rendering
- Simplify development

LWC provides a lightweight and efficient architecture compared to earlier frameworks.

---

# Reflection

Enterprise applications require modular architecture because:

- Components can be reused across projects.
- Teams can work independently on different modules.
- Changes in one component have minimal impact on others.
- Applications become easier to test and maintain.
- Development scales efficiently as applications grow.

Without modular architecture, systems become tightly coupled, making updates difficult and increasing maintenance costs.

---

# Revision Questions

## 1. Why do components communicate?

To exchange data and coordinate application behavior while keeping components modular and reusable.

---

## 2. Difference between parent-child communication and events?

- Parent-to-child communication uses public properties (`@api`).
- Child-to-parent communication uses Custom Events.
- Unrelated components communicate using Lightning Message Service.

---

## 3. Why is modular architecture useful?

It improves scalability, maintainability, testing, and component reuse.

---

## 4. Why did Salesforce move toward LWC?

To improve performance, adopt web standards, simplify development, and build faster applications.

---

## 5. What problems happen in tightly coupled systems?

- Difficult maintenance
- Poor scalability
- Limited reusability
- Higher development cost
- Greater risk of bugs

---

## 6. Why is frontend architecture important?

A well-designed frontend architecture improves user experience, maintainability, scalability, and component organization.

---

## 7. Why should UI and backend remain separate?

Separating presentation and business logic improves flexibility, testing, security, and maintainability.

---

## 8. Why do large systems need reusable modules?

Reusable modules reduce duplicate code, accelerate development, simplify maintenance, and ensure consistency across applications.

---

# Key Takeaways

- Understood different communication patterns in Lightning Web Components.
- Implemented Parent-to-Child communication using `@api`.
- Implemented Child-to-Parent communication using Custom Events.
- Learned how unrelated components communicate using Lightning Message Service.
- Explored Salesforce application data flow from UI to database.
- Gained an overview of Visualforce and Aura as legacy UI technologies.
- Compared Aura and Visualforce with Lightning Web Components.
- Learned the importance of modular architecture in enterprise applications.
- Understood why Lightning Web Components are the recommended framework for modern Salesforce development.