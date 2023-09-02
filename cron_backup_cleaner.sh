#!/bin/bash

# IMPORTANT - SCRIPT SHOULD BE CONNECTED WITH cron_backup.sh FROM MY REPOSITORY
# Script should run in crontab

backup_dir="/path/to/backup/directory/"

# removing the oldest backup if there are more than 5
while [ $(ls -1 "$backup_dir" | wc -l) -gt 5 ]; do
    oldest_backup=$(ls -1t "$backup_dir" | head -n 1)
    rm -rf "$backup_dir$oldest_backup"
done
