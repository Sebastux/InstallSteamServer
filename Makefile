.DEFAULT_GOAL = help
SHELL=/bin/bash

help: # Afficher l'aide.
				@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# ******** Installation des divers module du master ********

install: # Installation complète du serveur Debian 11.
				chmod 700 scripts/installation.sh
				scripts/Installation.sh

monit: # Indisponnible pour l'instant.
				chmod 700 scripts/monit.sh
				scripts/Installation.sh

# ******** Outils divers ********
init: # Installer les outils afin de déployer la configuration de la machine.
				chmod 700 scripts/init.sh
				scripts/init.sh

user: # Créer un compte utilisateur.
				chmod 700 scripts/user.sh
				scripts/user.sh

admin: # Créer un compte sudoer (sudo).
				chmod 700 scripts/sudoers.sh
				scripts/sudoers.sh

update: # Mettre à jour les packages python et le dépôt.
				chmod 700 scripts/update.sh
				scripts/update.sh
