#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

# make mount points
mkdir -p /var/mnt/{sshfsmnt_,localmnt_,bitlockr_}{1..5} 
chmod 777 /var/mnt/{sshfsmnt_,localmnt_,bitlockr_}{1..5} 
touch /var/mnt/{sshfsmnt_,localmnt_,bitlockr_}{1..5}/no_mount

echo -e "[DEFAULT]\nignoreip = 127.0.0.1 ::1\nbantime = 3600\nfindtime = 600\nmaxretry = 5\n\n[sshd]\nenabled = true" > /etc/fail2ban/jail.local
