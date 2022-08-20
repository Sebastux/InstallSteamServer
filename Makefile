.DEFAULT_GOAL = help
SHELL=/bin/bash

help: # Afficher l'aide.
				@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# ******** Installation des divers module du master ********

install: # Installation complète du serveur Debian 11.
				chmod 700 scripts/installation.sh
				scripts/installation.sh

durcissement: # Augmentation de la sécurité du système.
				chmod 700 scripts/durcissement.sh
				scripts/durcissement.sh

monit: # Indisponnible pour l'instant.
				chmod 700 scripts/monit.sh
				scripts/Installation.sh

# ******** Outils divers ********
init: # Installer les outils afin de déployer la configuration de la machine.
				chmod 700 scripts/outils/init.sh
				scripts/init.sh

update: # Mettre à jour les packages python et le dépôt.
				chmod 700 scripts/outils/update.sh
				scripts/update.sh

user: # Créer un compte utilisateur.
				chmod 700 scripts/outils/user.sh
				scripts/user.sh

admin: # Créer un compte sudoer (sudo).
				chmod 700 scripts/outils/sudoers.sh
				scripts/sudoers.sh

delete_user: # Supprimer un compte ainsi que son répertoire de connexion
				chmod 700 scripts/outils/delete_user.sh
				scripts/update.sh

passwd: # Mettre à jour le  mot de passe d'un compte.
				chmod 700 scripts/outils/passwd.sh
				scripts/update.sh

ssh_key: # Mettre à jour la clé ssh d'un compte.
				chmod 700 scripts/outils/ssh_key.sh
				scripts/update.sh
