/*
Chapter 2. Selecting which z/OSMF services to add
To enable z/OSMF for useful work, you must add function to the z/OSMF nucleus through the addition of
core (recommended) services and optional (suggested) services. Which services you add depends on your
goals. To help you decide, this topic provides a functional overview of each service. After you choose the
services you require, you then configure those services.
The z/OSMF nucleus includes only the following functions, which are enabled when the z/OSMF server is
started.
• WebSphere Liberty profile runtime
• z/OSMF desktop user interface (UI)
• z/OSMF online help system.
After creating the nucleus, most installations will choose to configure additional, core services, which
include the Workflows task, and a number of REST API interfaces. These services are described in Part 3,
“z/OSMF core services,” on page 47.
Beyond the core services, you can further extend the functions of z/OSMF by adding optional services,
which include a number of z/OS system management tasks, such as Network Configuration Assistant,
ISPF, and Workload Management. These services are described in Part 4, “z/OSMF optional services,” on
page 67.
Your decision of which services to configure will depend in part on your installation's readiness to perform
the various z/OS system customizations associated with each service. When planning for the services,
review the dependencies and system setup requirements for each service, as described in this book. You
might find it easier to start with services that require little or no system customization, such as
Configuration Assistant or ISPF, and then progress to plug-ins with more extensive requirements, such as
Incident Log.
In general, enabling a service involves the following activities:
• Configuring any prerequisite services that might be required by the service.
• Creating security profiles for the z/OSMF tasks and REST services that are associated with the service.
IBM provides a set of IZUnnSEC jobs in SYS1.SAMPLIB with RACF commands to help with performing
these changes. Each IZUnnSEC job is associated with a service, as described in “Security concepts in z/
OSMF” on page 5.
• Performing the various z/OS system customization updates, if any, that are associated with each service.
Table 2 on page 11 shows the z/OSMF services that are available in the current release of z/OS. The
table provides a brief description of each task; indicates whether the service includes programming
interfaces (REST APIs); and indicates the relative complexity of configuring the service (Low, Medium, or
High). Notice that some services are footnoted; in earlier releases of z/OSMF, these services were enabled
by default. Therefore, these services might be enabled already if you are upgrading from an earlier release
of z/OSMF.
Table 2. z/OSMF core services and optional services in z/OS V2R4
Service NameDescription
z/OSMF Administration
tasks1Allows the user to perform administrative
work on behalf of z/OSMF users.
© Copyright IBM Corp. 2009, 2021
REST
Core or
APIs
Optional (Y/N)Complexity
of Set Up:
Low,
Medium, or
High
CoreLow
Y
11Table 2. z/OSMF core services and optional services in z/OS V2R4 (continued)
REST
Core or
APIs
Optional (Y/N)Complexity
of Set Up:
Low,
Medium, or
High
z/OSMF Workflows (including Simplifies tasks through guided step-
the Workflow Editor)1
based workflows, and provides
administrative functions for assigning
workflow responsibilities and following
progress.CoreYLow
Notifications 1Allows you to view and work with the
notifications that are assigned to you.CoreYLow
z/OSMF Settings1Define global settings for z/OSMF, such as Core
FTP servers for use by other z/OSMF
services, Notification Settings.YLow
Swagger (API Discovery) 1You can use the Swagger interface to
display information about REST APIs.CoreNLow
z/OS jobs REST services1A set of REST services for working with
batch jobs on a z/OS systemCoreYLow
z/OS data set and file REST
services1A set of REST services for working with
data sets and UNIX files on a z/OS
system.CoreYLow
TSO/E address space
services 1A set of REST services for working with
TSO/E address spaces on a z/OS system.CoreYLow
z/OSMF Security
Configuration AssistantProvides a visual framework for
examining the different elements of z/
OSMF security.OptionalNLow
Network Configuration
AssistantConfigure TCP/IP policy-based
networking functions.OptionalNLow
Software ManagementManage your z/OS software inventory,
Optional
deploy SMP/E packaged and installed
software, and generate reports about your
software.YLow
ISPFAccess traditional ISPF applications
through a web browser UI.OptionalNLow
Resource Monitoring• Monitor the performance of the z/OS,
AIX®, Linux, and Windows systems in
your enterprise.OptionalNMedium
OptionalYMedium
Service Name
Description
• Quickly assess the workload
performance on the systems in your
enterprise, and define the systems to be
monitored.
Console services 1
Provides functions for working with z/OS
consoles, such as viewing system
messages and entering system
commands.
12 z/OS: IBM z/OSMF Configuration GuideTable 2. z/OSMF core services and optional services in z/OS V2R4 (continued)
REST
Core or
APIs
Optional (Y/N)Complexity
of Set Up:
Low,
Medium, or
High
Service NameDescriptionWorkload ManagementAdminister and operate WLM, and
manage WLM service definitions and
policies.OptionalNMedium
Sysplex ManagementManage the sysplex resources in your
enterprise.OptionalNMedium
Capacity ProvisioningMonitor your systems for capacity
bottlenecks, and manage the physical
capacity of your servers and the defined
capacity and group capacity limits in use.OptionalNMedium
IBM zERT Network AnalyzerAnalyze SMF records to identify the
Optional
cryptographic protection attributes of TCP
and Enterprise Extender (EE) traffic in
your enterprise.NMedium
Cloud Provisioning servicesPerform software provisioning, such as
creating instances of CICS®, IBM Db2,
IMS, IBM MQ, and IBM WebSphere
Application Server, and creating
middleware resources, such as IBM MQ
queues, CICS regions, and Db2
databases.OptionalYHigh
Incident LogDiagnose system problems, and send
diagnostic data to IBM or other vendors
for further diagnostics.OptionalNHigh
Table note: 1 Was enabled by default in previous releases of z/OSMF. This service might be already
enabled on your system if you are upgrading from an earlier release of z/OSMF.
*/
IBM = 'Build test...'
queue IBM by IBM options
queue IBM by IBM arg parse
call digits

say IBM arg parse
push IBM ...

