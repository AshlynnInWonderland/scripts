#!/bin/bash
# Script for skype to be used for notifications from it
# To be used by going into Skype > Options > Notifications, then clicking "Advanced" and setting it* for the "Chat Message Received" event
# I'd also recommend turning off "Display pop-up notification", and "Display system pop-up notification" doesn't have a title field for me so this works better.
# The exact command used is:
# <path to script> "%sname" "%smessage"

# if there's no message, exit (skype sends %smessage as blank when skype is focused and you receive a chat message)
if [[ -z $2 ]]
then
  exit
fi

# removes the name from %smessage
output=${2/$1\:\ /}
notify-send "Skype - $1" "$output" -i skype
