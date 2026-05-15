Map .NET Concepts to the Agentforce 360 Platform
Learning Objectives
After completing this unit, you’ll be able to:

Understand which key features make up the Lightning Platform and the Apex programming language
Identify similarities and differences between .NET and the Lightning Platform
Use Developer Console to create your first Apex class
Use Anonymous Apex to invoke a method from an Apex class
Follow Along with Trail Together
Want to follow along with an expert as you work through this step? Take a look at this video, part of the Trail Together series.


Meet the Lightning Platform
Seriously, after you get to know more about the Lightning Platform, you’ll appreciate it as much as we do. In this module, we’ll look at how you can relate the .NET concepts that you’re already familiar with to the Lightning Platform.

Platform Basics
First, let’s briefly go over what exactly comprises the Lightning Platform. One of the things that separates the platform from other software-as-a-service (SaaS) offerings is that it relies on a metadata-driven architecture. Everything, including the code, configuration, and apps, is specified as metadata.

As .NET developers, you’re probably already familiar with the cloud applications that run on Microsoft Azure. Well, the Lightning Platform works differently. The Lightning Platform is tightly integrated with the database. You also get all sorts of things, like user interface, security, and reporting, built right in with the platform. This integration is what lets you build apps super fast.

But!—and here’s the part that might make you feel a little weird at first—you, as the developer, have to give up some control to get that developer productivity. On the Lightning Platform, you don’t have to worry about setting up nodes or management tasks. You don’t have to worry about upgrading, tuning, or scaling anything. To be honest, you probably won’t miss all that added complexity and responsibility, because instead you can just focus on quickly building great apps.

Now we just skimmed the surface in terms of what the platform offers. If you want to dive a little deeper into the architecture, check out the Platform Basics module.

Apex Basics
Because the Lightning Platform is so tightly integrated and relies on a metadata architecture, you can accomplish an awful lot using declarative development, or what is known as “point-and-click” or “no-code” app building. If you are new to the Lightning Platform, we strongly suggest you check out the article about point-and-click development listed in Resources.

As a .NET developer, we know you like to code, but what you must realize is that on the Lightning Platform, code is not always needed. But it’s important to understand when code is needed and when it isn’t. You can learn more about this distinction by browsing this article on when to click and when to write code.

But enough about all that. We know you want to learn how you can program on the platform, which is where Apex comes in.

What Is Similar?
The Apex programming language is similar to one you probably already know and love—C#. Apex is saved, compiled, and executed directly on the Lightning Platform. Like C#, it’s object oriented. In this section, we’ll go over this and what else makes it similar to .NET languages.

Object-oriented Design
We figure you already grasp the concept of object-oriented design, so we’re not going to waste your time describing cookie cutters. Just know that Apex supports many of the object-oriented principles that you’re probably used to, such as encapsulation, abstraction, inheritance, and even polymorphism. In fact, the Apex language includes many language constructs you’re already familiar with, including classes, interfaces, properties, and collections.

For example, here is what an Apex class named HelloWorld would look like.

public with sharing class HelloWorld { public void printMessage() { String msg = 'Hello World'; System.debug(msg); } }
Copy to Clipboard
public with sharing class HelloWorld {
    public void printMessage() {
        String msg = 'Hello World';
        System.debug(msg);
    }
}
This simple HelloWorld class includes one method named printMessage that is used to simply output the message “Hello World” to the system debug log. Of course, this example is pretty simple, but we wanted you to see how very similar Apex is to C#.

The basic syntax for defining classes is:

