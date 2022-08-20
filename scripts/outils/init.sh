#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : init.sh
# Description      : Script de création d'un environement virtuel
# Auteur           : Sebastux
# Date             : 20/08/2022
# Modification     : 20/08/2022
# Version          : 1.00
# Utilisation      : ./init.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

# Suppression de l'ancien environnement virtuel
rm -fr .venv
clear

# Création et mise à jour des packages par défaut.
python3 -m venv .venv --upgrade-deps

# shellcheck source=/dev/null
source .venv/bin/activate

# Ajout du package permettant la construction des autres packages.
pip install wheel

# Installation d'ansible.
pip install ansible

# Sortie de l'environnement virtuel
deactivate

# Copie du fichier d'inventaire dans le répertoire de prod.
cp ficscommun/Inventaire/inventory production/inventory
