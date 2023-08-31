#!/bin/bash

#The script monitors disk space, and if it exceeds the threshold of 90%, it sends an email.
#The script is scheduled to run in cron all time.

user_path="/home/username" #change username
used_space=$(df -h "$user_path" | awk 'NR==2 {print $5}' | sed 's/%//') #$(...) - executes a command in a subshell

if [ "$used_space" -ge 90 ]; then
    echo "Disc space on "$user_path" over 90%" | sudo ssmtp example@domain.com
fi
