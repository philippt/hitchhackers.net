#!/bin/bash

NEW_HOSTNAME=$1

apt-get update
apt-get upgrade -y

if [ ! -z "$NEW_HOSTNAME" ]; then
  /vagrant/bootstrap/set_hostname.sh "$NEW_HOSTNAME"
fi

#apt-get install -y apache2
