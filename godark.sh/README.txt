as im building my data center at home with one old thinkpad after the other the illuminated room by thin displays quickly loses its coolness and gets more and more annoying while i fumble towards the fridge in the middle of the night half a sleep in search of a glass of cold water.
some systemd shenanigans is in order to reclaim the dark veil of the night by turning those displays off in an automatic manner.
full disclosure i have no idea how this systemd stuff works. played with After= and WantedBy= parameters until it worked and made sense for me.

+-----------------------------------------------------------------+
| file: /usr/local/bin/godark.sh - with permissions 744           |
| file: /etc/systemd/system/godark.service - with permissions 644 |
| systemctl enable godark.service                                 |
+-----------------------------------------------------------------+

for extra style points you can close the lid and stow your thinkpad army under your bed.
+-------------------------------------+
| edit file: /etc/systemd/logind.conf |
| HandleLidSwitch=ignore              |
| HandleLidSwitchExternalPower=ignore |
+-------------------------------------+

tested on ubuntu server 24.04.4
