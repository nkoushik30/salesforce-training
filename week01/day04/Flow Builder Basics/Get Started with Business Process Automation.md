Get Started with Business Process Automation
Learning Objectives
After completing this unit, you’ll be able to:

Explain the value of automation in Salesforce.
Describe the main ways to automate tasks in Salesforce.
Note
As of October 14, 2025, Data Cloud has been rebranded to Data 360. During this transition, you may see references to Data Cloud in our application and documentation. While the name is new, the functionality and content remains unchanged.

The Power of Automation
Every organization has business processes. After all, every organization has tasks that need to be done and requirements that need to be met. When an organization decides how best to meet those needs, they define a business process. 

These business processes are often unique to each organization, so it’s hard to find a solution that exactly meets your requirements. Maybe your salespeople should always create a work order after a deal closes. Maybe your call center agents have specific scripts to follow based on a customer’s account data. Or maybe you have a task that your users do over and over and over again. If you can trim a few minutes off that task, you can save hundreds of person-hours over the course of a year.

One tenet of good user experience is, “If the user can only do one thing, do it for them.” If your salespeople always create a work order after a deal closes, can you create it automatically? If your call agents always follow a set script when collecting customer information, does it make sense to display that script right in the user interface? If your users collect data that needs to go into three different records, can you save time by having them enter the data in one form and then automatically create the three records for them?

This is the power of automation. Save your users’ time and make sure required tasks are being done. Improve the quality of your data. Be the superhero that your organization deserves!

A superhero surrounded by a vignette of images, each with a Salesforce user hard at work.


![alt text](image-1.png)

As an admin, the use cases that you can automate generally fall into two categories: interactive experiences and behind-the-scenes automation. You choose how to automate based on the requirements of the business process.

Interactive Experiences
If your business process requires input from a user, you can use one of the following features.

Screen Flows: Use Flow Builder to create an interaction that presents info and asks your users questions.
Autolaunched Flows: Use Flow Builder to create automation that runs when a button is clicked. These can also be run by other automations.
Approval Processes: Build a series of steps with assigned approvers. Those steps can automate tasks such as locking and updating records. An approval process can run manually, when a button is clicked, or automatically, when it's launched by another automation.
Lightning Components: Use HTML and JavaScript code to build an interactive component that you can embed in a page or an app.
Visualforce Pages: Use HTML and Apex code to build an interactive page.
Behind-the-Scenes Automation
If your business process should start automatically and run behind the scenes, such as when a record changes, you have several solutions to choose from.

Record-Triggered Flows: Use Flow Builder to create automation that runs when a record is created, edited, or deleted.
Schedule-Triggered Flows: Use Flow Builder to create automation that runs at a time and frequency you specify.
Platform Event-Triggered Flows: Use Flow Builder to create automation that runs when a platform event message is received.
Data Cloud-Triggered Flow: Use Flow Builder to create automation that runs when a change is made to data in Data 360.
Apex: Use Apex code to write reusable blocks of automation. You can trigger this code in a variety of ways.
Did you notice a pattern there? We’ve got a lot of flow options in those lists. But what are flows exactly? You learn about that in the next unit.

Complete this activity to review the types of automation you can use in Salesforce.


![alt text](image.png)

Quiz
To complete this unit, you need to answer all the quiz questions correctly.
+100 Points

1
True or false: One benefit of automation is that it can improve data quality and consistency.

A
True

B
False

2
Which type of automation runs at a specific date and time?

A
Autolaunched flow

B
Screen flow

C
Record-triggered flow

D
Schedule-triggered flow


![alt text](image-20.png)