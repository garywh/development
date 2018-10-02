#!/bin/bash

sudo apt install unzip

echo Getting VAULT 0.10.4
wget https://releases.hashicorp.com/vault/0.10.4/vault_0.10.4_linux_amd64.zip
echo Getting Consul 1.2.2
wget https://releases.hashicorp.com/consul/1.2.2/consul_1.2.2_linux_amd64.zip
echo Getting Terraform 0.11.7
wget https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
echo Getting Nomad 0.8.6
wget https://releases.hashicorp.com/nomad/0.8.6/nomad_0.8.6_linux_amd64.zip

echo Unzipping files

unzip vault_0.10.4_linux_amd64.zip
unzip consul_1.2.2_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip
unzip nomad_0.8.6_linux_amd64.zip

echo Moving files to /usr/bin folder

sudo cp vault /usr/bin/
sudo cp consul /usr/bin/
sudo cp terraform /usr/bin/
sudo cp nomad /usr/bin/

sudo chown $USER:root /usr/bin/vault
sudo chown $USER:root /usr/bin/consul
sudo chown $USER:root /usr/bin/terraform
sudo chown $USER:root /usr/bin/nomad

echo Testing files

vault --version
consul --version
terraform --version
nomad --version

vault -autocomplete-install

echo Cleaning up

rm vault*
rm consul*
rm terraform*
rm nomad*
