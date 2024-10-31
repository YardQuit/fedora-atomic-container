#!/usr/bin/env bash
set -oue pipefail

# crypttab
sudo cp /etc/crypttab /etc/crypttab.bak
sudo tee -a /etc/crypttab <<EOF
# manually added
luks-bccaf371-16c7-45fd-9b1a-1dc540d37218 UUID=bccaf371-16c7-45fd-9b1a-1dc540d37218 none discard
luks-4d1fa180-514b-4b2f-b028-4fbd80714ba0 UUID=4d1fa180-514b-4b2f-b028-4fbd80714ba0 none discard
luks-f4ba7b65-7a97-4661-9d37-333d0fc12582 UUID=f4ba7b65-7a97-4661-9d37-333d0fc12582 none discard
EOF

# fstab
sudo cp /etc/fstab /etc/fstab.bak
sudo tee -a /etc/fstab <<EOF
UUID=a1f3db46-7cbc-4fe7-8940-da1238319914 /home                   btrfs   subvol=home,compress=zstd:1,x-systemd.device-timeout=0 0 0
UUID=2a8f21d0-de05-48dc-bf5b-6487504c4c07 /mnt/localmnt_1         ext4    defaults,x-systemd.device-timeout=0 1 2
UUID=f6a0a9aa-3868-44fc-b759-1edb8577cdfc /var/lib/libvirt        btrfs   subvol=var_lib_libvirt,compress=zstd:1,x-systemd.device-timeout=0 0 0
EOF

