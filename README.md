# Wireguard Installation

The WireGuard Installation script for Ubuntu 18.04 TLS

## How to install

Assume that xxx.xxx.x.xx is your server's IP. Run this as root

```sh
ssh root@xxx.xxx.x.xx
wget https://raw.githubusercontent.com/drew2a/wireguard/master/wg-ububtu-server-up.sh
chmod +x ./wg-ububtu-server-up.sh
./wg-ububtu-server-up.sh 10
```

## Generate QR code for Mobile:

```sh
qrencode -t ansiutf8 < ~/wireguard/client2.conf
```

## Reference

[https://medium.com/@drew2a/replace-your-vpn-provider-by-setting-up-wireguard-on-digitalocean-6954c9279b17](https://medium.com/@drew2a/replace-your-vpn-provider-by-setting-up-wireguard-on-digitalocean-6954c9279b17)
