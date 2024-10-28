#!/usr/bin/env bash
set -oue pipefail

echo -e "[DEFAULT]\nignoreip = 127.0.0.1 ::1\nbantime = 3600\nfindtime = 600\nmaxretry = 5\n\n[sshd]\nenabled = true" > /etc/fail2ban/jail.local
