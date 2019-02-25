#!/bin/bash

#setting up the app
cd multipleVM
if [ -d "Fast-food-fast-react" ]
then
  echo "+++++++++++ Directory already exists. skipping... +++++++++++" 
  cd Fast-food-fast-react
  npm install
  #starting the app
  echo "starting the app"
  npm run start 
else
  echo "setting up the app"
  git clone https://github.com/ekpangmichael/Fast-food-fast-react.git
  cd Fast-food-fast-react
  npm install
  #starting the app
  echo "starting the app"
  npm run start 
 fi