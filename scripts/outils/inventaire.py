#!/usr/bin/python3
# -*- coding: utf-8 -*-

"""
Titre             : inventaire.py
Description       : Script permettant de généré un inventaire.
Auteur            : Sébastux
Date              : 07/09/2022
Version           : 1.00
Utilisation	      : ./inventaire.py
Notes             :
Version de python : 3.10
"""
# Metadonnées du script
__author__     = "Sébastux"
__copyright__  = "None"
__license__    = "unlicense"
__version__    = "1.00"
__date__       = "07/09/2022"
__maintainer__ = "Sébastux"
__email__      = "None"
__status__     = "alpha"

# Directive(s) d'importation
# Directive(s) d'importation
import argparse
import configparser
import sys
import os
from datetime import date, time, datetime
import time

# Déclaration(s) de variable(s)
maintenant = datetime.now()
lcom = argparse.ArgumentParser(description="Aide du script d'envoi de suppression de fichier log", prog = 'supplogs.py')
parser_lcom = ""

# datefic = ""
# nomfic = ""
# replogs = ""
# reppython = ""
# sortie = ""
# cheminsortie = ""
# cheminerreur = ""
# production = True
# config = ""
# ficscript = ''
# configscript = ""
# formalog = logging.Formatter('[%(levelname)s] - %(asctime)s - %(message)s', datefmt='%H:%M:%S')
# formalog_debug = logging.Formatter('[%(levelname)s] - ligne numéro : %(lineno)d  - %(message)s')
# handler_info = ""
# temp = ""
# formatter_string = "%d-%m-%Y"
# delta = 0
# age = 0
# compteur_supp = 0
# compteur_prst = 0
# compteur_err = 0
# compteur = 0

# Création des flags
lcom.add_argument('--version', action='version', version='%(prog)s 1.00.')
lcom.add_argument('-f', '--fichier', dest = "ficini", action = 'store', required = True, help = 'Chemin du fichier de configuration générale.')
lcom.add_argument('-D', '--debug', dest = "prod", action = 'store_false', required = False, help = 'Passer le script en mode debug.')

# Ouverture et test du fichier ini principal
parser_lcom = lcom.parse_args()
production = parser_lcom.prod
temp = os.path.isfile(parser_lcom.ficini)
