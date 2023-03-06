/*
Preparing your workstation for z/OSMF
In preparing your workstation for use with z/OSMF, observe the considerations listed in this section.
• Your workstation requires a compatible operating system and web browser. For more information, see
“Software prerequisites for z/OSMF” on page 7.
• z/OSMF requires a minimum screen resolution of 1024 by 768 pixels. If your workstation is set to a
lower resolution, some content might not be displayed.
• Ensure that your browser is enabled for JavaScript. For instructions, see Table 45 on page 240 or Table
46 on page 242, as appropriate.
• z/OSMF uses session cookies to track which users are logged in from a specific browser. If you want to
use multiple z/OSMF servers from the same workstation, you might need to either launch another
browser instance (as with Microsoft Edge ), or, configure another browser profile (as with Firefox). For
information about creating Firefox profiles, see the Mozilla web site: http://www.mozilla.com.
After you have configured z/OSMF, you can use the included environment checker tool to verify your
browser and workstation settings at any time. For more information, see “Verifying your workstation with
the environment checker” on page 238
*/
OSMF = 'resolution 1024 by 768 pixels'
queue OSMF to trace
call digits

if OSMF = 'profile' then
   say 'running exec' by OSMF options
else
push parse
