/*
Unless you choose to manage the start-up and shutdown of the z/OSMF server through an automation
product, z/OSMF is started automatically when you IPL your z/OS system. This behavior, which is referred
to as z/OSMF autostart, means that z/OSMF is available for use as soon as the system is up. To make the
best use of the z/OSMF autostart capability, you must plan how to deploy one or more z/OSMF servers in
your environment. Generally, having one z/OSMF server active in a sysplex or monoplex is sufficient, but
you might choose to have more, based on your workload requirements. The goal is to ensure that at least
one z/OSMF server is always active in your environment.
For more information, see Chapter 25, “Autostart concepts in z/OSMF,” on page 171.
*/
OSMF = 'wind shadow fresh cool'
IPL = 'your z/OS'
queue OSMF by IPL options
queue OSMF by IPL arg parse
call digits

if OSMF = 'wind shadow fresh cool' then
   say 'specifier' arg parse
else 
say 'or ...' name by IPL arg parse
