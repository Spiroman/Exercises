# Running a task with Gradle.

Follow this guide to run a basic Gradle script that prompts you for your name and greets you afterwise.

---
### Prerequisites
Make sure you have Gradle installed on your machine like so:
> gradle -v

If Gradle is installed you should see something among the lines of: 

> Gradle x.x.x  
Build time:   2066-10-29 55:55:55 UTC  
Revision:       bd168bbf5d152c479186a897f2cea494b7875d13  
Kotlin:       1.3.41  
Groovy:       2.5.4  
Ant:          Apache Ant(TM) version 1.9.14   compiled on March 12 2019
JVM:          1.8.0_171 (Oracle Corporation   25.171-b11)  
OS:           Windows 7 6.1 amd64

If you don't see that message follow the installation guide for Gradle [here](https://gradle.org/install/#helpful-information)

---
### Running the script
* Create a folder to which you will download the `gradle.build` file.

* Navigate to said folder with your terminal, command prompt, etc.

* Type `gradle -q hello` and you're all set!