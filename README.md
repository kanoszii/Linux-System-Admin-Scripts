# Linux System Automation and Administration

In this repository, you will find various scripts related to automation and administration of Linux systems. My aim is to simplify system management and everyday tasks related to maintaining and configuring Linux-based servers, services, and other aspects of Linux systems.

## Introduction

Each script is thoroughly documented and can be customized to fit your specific needs and environment. Be sure to review the documentation for each script to understand their functionality and how to configure them.

## Script Overview

1. **Automated Backup Script (`backup.sh`):** This script automates the backup of specified directories using the `rsync` tool. It can be scheduled as a `cron` job for regular backups.

2. **Automated Backup Cleanup Script (`cron_backup_cleaner.sh`):** This script is responsible for automatically removing the oldest backup files from a specified directory. It helps maintain cleanliness in the backup directory and prevents excessive disk usage.

3. **Disc Space Monitoring Script (`disc_space_raport.sh`):**  This script monitors disk space usage in a specified user's home directory. If the disk space usage exceeds the threshold of 90%, the script sends an email notification. The script is designed to be run through cron for continuous monitoring.

4. **Account Creator Script (`account_creator.sh`):**  This script helps automate the process of adding new users and groups to a Linux system using a text file as input. It is designed to make user and group management more efficient and user-friendly.

## Support and Contributions

If you have questions, feedback, or need assistance related to any of these scripts, please feel free to leave comments in the relevant sections of the repository..

Thank you for using my automation tools, and I wish you effective Linux system administration!
