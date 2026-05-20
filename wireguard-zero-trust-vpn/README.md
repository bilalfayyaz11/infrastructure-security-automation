# WireGuard Zero Trust VPN Architecture

## Objectives

This project implements a Zero Trust VPN architecture using WireGuard on Linux. It demonstrates encrypted peer-to-peer tunneling, key-based access control, firewall-based restriction, and VPN traffic monitoring.

## Tools Used

- WireGuard
- wg / wg-quick
- Linux
- iptables
- tcpdump
- iproute2
- Bash

## Key Skills Demonstrated

- VPN server configuration
- WireGuard key pair generation
- Secure client peer configuration
- Zero Trust access enforcement
- Firewall-based network restriction
- VPN traffic monitoring
- Linux network troubleshooting

## Architecture

- Server interface: wg0
- Server VPN IP: 10.0.0.1
- Client interface: wg1
- Client VPN IP: 10.0.0.2
- VPN port: UDP 51820
- Access policy: only authorized peer 10.0.0.2 is allowed

## Troubleshooting Log

### Single-Machine Lab Constraint

The original lab assumes separate server and client machines. This environment provides only one temporary Ubuntu VM.

Fix:
Implemented a local WireGuard simulation using two interfaces: wg0 as server and wg1 as client.

### Permission Issue with wg show

Problem:
Running wg show without sudo returned permission denied.

Fix:
Used sudo wg show to inspect WireGuard interface status.

### Zero Trust Enforcement

Implemented iptables rules to allow only traffic from the authorized VPN client IP and drop other traffic entering through wg0.

## Validation Evidence

- Successful WireGuard handshake
- Active transfer counters
- Successful ping between 10.0.0.1 and 10.0.0.2
- Firewall restriction using iptables
- VPN traffic monitoring using tcpdump
