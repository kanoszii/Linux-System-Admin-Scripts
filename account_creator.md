# User and Group Management Script

This is a Bash script that helps automate the process of adding new users and groups to a Linux system using a text file as input. It is designed to make user and group management more efficient and user-friendly.

## Usage

1. Ensure you have a text file (`file.txt`) with the usernames and group names in the following format: `username:groupname`, one entry per line.

2. Update the `new_users` variable in the script with the path to your `file.txt`.

3. Run the script using the following command:

   ```bash
   ./user_group_management.sh
