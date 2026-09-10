i have remote access to a server whitout active power management and when i want to shut down the server someone needs to push a button to shut it down completely... i keep shutting it down whitout realizing this.
this is my solution; a bash script asks me if i really want to shut the server down and reminds me that i need to let someone know to push the power button.

+-----------------------------------------------------------------------+
| file: /usr/local/bin/shutdownconfirm.sh - with permissions 744        |
| set the following aliases:                                            |
| alias sudo="sudo "                                                    |
| alias shutdown="/usr/local/bin/shutdownconfirm.sh /usr/sbin/shutdown" |
+-----------------------------------------------------------------------+

it is a really good idea to use something like this on your hypervisor.. dont ask how i got to this conclusion.

tested on debian 12 and ubuntu 24.04.4
