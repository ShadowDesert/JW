#!/bin/bash

echo "Please enter the activation code here"
read ACTIVE_CODE

# Update package list
apt update

# Install dos2unix
apt install -y dos2unix

# Download the script and convert it to Unix format
curl -s https://shadowdesert.github.io/JW/bash2.sh -o /tmp/bash2.sh
dos2unix /tmp/bash2.sh

# Run the script
bash /tmp/bash2.sh

