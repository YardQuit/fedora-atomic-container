#!/usr/bin/env bash
set -oue pipefail

# configure fail2ban
echo -e "[DEFAULT]\nignoreip = 127.0.0.1 ::1\nbantime = 3600\nfindtime = 600\nmaxretry = 5\n\n[sshd]\nenabled = true" > /etc/fail2ban/jail.local

# install blue-build (bluebuild) command
cargo install --locked blue-build
bluebuild completions bash | tee /usr/share/bash-completion/completions/bluebuild
