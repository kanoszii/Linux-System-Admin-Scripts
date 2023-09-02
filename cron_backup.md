# Automated Backup Script

This is a simple bash script for automated backups of the `/etc/` directory. The script uses `rsync` to create backups and is intended to be run as a cron job.

## Prerequisites

- You should have `rsync` installed on your system.

## Usage

1. Clone this repository or copy the script (`backup.sh`) to your system.
2. Modify the script variables to specify your backup source and destination directories.
3. Make the script executable:

   ```bash
   chmod +x backup.sh
   
Configure the script to run periodically using cron. You can add an entry in your crontab to run the script at your desired schedule. For example, to run the script every day at 2 AM:  
   ```bash
   0 2 * * * /path/to/backup.sh  
Make sure to replace /path/to/backup.sh with the actual path to your script.



