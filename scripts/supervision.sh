#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : supervision.sh
# Description      : Script de lancement de l'installation des roles monitorix et monit
# Auteur           : Sebastux
# Date             : 04/09/2022
# Modification     : 04/09/2022
# Version          : 1.00
# Utilisation      : playbooks/supervision.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de l'installation complete du master.
ansible-playbook playbooks/supervision.yml -i production --flush-cache

# Sortie de l'environnement virtuel
deactivate
