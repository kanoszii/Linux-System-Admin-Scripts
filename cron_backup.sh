#!/bin/bash

# IMPORTANT - SCRIPT SHOULD BE CONNECTED WITH cron_backup_cleaner.sh FROM MY REPOSITORY
# Script should run in crontab

to_backup="/etc/"
backup_dir="/home/kanoszii/Desktop/backup_advanced/"
log_path="/home/kanoszii/Desktop/backup.log"

# if the backup directory does not exist script creates it
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
fi

# backup procedure
backup_file="$(date +%F-%H-%M)_backup"
rsync -azv "$to_backup" "$backup_dir$backup_file"



