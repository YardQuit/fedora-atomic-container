# make mount point
mkdir -p /var/mnt/{sshfsmnt_,localmnt_}{1..5} && sudo chmod 777 /var/mnt/{sshfsmnt_,localmnt_}{1..5} && touch /var/mnt/{sshfsmnt_,localmnt_}{1..5}/no_mount
mkdir -p /var/mnt/bitlockr_{1..2} && sudo chmod 777 /var/mnt/bitlockr_{1..2} && touch /var/mnt/bitlockr_{1..2}/no_mount
