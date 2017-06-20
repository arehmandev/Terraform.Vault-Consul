#!/bin/bash

echo "Installing dependencies..."
sudo apt-get update -y
sudo apt-get -qq update &>/dev/null
sudo apt-get -yqq install unzip &>/dev/null

PUBLIC_IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)

echo "Downloading vault..."
wget https://releases.hashicorp.com/vault/${vault_version}/vault_${vault_version}_linux_amd64.zip -O /tmp/vault.zip
unzip /tmp/vault.zip -d /tmp/
chmod +x /tmp/vault
mv /tmp/vault /usr/local/bin/

echo "Creating vault config"
mkdir /etc/vault
sudo tee /etc/vault/config.hcl > /dev/null <<EOF
backend "consul" {
address = "${consul_server_elb_address}"
advertise_addr = "$PUBLIC_IP:8200"
token= "${vault_token}"
path = "vault"
}
listener "tcp" {
address = "0.0.0.0:8200"
tls_disable = 1
}
disable_mlock = true
EOF


sudo tee /etc/init/vault.conf > /dev/null <<"EOF"
description "Vault"
start on runlevel [2345]
stop on runlevel [06]
respawn
post-stop exec sleep 5
#
normal exit 0 INT
#
kill signal INT
exec /usr/local/bin/vault server \
  -config=/etc/vault/config.hcl
EOF

sudo service vault stop || true
sudo service vault start
