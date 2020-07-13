#!/bin/bash

# go to home first
cd ~

# install wireguard
sudo add-apt-repository -y ppa:wireguard/wireguard
sudo apt-get update
sudo apt-get install -y wireguard

# new directory for files
mkdir wire && cd wire

# generate keys
umask 077  # This makes sure credentials don't leak in a race condition.
# generate for server
wg genkey | tee server.key | wg pubkey > server.pub.key
# generate for client
wg genkey | tee client.key | wg pubkey > client.pub.key
