#!/bin/bash

#setting up posgresql
if [ -e "/etc/vagrant-provisioned" ];
then
    echo "+++++++++++ Database already created skipping....++++++++++++"
    service postgresql start
   exit 0
else
    echo "+++++++++++++ Setting up databse ++++++++"
fi
sudo apt-get update
sudo apt-get -y install postgresql postgresql-contrib

service postgresql start
sudo -u postgres psql -c "CREATE USER fastfooduser WITH PASSWORD 'admin';"
sudo -u postgres  psql -c "CREATE DATABASE fastfoodDB"
echo "database created"

