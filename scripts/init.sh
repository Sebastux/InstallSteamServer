#! /bin/bash

rm -fr .venv
clear
python3 -m venv .venv --upgrade-deps
source .venv/bin/activate
pip install wheel
pip install ansible
deactivate
