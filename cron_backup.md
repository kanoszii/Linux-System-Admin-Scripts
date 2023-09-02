# Automated Backup Script

This is a simple bash script for automated backups of the `/etc/` directory. The script uses `rsync` to create backups and is intended to be run as a cron job.

## Prerequisites

- You should have `rsync` installed on your system.

## Usage

1. Clone this repository or copy the script (`backup.sh`) to your system.
2. Modify the script variables to specify your backup source and destination directories.
3. Make the script executable  

## Note

- This script is designed to work with a companion script named (`cron_backup_cleaner.sh`) available in this repository. Make sure to set up the cleaning script as well for managing your backups.
- Configure the script to run periodically using cron. You can add an entry in your crontab to run the script at your desired schedule.  

  Feel free to use and modify this script to suit your needs for managing users and groups on a Linux system.
