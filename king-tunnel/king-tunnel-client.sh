#!/bin/bash
# King Tunnel - Client Side (Outside Iran)
# Replace 'IP Iran' with the IP of the Iranian server

set -e

TUN_DEV="wtun0"
TUN_IP="10.10.0.2"
PEER_IP="10.10.0.1"
PROTO_NUM=18

# Create TUN interface
ip tuntap add dev $TUN_DEV mode tun
ip addr add $TUN_IP/24 dev $TUN_DEV
ip link set dev $TUN_DEV up

# Send data over raw socket to IP Iran with protocol number 18
echo "Starting raw sender to IP Iran (protocol $PROTO_NUM)..."
while true; do
  sudo timeout 1 cat /dev/net/tun > /dev/null
done
