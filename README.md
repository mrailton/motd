# MOTD

Custom MOTD scripts based off of PlexMOTD. This is running on Ubuntu, and the scripts are split into manageable chunks.

## Installation
1. Run `curl -L https://raw.githubusercontent.com/mrailton/motd/main/install.sh | sudo sh`.
2. Change `/etc/update-motd.d/colors.txt` to your liking.
3. Optionally change `PrintLastLog` to `no` in `/etc/ssh/sshd_config`.
