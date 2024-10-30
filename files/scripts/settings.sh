#!/usr/bin/env bash
set -oue pipefail

# configure fail2ban
echo -e "[DEFAULT]\nignoreip = 127.0.0.1 ::1\nbantime = 3600\nfindtime = 600\nmaxretry = 5\n\n[sshd]\nenabled = true" > /etc/fail2ban/jail.local

# enable yubikey challange-response for sudo
# auth       required     pam_yubico.so mode=challenge-response >> /etc/pam.d/sudo
