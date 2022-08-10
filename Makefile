.DEFAULT_GOAL = help

help: # Afficher l'aide.
				@egrep -h '\s#\s' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?# "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

init: # Installer les outils afin de déployer la configuration de la machine.
				chmod 700 scripts/init.sh
				scripts/init.sh

install: # Installation complète du serveur Debian 10.
				chmod 700 scripts/Installation.sh
				scripts/Installation.sh
