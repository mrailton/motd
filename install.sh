#!/bin/bash

# Install packages
apt update
apt install update-notifier -y

# Remove motd files
if [ -e /etc/update-motd.d]; then
    rm -rf /etc/update-motd.d
fi

# Create dir
mkdir /etc/update-motd.d

# Download the archive
curl -L https://github.com/mrailton/motd/archive/main.tar.gz | tar -zxv

# Move unzipped motd files
mv motd-main/motd/* /etc/update-motd.d

# Clean up downloaded files
rm -rf motd-main
