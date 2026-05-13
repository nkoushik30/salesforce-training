Go with the Flow
Learning Objectives
After completing this unit, you’ll be able to:

Explain how Salesforce Flow, Flow Builder, and flows relate to one another.
Identify opportunities to improve business processes with automation.
Some Important Flowcabulary
You may have heard several terms referring to flows, sometimes used interchangeably. Let’s clear up what each term means.

Salesforce Flow


The blanket term for everything in Salesforce that allows you to create, manage, and run automation with clicks not code. It also includes separate products like Flow Orchestration and Flow Integration powered by MuleSoft.

Flow


An automation configuration saved in Salesforce with the structure of a flowchart. The flow automates a business process by collecting data and using that data to make things happen. It can affect things in your Salesforce org and in an external system.

Flow Builder


The primary tool for creating flows. You learn more about this tool in the next unit.

Flownatic


Someone who enjoys creating flows. Yes, there’s a whole community of people who really do love flows!

In short, Salesforce Flow includes multiple tools. One of them, Flow Builder, helps you create flows, and Flownatics love creating flows.

Flows Are Friends
To learn what flows are, let’s start with this short video. It’s a high-level overview of what flows can do and what they’re made of.


Flows look like flowcharts: They’re made up of boxes and connecting arrows that show the ordered details of a business process. There’s one big difference, however. While flowcharts show a process, flows can actually do the steps in the process. That’s a whole new level of power!

A sample flow in Flow Builder.


![alt text](image-4.png)

Flows are so powerful, in fact, that you can think of them like visual coding. They’re created with clicks, not code, but you do need to understand some programming concepts and logic. 

Don’t worry, you won’t actually have to learn any code. But by learning a few development concepts, you can use flows to do a lot of the same automation as code. It doesn’t even have to be very complex; a lot of simple use cases can be solved with flows by using just a few elements.

Of course, flows aren’t the only automation tool you have at your disposal. There are also formulas, validation rules, quick actions, Apex, and a few tools for very specific situations, such as escalation and auto-response rules. Flows, however, can automate an incredibly broad range of processes in Salesforce. Here are a few examples.

Guide a site member through requesting a new credit card with a step-by-step walkthrough.
When a support tech clicks an Escalate button on a case, reassign the case to a higher level tech.
When an account is updated, update all of the contacts related to that account.
When an opportunity stage is updated, send a custom message to an external system.
When a platform event occurs, create a task.
When an opportunity closes, create a renewal opportunity.
Display all possible discounts on every open opportunity, and allow salespeople to select and apply a discount with a single click.
Update a lead record in Salesforce after a certain amount of time passes, or when a specified time is reached.
Automating processes with custom code often requires the skills of an Apex developer. It’s complicated and expensive to build and maintain. Fortunately, there are many things you can do without code, using Flow Builder.

Note
If you hang around Salesforce long enough, you’ll hear someone say something about declarative tools. Not to worry. Declarative just means that it doesn’t require software programming skills. Flow Builder is a declarative tool.

Know When to Flow ’Em
You create flows using clicks, not code in a declarative tool. As an admin, you already use declarative tools all the time. You use a declarative tool when you create custom fields and another declarative tool when you design Lightning pages. So if you understand how Salesforce objects and fields work and interact with each other, you’re already halfway down the path to understanding flows.

In general, it’s best to consider declarative tool options before exploring custom code options. Automation created with declarative tools is usually easier to create and to support. From a people perspective, learning code takes more time and can often be more difficult, making people who code harder to find. Code-based projects are generally more expensive to build and maintain.

We’re not saying you should avoid code. Some use cases can be solved with flows, but due to requirements and limitations, would be better solved with code. And there will always be things code can do that flows can’t do. Ultimately, most common automation scenarios can be built in flows just fine. Deciding whether to build a flow depends on the requirements of your business process.

For example, if your business process requires a user to generate a PDF file, which flows can’t do naturally, you probably need someone to code a solution. However, if PDF generation needs to be kicked off from multiple user-facing forms, the best approach might be to have a developer create a PDF-generating Apex plugin that users can run from the flows that you build.

Note
Honestly, sometimes the decision between flows and code comes down to trial-and-error: Try experimenting in a flow first, and shift to code if it doesn’t work out. Let’s be very clear here: This is perfectly fine! It’s a normal part of learning automation. Even within Salesforce, developers dedicate time to research and experimentation before they start working on a new feature. This ensures they’ve determined the best approach before committing to a certain path.

There’s no simple, definitive way to decide whether a use case or solution should be built in flows or code. (If there were, we’d share it here.) Experiment, and don’t be afraid to get it wrong the first, second, or even third time.

Let’s Look at an Example
To give you an idea of how you can use flows in your organization, review this example scenario.

![alt text](image-3.png)

Business Requirements


A headshot of Flo Smith.

Flo Smith is a business analyst and Salesforce admin at Pyroclastic, Inc. For months, she’s been asking her stakeholders to invest in automating more of their business processes. She’s eager to take advantage of the efficiency improvements that Salesforce automation tools offer. So she’s thrilled when Pyroclastic’s head of sales asks her to help the sales teams work more efficiently.

Flo Smith talking with Pyroclastic’s head of sales in an office

![alt text](image-2.png)

When Pyroclastic’s sales reps log contacts in Salesforce, they often ignore many of the fields, which results in rogue, accountless contacts. To make matters worse, the sales reps frequently create duplicate contacts. They could avoid duplication by searching Salesforce before they create the contact, but they don’t. It would be better to automate this process. This is a great chance for Flo to showcase how Salesforce can make the organization more efficient.

The Use Case


Let’s break it down.

Capture values for only the required fields (First Name and Last Name) and the associated account.
If there’s a matching contact, update it. If there’s no matching contact, create one.
To round out this business process, Flo wants to provide confirmation that the business process is complete. If we note what the flow did in Chatter, more users can access that information than if we communicated through a closed channel, such as email. Let’s add two more requirements.

Confirm what happened by posting on Chatter.
Confirm to the user that the business process is complete.
The Solution


Because the purpose of automation is for the system to do things automatically, Flo needs a solution that can make logical decisions and take action based on defined conditions. This particular business process requires information from the user, so Flo also needs a form that captures that information. Let’s take a look at three ways she can address this use case in Salesforce.

Solution

Form

Conditional logic and actions

Requires Code

Quick action

Yes

No

No

Flow

Yes

Yes

No

Lightning component

Yes

Yes

Yes

Because the use case requires conditional logic and actions, Quick Actions won’t work. That leaves Flow and Lightning Components. However, Lightning Components can only be written with code.

Flo doesn’t have a lot of coding experience, and she wants a solution that she can support in the future without needing to call for coding help. Remember, it’s generally best to consider declarative tool options before exploring custom code options, so she starts by exploring the simplest solution that fits her requirements: a flow.

Next, you enter the Land of Flow: Flow Builder.

Resources
Flow Video Resource: Flow Builder

Quiz
To complete this unit, you need to answer all the quiz questions correctly.
+100 Points

1
How does Flow Builder relate to Salesforce Flow?

A
Flow Builder is a part of Salesforce Flow.

B
Salesforce Flow is a part of Flow Builder.

C
Salesforce Flow is the fastest version of Flow Builder.

D
Flow Builder is an alternative to Salesforce Flow.

2
When should you build a flow?

A
Every time you need to automate something

B
When you want to automate without writing code

C
When you need to replace an assignment rule

D
When you want to code