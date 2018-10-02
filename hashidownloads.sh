#!/bin/bash

sudo apt install unzip

echo Getting VAULT 0.10.4
wget https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_linux_amd64.zip
echo Getting Consul 1.2.2
wget https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip
echo Getting Terraform 0.11.7
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip

echo Unzipping files

unzip vault_0.10.4_linux_amd64.zip
unzip consul_1.2.2_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip

echo Moving files to /usr/bin folder

sudo cp vault /usr/bin/
sudo cp consul /usr/bin/
sudo cp terraform /usr/bin/

sudo chown $USER:root /usr/bin/vault
sudo chown $USER:root /usr/bin/consul
sudo chown $USER:root /usr/bin/terraform

echo Testing files

vault --version
consul --version
terraform --version

vault -autocomplete-install

echo Cleaning up

rm vault*
rm consul*
rm terraform*
