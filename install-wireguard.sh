#!/bin/bash

# go to home first
cd ~

# install wireguard
sudo add-apt-repository -y ppa:wireguard/wireguard
sudo apt-get update
sudo apt-get install -y wireguard

# generate keys
umask 077  # This makes sure credentials don't leak in a race condition.
wg genkey | tee privatekey | wg pubkey > publickey

