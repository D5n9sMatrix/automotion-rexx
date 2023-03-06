/*
Faster set-up with a z/OSMF Lite configuration
For a quick start with z/OSMF, you can set up z/OSMF in a z/OSMF Lite configuration. This approach
requires only a minimal amount of z/OS customization, but provides the key z/OSMF functions that are
required by many z/OS installations.
In short, z/OSMF Lite means configuring the z/OSMF nucleus on your system and then adding only the
core services that you require. By following the steps in Part 2, “The z/OSMF nucleus,” on page 21 and
Part 3, “z/OSMF core services,” on page 47, you can quickly enable z/OSMF on your z/OS system. Later,
you can easily expand z/OSMF Lite into a full function z/OSMF configuration by adding optional services.
It takes approximately 2 - 3 hours to set up a z/OSMF Lite configuration. This work requires certain z/OS
resources to be set up, commands to be run, and security setup to be performed. Some steps might
require the assistance of your security administrator. IBM provides a program, IZUNUSEC, to help the
security administrator set up basic security for a z/OSMF Lite configuration.
A z/OSMF Lite configuration is applicable to any future expansions you make to z/OSMF, such as adding
the optional services.
Assumptions
A z/OSMF Lite configuration is intended for a first-time z/OSMF setup. If z/OSMF is already configured on
your system, you do not need to create a z/OSMF Lite configuration.
System defaults are used for the z/OSMF environmental settings. Wherever possible, it is recommended
that you use the default values. However, if necessary, you can override the defaults by supplying an
IZUPRMxx parmlib member, as described in “IZUPRMxx reference information” on page 35.
It is recommended that you use the following procedures, which are provided by IBM:
• Started procedures IZUSVR1 and IZUANG1
• Logon procedure IZUFPROC.
Information about installing these procedures is provided in “Step 3: Copy the z/OSMF procedures into
JES PROCLIB” on page 27.
*/
IZUSVR1 = 'one ...'
IZUANG1 = 'one ...'
IZUFPROC = 'running exec'
JES = 'wind fresh cool'
PROCLIB = 'IBM'
queue IZUSVR1 by IZUANG1 options IZUFPROC
queue IZUSVR1 by IZUANG1 arg parse
call digits

if JES = 'wind fresh cool' then
   say 'watermelon' arg parse
else
push PROCLIB

