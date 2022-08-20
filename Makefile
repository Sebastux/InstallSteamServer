.DEFAULT_GOAL = help
SHELL=/bin/bash

help: # Afficher l'aide.
				@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: # Installer les outils afin de déployer la configuration de la machine.
				chmod 700 scripts/init.sh
				scripts/init.sh

install: # Installation complète du serveur Debian 10.
				chmod 700 scripts/Installation.sh
				scripts/Installation.sh

# Outils divers
user: # Créer un compte utilisateur.
				chmod 700 scripts/xxx.sh
				scripts/xxx.sh

admin: # Créer un compte sudoer.
				chmod 700 scripts/xxx.sh
				scripts/xxx.sh

update: # Mettre à jour les packages python et le dépôt.
				chmod 700 scripts/update.sh
				scripts/update.sh
