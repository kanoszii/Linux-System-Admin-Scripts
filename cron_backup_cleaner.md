# Automated Backup Cleanup Script

This is a Bash script designed to automatically remove the oldest backup files from a specified directory. The script should be used in conjunction with the `cron_backup.sh` script available in the same repository. It's intended to be scheduled as a cron job for regular backup cleanup.

## Usage

Follow these steps to utilize the script:

1. Clone this repository or copy the script (`cron_backup_cleaner.sh`) to your system.

2. Modify the script variables to specify your backup source and destination directories.

3. Make the script executable  

## Note

- This script is designed to work with a companion script named (`cron_backup.sh`) available in this repository. Make sure to set up the cleaning script as well for managing your backups.
- Configure the script to run periodically using cron. You can add an entry in your crontab to run the script at your desired schedule.  
 
Feel free to use and modify this script to suit your needs for managing users and groups on a Linux system.
  

