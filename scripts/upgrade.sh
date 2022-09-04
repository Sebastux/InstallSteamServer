#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : upgrade.sh
# Description      : Script de lancement de l’upgrade de l'O.S.
# Auteur           : Sebastux
# Date             : 28/08/2022
# Modification     : 28/08/2022
# Version          : 1.00
# Utilisation      : playbooks/durcissement.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de l'installation complete du master.
ansible-playbook playbooks/upgradedebian.yml -i production --flush-cache

# Sortie de l'environnement virtuel
deactivate
