#!/bin/bash

#setting up the app
cd multipleVM
if [ -d "Fast-Food-Delivery-App" ] 
then
    echo "+++++++++++ Directory already exists. skipping... +++++++++++" 
    cd Fast-Food-Delivery-App
    sudo npm install
    echo "starting the app"
    npm run start 
else  
    echo "setting up the app"
    git clone https://github.com/ekpangmichael/Fast-Food-Delivery-App.git
    cd Fast-Food-Delivery-App
    sudo npm install
    #starting the app
    echo "starting the app"
    npm run start 
 fi