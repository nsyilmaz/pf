#!/bin/sh

# Enable IP Forward
sysctl -w net.inet.ip.forwarding=1

# Load Rules
pfctl -ef /etc/pf.conf

# Show Rules
pfctl -s all

# Flush Rules
pfctl -F all

# Show NAT Rules
pfctl -s nat  
