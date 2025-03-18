#!/bin/bash

# Install packages
apt update
apt install update-notifier -y

# Download the archive
curl -L https://github.com/mrailton/motd/archive/main.tar.gz | tar -zxv

# Move old motd files to directory
mkdir -p /etc/update-motd.d/old-motd
mv /etc/update-motd.d/* /etc/update-motd.d/old-motd/
mv /etc/motd /etc/update-motd.d/old-motd

# Move unzipped motd files to /etc
mv motd-main/motd/* /etc/update-motd.d

# Clean up downloaded files
rm -rf motd-main
