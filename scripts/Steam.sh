#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : steam.sh
# Description      : Script de lancement de création du compte steam.
# Auteur           : Sebastux
# Date             : 31/08/2022
# Modification     : 31/08/2022
# Version          : 1.00
# Utilisation      : playbooks/steam.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de l'installation complete du master.
ansible-playbook playbooks/steam.yml -i production

# Sortie de l'environnement virtuel
deactivate
