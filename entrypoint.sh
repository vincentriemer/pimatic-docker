#!/usr/bin/env bash

# start homebridge services
/etc/init.d/dbus start
/etc/init.d/avahi-daemon start

# link persistent config.json file
rm /home/pimatic-app/config.json
ln -s /home/pimatic-app/configMount/config-json-pimatic.json /home/pimatic-app/config.json

# start pimatic service
service pimatic start && bash