#!/bin/bash

# Path to the file with new users to add, for example, username:groupname
new_users="/path/to/file.txt"

# Adding data from the new_users file to the accounts array
readarray accounts< <(cat "$new_users")

for acc in "${accounts[@]}"                       # Iterating through the accounts array
do
    user=$(echo $acc | cut -d: -f1)             # -d: splits the content using : as a separator
    group=$(echo $acc | cut -d: -f2)            # -f1 selects the first field, e.g., jarek:admin => f1 = jarek

    if [[ -z "$(grep -w $group /etc/group)" ]]  # Checking if the group doesn't exist, grep -w - checks if the word exists somewhere
    then                                        # -z creates the group if the word doesn't exist
        groupadd $group                         # Adding a group for users
        echo "Group $group added successfully"
    else
        echo "Group $group already exists"
    fi

    if [[ -z "$(grep -w $user /etc/passwd)" ]]
    then
        useradd -G $group $user                 # Adding users and assigning them to the group
        echo "User $user added successfully"
    else
        echo "User $user already exists"
    fi
    echo "---------------------------------"
    sleep 3
done