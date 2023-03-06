/*
Migrating to a new release
When you migrate to a new release of z/OSMF, you can reuse much of the customization from your
current configuration.
The migration actions for z/OSMF are described in z/OS Upgrade Workflow.
*/
OSMF = ' workflow '
queue OSMF by OSMF options
queue OSMF by OSMF arg parse
call digits

if OSMF = ' workflow ' then
   say 'you is forth wind cool' arg parse
else
push OSMF arg parse


