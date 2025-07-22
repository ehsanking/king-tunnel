#!/bin/bash
# King Tunnel - Server Side (Iran)
# Replace 'IP Kharej' with the external IP of the foreign server

set -e

TUN_DEV="wtun0"
TUN_IP="10.10.0.1"
PEER_IP="10.10.0.2"
PROTO_NUM=18

# Create TUN interface
ip tuntap add dev $TUN_DEV mode tun
ip addr add $TUN_IP/24 dev $TUN_DEV
ip link set dev $TUN_DEV up

# Start listener for raw IP packets with custom protocol
echo "Starting raw listener on IP Kharej (protocol $PROTO_NUM)..."
while true; do
  sudo timeout 1 cat /dev/net/tun > /dev/null
done
