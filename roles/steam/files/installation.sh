#!/bin/bash
# -*- coding: utf-8 -*-

#==============================================================================
# Titre            : installation.sh
# Description      : Script de lancement de configuration de la VM.
# Auteur           : Sebastux
# Date             : 02/09/2022
# Modification     : 02/09/2022
# Version          : 1.00
# Utilisation      : playbooks/installation.sh
# Notes            : Script lancé par make.
# Version de bash  : 5.1.16(1)-release
#==============================================================================

clear

# Téléchargement des fichiers d’installation.
./linuxgsm.sh sfserver

# Lancement de l'installation du serveur.
./sfserver install
