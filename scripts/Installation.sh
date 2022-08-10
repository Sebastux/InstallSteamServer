#! /bin/bash

clear
source ./.venv/bin/activate
ansible site.yml -i production 
deactivate
