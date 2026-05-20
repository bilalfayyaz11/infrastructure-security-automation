#!/bin/bash
set -e

echo "===== SSH HARDENING ====="
sudo grep -E "^(PermitRootLogin|PasswordAuthentication)" /etc/ssh/sshd_config

echo
echo "===== IPV6 STATUS ====="
sysctl net.ipv6.conf.all.disable_ipv6

echo
echo "===== FIREWALL STATUS ====="
sudo ufw status verbose

echo
echo "===== AUDITD STATUS ====="
systemctl is-enabled auditd
systemctl is-active auditd

echo
echo "===== OPENSCAP REPORTS ====="
ls -lh ~/ansible-cis-hardening/reports/
