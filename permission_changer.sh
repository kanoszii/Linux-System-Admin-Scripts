#!/bin/bash

read -p "Provide path to change permissions: " dir

if [ ! -d "$dir" ]; then
    echo "Provided directory does not exist"
else
    read -p "Provide the group name to change their permissions: " group
    if [[ -z "$(grep -w "$group" /etc/group)" ]]; then
        echo "Group does not exist"
    else
        read -p "Provide permissions in numeric format: " permissions
            chmod "$permissions" "$dir" && chgrp "$group" "$dir"
            echo "Permissions for "$group" to "$dir" changed successfully"
    fi
fi