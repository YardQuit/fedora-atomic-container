# make mount point
mkdir -p /mnt/{sshfsmnt_,localmnt_}{1..5} && sudo chmod 777 /mnt/{sshfsmnt_,localmnt_}{1..5} && touch /mnt/{sshfsmnt_,localmnt_}{1..5}/no_mount
mkdir -p /mnt/bitlockr_{1..2} && sudo chmod 777 /mnt/bitlockr_{1..2} && touch /mnt/bitlockr_{1..2}/no_mount
