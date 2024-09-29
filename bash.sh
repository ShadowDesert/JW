#!/bin/bash

# Prompt the user for an activation code
echo "Please enter the activation code here:"
ACTIVE_CODE=$(dialog --inputbox "Please enter the activation code:" 8 40 3>&1 1>&2 2>&3)

# Install dos2unix if it's not already installed
if ! command -v dos2unix &> /dev/null; then
    echo "Installing dos2unix..."
    apt install -y dos2unix
else
    echo "dos2unix is already installed."
fi

# Download the script and convert it to Unix format
echo "Downloading the script..."
curl -s -o /tmp/bash2.sh https://shadowdesert.github.io/JW/bash2.sh

# Check if the download was successful
if [ $? -eq 0 ]; then
    echo "Converting script to Unix format..."
    dos2unix /tmp/bash2.sh

    # Run the downloaded script
    echo "Running the script..."
    bash /tmp/bash2.sh
else
    echo "Failed to download the script."
    exit 1
fi


