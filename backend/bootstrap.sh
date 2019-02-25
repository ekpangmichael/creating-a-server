#!/usr/bin/env bash

bash multipleVM/backend/core.sh
bash multipleVM/backend/node.sh
bash multipleVM/backend/postgres.sh
bash multipleVM/backend/startApp.sh


touch /etc/vagrant-provisioned