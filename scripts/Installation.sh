#! /bin/bash

clear
source ./.venv/bin/activate
ansible-playbook site.yml -i production
deactivate
