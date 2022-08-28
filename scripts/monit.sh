#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : monit.sh
# Description      : Script de lancement de l'installation du role monit
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : playbooks/monit.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# shellcheck source=/dev/null
source .venv/bin/activate

# Lancement de l'installation complete du master.
ansible-playbook playbooks/monit.yml -i production

# Sortie de l'environnement virtuel
deactivate