private | public | global [virtual | abstract][with sharing | without sharing | inherited sharing] class ClassName [implements InterfaceNameList] [extends ClassName] { // The body of the class }
Copy to Clipboard
private | public | global
[virtual | abstract][with sharing | without sharing | inherited sharing]
class ClassName [implements InterfaceNameList] [extends ClassName]
{
    // The body of the class
}
When you have time, check out Apex Developer Guide: Classes to learn more about how classes, objects, and interfaces work.

Data Types
Apex supports the kind of data types you would expect. There are primitive types, such as Integer, Double, Long, Date, Datetime, String, and Boolean. There is also an ID data type that is used for any valid 18-character Lightning Platform record identifier assigned by the system.

Value and reference types work the same, but in Apex, all variables are initialized to null by default. One thing to be aware of is that .NET strings are actually references even though they behave like value types, because they’re immutable. But in Apex, strings are always treated as a primitive value type.

Besides primitives, supported data types include sObjects, either as a generic sObject or a specific one, such as an Account or Contact. Remember, an sObject is just a Salesforce object. You can think of it as a table in a database. The sObject can be either a standard one that comes built in with Salesforce or a custom one that you define yourself.

Additionally, a data type can be a typed list of values, also known as an enum. But watch out, because these aren’t the same enums you’re used to working with in .NET. In Apex, you can use enums with numbers, but you can’t define what these number values are. Also, the ordinal assignment starts at zero. For example, if you had an enum like the following.

public enum myEnums { Enum1, Enum2, Enum3 }
Copy to Clipboard
public enum myEnums {
    Enum1,
    Enum2,
    Enum3
}
If you tried to access the ordinal value of the third enum, the value of the enumOrd variable would be 2.

Integer enumOrd = myEnums.Enum3.ordinal();
Copy to Clipboard
Integer enumOrd = myEnums.Enum3.ordinal();
Working with Collections
.NET supports a large collection library with numerous types and extension methods. And here’s some good news. Apex has only the following three collections. Talk about simple, right?

List
A list is an ordered collection of elements that works much the same as a traditional array. However, Apex does not support arrays as collections, just lists. You can, however, use what’s known as “array notation” to reference specific items in a list using square brackets, []Copy. For example, the following is one way to declare a variable as a list of strings:

List<String> myStrings = new List<String>();
Copy to Clipboard
List<String> myStrings =  new List<String>();
Alternatively, you can declare the myStrings list variable using square brackets, as in the following:

String[] myStrings = new List<String>();
Copy to Clipboard
String[] myStrings = new List<String>();
Another thing you can do is declare the list and initialize its values, all in one step, such as the following:

List<String> myStrings = new List<String> {'String1', 'String2', 'String3' };
Copy to Clipboard
List<String> myStrings =  new List<String> {'String1', 'String2', 'String3' };
You can also add values to the list after it has been created, such as this:

List<String> myStrings = new List<String>(); myStrings.add('String1'); myStrings.add('String2'); myStrings.add('String3');
Copy to Clipboard
List<String> myStrings = new List<String>();
myStrings.add('String1');
myStrings.add('String2');
myStrings.add('String3');
You’ll probably create a lot of list variables in your Apex development, because the output of every SOQL (Salesforce Object Query Language) query is a list. For example, you could create a list of Accounts using code such as the following:

List<Account> myAccounts = [SELECT Id, Name FROM Account];
Copy to Clipboard
List<Account> myAccounts = [SELECT Id, Name FROM Account];
Note that the list index always starts at zero. Accessing the name of the first account in the list would look like this:

String firstAccount = myAccounts.get(0).Name;
Copy to Clipboard
String firstAccount = myAccounts.get(0).Name;
Alternatively, the following will work in the same way:

String firstAccount = myAccounts[0].Name; // Uses Array Notation []
Copy to Clipboard
String firstAccount = myAccounts[0].Name;		// Uses Array Notation []
Let’s look at an example of this in a class.

public with sharing class ContactUtils { public static List<Contact> contactsByTitle(String title) { List<Contact> contacts = [SELECT Id, FirstName, LastName FROM Contact WHERE Title = :title]; return contacts; } }
Copy to Clipboard
public with sharing class ContactUtils {
    public static List<Contact> contactsByTitle(String title) {
        List<Contact> contacts = [SELECT Id, FirstName, LastName FROM Contact WHERE Title = :title];
        return contacts;
    }
}
Set
A set is an unordered collection of elements that does not contain duplicates. A set is commonly used to store ID values because the values are always unique. You could then use the set as part of a WHERE clause in a SOQL query. For example, here we’re creating a set that contains two unique IDs for Accounts. We then use the set in the SOQL query to return Accounts only for those IDs.

Set<ID> accountIds = new Set<ID> {'001d000000BOaHSAA1','001d000000BOaHTAA1'}; List<Account> accounts = [SELECT Name FROM Account WHERE Id IN :accountIds];
Copy to Clipboard
Set<ID> accountIds = new Set<ID> {'001d000000BOaHSAA1','001d000000BOaHTAA1'};
List<Account> accounts = [SELECT Name FROM Account WHERE Id IN :accountIds];
Map
A map is a collection of key-value pairs. Each key maps to a single value. A map is useful when you need to quickly find something by a key. The key values must be unique, so you could have a map that contained ID values for the key and then mapped to an sObject. For example, you could use the following code to declare a map variable named accountMap that contains all Accounts mapped to their IDs.

Map<Id, Account> accountMap = new Map<Id, Account> ([SELECT Id, Name FROM Account]);
Copy to Clipboard
Map<Id, Account> accountMap = new Map<Id, Account> ([SELECT Id, Name FROM Account]);
You could then access a specific Account record using the get method and code similar to the following.

Id accId = '001d000000BOaHSAA1'; Account acc = accountMap.get(accId);
Copy to Clipboard
Id accId = '001d000000BOaHSAA1';
Account acc = accountMap.get(accId);
Check out the official docs to learn more about the data types that Apex supports.

What Is Different?
Now that you know a little about how Apex is similar to .NET, let’s go over some differences. For starters, unlike C#, Apex is not case sensitive.

Apex and Database are Tightly Coupled
Apex code and the Lightning Platform database are tightly coupled to the point where they are sometimes indistinguishable. Each standard or custom object in the database has a "mystical" representation via an Apex class that provides all sorts of functionality to make interacting with the database a snap. The class and its underlying object are essentially a mirror image of one another that is constantly in sync. For instance, whenever you create a new field in an object, a class member is automatically surfaced to reference the values in the database. It's also impossible to add a reference in your Apex code to a field that doesn't exist; the compiler will return an error and simply not save your code. The platform works hard to ensure these dependencies and won't let the database schema and your code become out of sync. Therefore, if you attempt to delete a custom object or a field that is referenced by Apex code, the platform will raise an error and disallow the action.

Different Design Patterns
As a .NET developer, you are probably already familiar with design patterns. However, most of those patterns don’t work on the Lightning Platform. You learn more about this in the next units when we go over execution context and trigger design, but also consider checking out the links listed in Resources regarding Apex design patterns.

What’s important to understand is that if you try to apply the same design strategies that you use in .NET to the Lightning Platform, you’ll likely encounter problems when you go to test and deploy your solutions. We suggest taking some time to learn about which design patterns work best in the Lightning Platform world before you start cranking out the code.

Unit Tests Are Required
We know you’re used to writing unit tests for your .NET applications and probably understand the benefits to using them. What is different on the Lightning Platform is that you must have 75% test coverage to deploy your Apex code to a production org.

Not only does having unit tests promote the development of robust and error-free code, but they’re vital to the stability of the platform, because all tests are run before every major release. To learn more about unit testing, see An Introduction to Apex Code Test Methods.

No Solution, Project, or Config Files
The Lightning Platform has no such thing as a solution or project file. You can create an application, but it’s not the same as creating a .NET application or assembly.

An application on the Lightning Platform is just a loose collection of components, such as tabs, reports, dashboards, and pages. Several come built in with your Salesforce org, and in a few seconds, you can create your own by walking through a point-and-click wizard. You can even purchase apps created by third-parties on what is known as the AgentExchange.

All your code resides and executes in the cloud. There is also no such thing as a config file in the Lightning Platform world. Because the database is baked right in, you don’t need connection strings. And unlike ASP.NET MVC, you don’t need to configure routes. You can create custom settings in Salesforce, but these are added and managed declaratively.

A Much Smaller Class Library
The Apex class library is considerably smaller than the .NET Framework class library, so it’s easier and faster for you to come up to speed with Apex. But honestly, you might find it a bit frustrating when you try to look for comparative functionality that just doesn’t exist in Apex.

Keep in mind that the Lightning Platform is built with the idea of providing rapid application development. It’s also different from the .NET platform, so you might find yourself looking for functionality that you’re used to working with that simply doesn’t exist with the Lightning Platform. However, if you’re looking to build pixel-perfect, custom-coded applications, our Heroku Enterprise platform provides all the power and features you need.

Development Tools
More than likely you have already signed up for a free Developer Edition (DE) org. Perhaps you’ve also opened and used the online Developer Console application.

You can use Developer Console to edit and navigate source code, and it’s also helpful for debugging and troubleshooting. We’ll go over this more in a later unit, so stay tuned. If you’ve already gone through the first module about database basics, you know that you can also use Developer Console to execute SOQL and SOSL queries and view query plans. If you haven’t used Developer Console yet, don’t worry because we’ll be going through it shortly when we create an Apex class.

As a .NET developer, you're probably familiar with Visual Studio Code. You will be happy to learn that we have Salesforce Extensions for VS Code that allow you to do custom development on your local machine. The extension is closely tied to Salesforce DX, which provides a modern source-driven development experience. You can learn more about Salesforce DX from the Build Apps Together with Package Development trail.

And finally, we thought you would be interested to know about a powerful command-line interface to the Lightning Platform. If you’re one of those developers that just loves the command line, the Salesforce CLI is right up your alley.

To stay current with Salesforce’s evolution and built in support for DevOps, be sure to look into Code Builder, and DevOps Center.

Handling Security
The good news here is that in the Lightning Platform you don’t have to worry about authentication or storing passwords and database connection strings. Identity is handled by the platform. You can control access to data at many different levels, including object level, record level, and field level. Security is also handled declaratively. In many cases, security is defined and set up by a Salesforce administrator. As a developer, it’s important to be aware of how it works. Learn more by checking out the Data Security module.

What About Integration?
You can integrate with the platform in a number of ways, but you’ll probably use SOAP and REST the most. You can use them in either direction.

You can create and expose web services using the Apex programming language, as well as invoke external web services from Apex. You can also react to incoming email messages and have automated outbound messages sent when certain events occur.

If you really want to get your hands dirty, Salesforce offers both SOAP and REST APIs that provide direct access to the data in your org. Toolkits that wrap around the APIs are available, so you can use whatever language you prefer: .NET, Java, PHP, Objective C, Ruby, and JavaScript.

Numerous third-party integration applications are also available on the AgentExchange. Really, just about anything is possible. You can learn more about all the integration points by completing the Apex Integration Services module.

Ready to Get Hands-on with Apex?
Launch your Trailhead Playground now to follow along and try out the steps in this module. To open your Trailhead Playground, scroll down to the hands-on challenge and click Launch. You also use the playground when it's time to complete the hands-on challenges.

Create an Apex Class
Now that you know more about how the Lightning Platform relates to the .NET platform, let’s jump right in and create an Apex class using Developer Console. The class we’ll create includes the public method sendMail. It includes a private helper method called inspectResults for inspecting the results of the email send call.

From the Setup () menu in your Developer org, select Developer Console.
In the Developer Console, select File > New > Apex Class.
Enter EmailManagerCopy as the class name and click OK.
Delete the existing code, and insert the following snippet:

public with sharing class EmailManager { // Public method public static void sendMail(String address, String subject, String body) { // Create an email message object Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); String[] toAddresses = new String[] {address}; mail.setToAddresses(toAddresses); mail.setSubject(subject); mail.setPlainTextBody(body); // Pass this email message to the built-in sendEmail method // of the Messaging class Messaging.SendEmailResult[] results = Messaging.sendEmail( new Messaging.SingleEmailMessage[] { mail }); // Call a helper method to inspect the returned results. inspectResults(results); } // Helper method private static Boolean inspectResults(Messaging.SendEmailResult[] results) { Boolean sendResult = true; // sendEmail returns an array of result objects. // Iterate through the list to inspect results. // In this class, the methods send only one email, // so we should have only one result. for(Messaging.SendEmailResult res : results) { if(res.isSuccess()) { System.debug('Email sent successfully'); } else { sendResult = false; System.debug('The following errors occurred: ' + res.getErrors()); } } return sendResult; } }
Show More
Copy to Clipboard
public with sharing class EmailManager {
    // Public method
    public static void sendMail(String address, String subject, String body) {
        // Create an email message object
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddresses = new String[] {address};
        mail.setToAddresses(toAddresses);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        // Pass this email message to the built-in sendEmail method
        // of the Messaging class
        Messaging.SendEmailResult[] results = Messaging.sendEmail(
            new Messaging.SingleEmailMessage[] { mail });
        // Call a helper method to inspect the returned results.
        inspectResults(results);
    }
    // Helper method
    private static Boolean inspectResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;
        // sendEmail returns an array of result objects.
        // Iterate through the list to inspect results.
        // In this class, the methods send only one email,
        // so we should have only one result.
        for(Messaging.SendEmailResult res : results) {
            if(res.isSuccess()) {
                System.debug('Email sent successfully');
            } else {
                sendResult = false;
                System.debug('The following errors occurred: ' + res.getErrors());
            }
        }
        return sendResult;
    }
}
Press Ctrl + S to save your class.
Note
This simple example doesn’t implement the required object- or field-level security. See this snippet for a quickstart.

Invoke a Method
Because we declared the public sendMail method as static, we can access it without creating an instance of the class. We can do so easily by using Anonymous Apex in the Developer Console.

In the Developer Console, select Debug > Open Execute Anonymous Window.
Delete any existing code, and insert the following snippet, substituting your own email address for the first parameter:

EmailManager.sendMail('Your email address', 'Trailhead Tutorial', '123 body');Copy
Make sure that the Open Log option is selected, and click Execute.
A new tab shows you the execution log.
Select the Debug Only option so that you see only the debug statements displayed in the log. You should see a message telling you that the Email was sent successfully. You should also receive an email if you entered a valid email address.
Imagine if you had tried to accomplish that same task in .NET. Would it have been that easy to create a .NET application that sent emails? Come on, tell the truth.

Resources
Trailhead: Salesforce Platform Basics
Salesforce Developers Blog: Visual Development – When to Click Instead of Write Code
Apex Developer Guide: Introducing Apex
Salesforce Developers: Apex Developer Guide
Salesforce Developers: Integration Patterns Overview


Hands-on Challenge
+500 points
Get Ready
You’ll be completing this unit in your own hands-on org. Click Launch to get started, or click the name of your org to choose a different one.

Your Challenge
Create an Apex class that returns accounts
Create an Apex class that returns a List of Account objects for a user-specified state.
Create an Apex class that contains a static method:
Name: AccountUtils
Method name: accountsByState
The method must return the ID and name of all Account objects that match the BillingState for the state abbreviation passed to the method