# Disk Space Monitoring Script

This script monitors disk space usage in a specified user's home directory. If the disk space usage exceeds the threshold of 90%, the script sends an email notification. The script is designed to be run through cron for continuous monitoring.

# Setting Up SMTP for Sending Emails via Gmail

To ensure the proper functioning of the SMTP service for sending emails through Gmail, follow these steps:

1. Access the Gmail account panel that you intend to use.
2. Navigate to the Security tab.
3. Enable two-step verification for added security.
4. After enabling, refresh the page and scroll down.
5. Create an application password specifically for this purpose.
6. Save the generated application password securely.
7. When sending emails from your Gmail account, provide both the email address and the application password you generated.

## Usage

1. Clone or download this repository to your system.
2. Make sure you have `ssmtp` installed and configured for sending emails.
3. Open the script `disk_space_monitor.sh` in a text editor.
4. Modify the `user_path` variable to specify the user's home directory you want to monitor.
5. Save the changes and close the text editor.

## Configuration

- `user_path`: Replace `username` with the actual username whose disk space you want to monitor.

## Running the Script

1. Open your terminal.
2. Navigate to the directory where the script is located.
3. Run the script using the command: `./disk_space_monitor.sh`

## Scheduling with Cron

To schedule this script to run periodically using cron:

1. Open your terminal.
2. Run `crontab -e` to edit the cron jobs.
3. Add the following line to run the script all time, for example:  
'* * * * *' /path/to/disk_space_monitor.sh  
Replace `/path/to` with the actual path to the directory containing the script.
4. Save and exit the editor.  

## Note

- Make sure you have the necessary permissions to run the script and access the user's home directory.
- Adjust the threshold (currently set to 90%) to your preferred value.

For any issues or suggestions, please feel free to create an issue on this repository.
