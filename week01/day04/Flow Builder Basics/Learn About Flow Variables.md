Learn About Flow Variables
Learning Objectives
After completing this unit, you’ll be able to:

Understand how variables work.
Create many different types of variables.
List the different types of resources and how they’re used.
What Is a Variable?
We know the word variable can cause some anxiety. 

“It’s a code thing, right? But I don’t know any code!”
“Aren’t variables from algebra? I haven’t done math like that in a long time.”
“I don’t know what a variable is. This is too complicated.”
We hear you, and we’re here to help you understand variables.

In a flow, a variable is a container that holds a piece of information. Check out this video to learn what variables are and how they work.


Flow stores values in variables, but those values can be changed by the flow. That’s why it’s called a variable; it’s able to be varied!

Why Do I Need Variables?
For most flow use cases, you need at least one variable. Variables store a lot of the information used by a flow, so without them, flows can’t work their powerful magic. Here are some common use cases that need variables.

In a screen flow, store the ID of the record that the flow is displayed on, so you can tell the flow which record to update at the end of the flow.
Store a number value that can be higher or lower depending on user choices.
Store the result of joining two text strings together.
Retrieve record values to use in calculations, copy to another record, or display to a user.
Assemble a collection of values that you can use to create a record.
Make changes to every record that meets certain criteria.
Delete every record that meets certain criteria.
Keep a running tally of how many times a loop has run.
Those are just a few of the possibilities, but none of them would be possible without variables. Flows might look like they’re made up of elements and connectors, but variables are the gravy on your meat and flowtatoes!

A plate of food, with the meat labeled “ELEMENTS”, the potatoes labeled “CONNECTORS”, and the gravy marked “VARIABLES”.

![alt text](image-19.png)

Thankfully, you don’t have to create all these variables! Many flow elements output their own variables, and it’s often best to use those variables.

What Can I Store in a Variable?
When you create a variable, you tell the flow what type of data it can store, just like when you create a custom field. Let’s take a look at some of the different kinds of variables. 

Flo Smith surrounded by lots of thoughts bubbles, each one containing a different value, including a date/time, a name, a phone number, a currency value, a Salesforce ID, a checked box, and some text values.

![alt text](image-18.png)


Text: A string of letters, numbers, and characters. If you just need to store a Salesforce ID, and not a whole record, use a text variable. Examples: 

yes
Eight
01ZEE0000004GxOIAU
I don’t know
Number, Currency: A numerical value. Don’t include any currency symbols, such as $ or €. Examples: 

42
246.01
Boolean: A true or false value. These variables can only contain the True, False, or Empty String global constants. Examples: 

{!GlobalConstant.True}
{!GlobalConstant.False}
Note
Make sure to use the True and False global constants. Otherwise, Flow Builder interprets "true" and "false" as text, not a positive or negative value.

Date, Date/Time: A specially formatted value that indicates a specific date, or a specific time on a specific date. See Valid Date and DateTime Formats for info on how to format date and date/time data. Examples: 

2063-04-05
1955-11-12T22:04:00Z
Record: All of the values in a Salesforce record, stored together in a single variable. Each value maintains its own data type, just like in a Salesforce record. The flow can retrieve or update each value individually.

There are a few other variable types, but we don’t cover them in this module.

Why does the variable’s data type matter? Why not just store everything as text? Just like Salesforce object fields, variables need the right data type to interact with other things. For example, suppose you have a specific date in a text variable. You can read that text and display it. However, if you want a flow to adjust that date (adding a year, perhaps) then the variable must have the Date or Date/Time data type.

Note
Some variables can store multiple values, but that’s only needed when you’re passing the values into something that’s expecting more than one value. Don’t worry about reducing the number of variables by “stacking” values into a single variable. Having some extra variables doesn’t impact performance or cause any problems.

One last important thing about storing values in variables. Every time a flow runs, all its variables start out containing their default value. If the default value is blank, that means the variable starts as blank. Variable values are never carried from user to user, or from one instance of a flow to another.

Create a Variable
You can create a variable where you need to use it or in the Toolbox. In this unit, we use the Toolbox, but you can use whichever method you prefer.

Let’s take a look at how to create a simple text variable.

Click the App Launcher (App Launcher).
In the Search apps and items box, enter autoCopy and then select Automation.
In the Flows panel, click New.
Under Frequently Used, select Screen Flow.
Click Toggle Toolbox to display the Toolbox.
Click New Resource. You can click Toggle Toolbox at any time to hide the Toolbox.
The New Resource button, under Toolbox, in Flow Builder.

![alt text](image-17.png)
For Resource Type, select Variable.
Enter an API name and description for your variable.
For Data Type, select Text.
The New Resource window, with options to set the Resource Type, API Name, Description, and Data Type.

![alt text](image-16.png)

Click Done.
That’s all there is to it! Now you have a container to store data. You can find it in the Toolbox.


![alt text](image-15.png)

The created contactID variable, found under the Toolbox, in Flow Builder.

While you were creating the variable, you probably noticed other settings there. Don’t worry, we cover those in other Flow badges. As a general rule, you shouldn’t enable any of these settings unless you know you need them. For now, be proud that you made your first variable!

Things Similar to Variables
Variables are a type of flow resource, but there are other flow resources that you can use. Here’s a brief summary.

Constants
A constant is like a variable, except that its value can’t change. That’s why it’s called a constant! When you create a constant, you set its value and the flow can’t change it.

The New Resource window corresponding to the description that follows

![alt text](image-14.png)


In this example, the resource API name is pi, its resource type is Constant, the Data Type is Number, and the Value is 3.14159.

Formulas
Flow formulas are very similar to custom formula fields; the structure, format, and the way they use data is nearly identical. You can use most of the formula functions that you use in formula fields, and you can use variables and screen components as merge fields. The formatting for merge fields is different, however, so use the resource picker to make sure they’re added correctly. Check out Creating Flow Formulas with Flow Formula Builder for more details.

The New Resource window, showing the creation of a formula.

Note
Just like formula fields, formula resources are recalculated every time they’re accessed. If you have a formula that’s used twice in a single flow and it contains variables that change, it might calculate differently the second time!

![alt text](image-13.png)

Text Templates
The New Resource window, showing the creation of a text template.


![alt text](image-12.png)

Sometimes you need to store a larger block of text, or maybe you need that text to be formatted in a specific way. Text Templates are basically constants that can store a large amount of rich text (text that has fonts, sizes, colors, lists, or other special formatting). Use a text template to store the body of an email or a chunk of formatted text to reuse on multiple screens. Like formulas, text templates can also use variables and screen components as merge fields.

After you complete the Hands-On Challenge, continue your Flow Builder learning journey on the Build Flows with Flow Builder trail. From start to finish, this trail guides you through learning all about Flow Builder. Follow this recommended sequence of badges to build strong process automation skills and become a Flow Builder expert.

Resources
Flow Video Resource: Flow Variables
Trailhead: Use Formula Fields

Hands-on Challenge
+500 points
Get Ready
You’ll be completing this unit in your own hands-on org. Click Launch to get started, or click the name of your org to choose a different one.

Your Challenge
Create Flow Resources
Create variables and a formula in a flow.
Create a screen flow
Create a boolean variable:
API Name: booleanCopy
Data Type: Boolean
Default Value: False
Create a number variable:
API Name: numberCopy
Data Type: Number
Decimal Places: 0Copy
Create a formula:
API Name: numberFormulaCopy
Data Type: Number
Decimal Places: 0Copy
Formula: Subtract 100 from the number variable
Save your flow:
Label: VariablesCopy
API Name: VariablesCopy