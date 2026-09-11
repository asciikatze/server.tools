## godark.sh

as im building my data center at home with one old thinkpad after the other the illuminated room by thin displays quickly loses its coolness and gets more and more annoying while i fumble towards the fridge in the middle of the night half a sleep in search of a glass of cold water.\
some systemd shenanigans is in order to reclaim the dark veil of the night by turning those displays off in an automatic manner.\
full disclosure i have no idea how this systemd stuff works.\
played with After= and WantedBy= parameters until it worked and made sense for me.
```instructions
file: /usr/local/bin/godark.sh - with permissions 744
file: /etc/systemd/system/godark.service - with permissions 644
systemctl enable godark.service
```
for extra style points you can close the lid and stow your thinkpad army under your bed.
```instructions
edit file: /etc/systemd/logind.conf
HandleLidSwitch=ignore
HandleLidSwitchExternalPower=ignore
```
tested on ubuntu server 24.04.4

## shutdownconfirm.sh

i have remote access to a server whitout active power management and when i want to shut down the server someone needs to push a button to shut it down completely... i keep shutting it down whitout realizing this.\
this is my solution; a bash script asks me if i really want to shut the server down and reminds me that i need to let someone know to push the power button.
```instructions
file: /usr/local/bin/shutdownconfirm.sh - with permissions 744
set the following aliases:
alias sudo="sudo "
alias shutdown="/usr/local/bin/shutdownconfirm.sh /usr/sbin/shutdown"
```
it is a really good idea to use something like this on your hypervisor.. dont ask how i got to this conclusion.

tested on debian 12 and ubuntu 24.04.4

## whatswrong.sh

if something feels off these are the things I look at first.\
for temperatures and fan speeds needs the `lm-sensors` package to be installed!

tested on ubuntu 22.04.4 and 25.10
