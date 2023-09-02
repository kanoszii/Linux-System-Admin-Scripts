# Account Creator Script

This is a Bash script that helps automate the process of adding new users and groups to a Linux system using a text file as input. It is designed to make user and group management more efficient and user-friendly.

## Usage

1. Ensure you have a text file (`file.txt`) with the usernames and group names in the following format: `username:groupname`, one entry per line.

2. Update the `new_users` variable in the script with the path to your `file.txt`.

3. Run the script using the following command:

   ```bash
   ./account_creator.sh  
   
The script will read the file.txt, create groups if they don't exist, add users to the specified groups, and provide feedback on the operations performed.
Script Explanation
The script performs the following steps:

## Description  

Reads the file.txt containing username-groupname pairs, one per line.
Checks if each group specified in the file already exists; if not, it creates the group.
Checks if each user specified in the file already exists; if not, it adds the user to the specified group.
Provides status messages indicating whether groups and users were added or if they already existed.

## Note  
- Feel free to use and modify this script to suit your needs for managing users and groups on a Linux system.
