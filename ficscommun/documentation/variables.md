Liste des divers variables utilisé par les rôles
================================================

Ansible
-------

| **Nom**                      | **Description**                                   | **Valeur par défaut** | **Valeur** |
|------------------------------|---------------------------------------------------|:---------------------:|:----------:|
| ansible_port                 | Numéro du port de connexion à la machine distante.| :heavy_check_mark:    |    22      |
| ansible_ssh_user             | Identifiant du compte de connexion à la machine distante. |          :x:          | root ou compte utilisateur.|
| ansible_ssh_pass             | Mot de passe du compte de connexion à la machine distante.|          :x:          |            |
| ansible_become[^1]           | Activer ou désactiver le changement de compte pour un compte administrateur.  |          :x:          | true ou false |
| ansible_become_user[^2]          | Compte utilisé pour exécuter certaines tâches. |   :heavy_check_mark:          | root. |
| ansible_become_method        | Méthode utilisée pour se connecter au compte administrateur.| :x: | [sudo](https://fr.wikipedia.org/wiki/Sudo "wikipedia") ou [su](https://fr.wikipedia.org/wiki/Su_(Unix) "wikipedia") |
| ansible_become_password      | Mot de passe du compte ayant les droits sudo ou mot de passe du compte de destination. | :x: |            |
| ansible_ssh_private_key_file[^3] | Chemin vers la clé privée permettant de se connecter au compte de connexion. |  :heavy_check_mark:     |../cles_ssh/root|
| ansible_python_interpreter   | Choisir l'interpréteur python qui exécutera les playbooks. |    :heavy_check_mark:    | Automatique |


***

Configuration
------

| **Nom**         | **Description** | **Valeur par défaut** | **Valeur** |
|-----------------|-----------------|:---------------------:|:----------:|
| nom_machine     | Nom d'hote de la machine | :heavy_check_mark:    | debian11 |
| domaine_machine | Nom de domaine auquel appartient la machine | :heavy_check_mark:    | localhost.localdomain |

***

Sécurisation
-------------

| **Nom**      | **Description** | **Valeur par défaut** | **Valeur** |
|--------------|-----------------|:---------------------:|:----------:|
| root_passwd  | Mot de passe du compte root qui remplacera celui par défaut. | :heavy_check_mark:    | P@ssW0rD01 |
| new_ssh_port | Port de connexion au service ssh pour remplacer celui par défaut. | :heavy_check_mark:    | 22         |
| use_ssh_key[^4]  | Permets d'interdire la connexion au serveur par mot de passe. | :heavy_check_mark:    | false      |



***

Monit
-----

|   **nom**     |                                       **description**                                            | **valeur par défaut** | **valeur** |
|---------------|--------------------------------------------------------------------------------------------------|:---------------------:|:----------:|
| admin_monit   | Nom du compte administrateur de monit.                                                           |       :x:             |            |
| admin_passwd  | Mot de passe du compte administrateur de monit.                                                  |       :x:             |            |
| activate_user | Activer ou désactiver le compte utilisateur de monit.<br/>La variable doit être à true ou false. | :heavy_check_mark:    | false      |
| user_monit    | Nom du compte utilisateur de monit.                                                              |       :x:             |            |
| user_passwd   | Mot de passe du compte utilisateur de monit.                                                     |       :x:             |            |
| port_monit    | Port d'écoute de monit pour l'interface web.<br/>Attention à ne pas utiliser un port réservé.[^5]|  :heavy_check_mark:   | 22         |


***

Firewalld et fail2ban
---------------------

| **nom**      |                                        **description**                                 | **valeur par défaut** | **valeur** |
|--------------|----------------------------------------------------------------------------------------|:---------------------:|:----------:|
| ip_whitelist | Liste des adresses IP à mettre en liste blanche<br/>dans le pare-feu et dans fail2ban. |         :x:           |            |

***

Variables monitorix
-------------------

| **nom**         | **description** | **valeur par défaut** | **valeur** |
|-----------------|-----------------|:---------------------:|:----------:|
| port_monitorix  | Port d'écoute de monitorix pour l'interface web.<br/>Attention à ne pas utiliser un port réservé.[^5] | :heavy_check_mark:    | 8080 |
| titre_monitorix | Titre de la fenetre de l'interface web | :x: |            |

***

[^1]: Mettre à true si la variable ansible_ssh_user est un compte utilisateur et mettre à false si c'est le compte root.

[^2]: Le compte doit être le compte root si vous y avez accès par ssh ou un compte ayant les droits sudo.
Pour vérifier, connectez-vous sur ce compte (en physique ou en ssh ) et sur un terminal, entrez la commande id. Cette commande affichera la liste des groupes auquel appartient votre compte et, en fonction de votre distribution, vous devriez voir apparaitre sudo ou wheel dans cette liste. Dans le cas contraire, contactez votre administrateur système.

[^3]: Un outil permet de créer et d'installer ce type de fichier.

[^4]: La connexion par mot de passe n'est plus possible, il est nécessaire de posséder une ou plusieurs clés ssh pour se connecter au serveur.

[^5]: Plus d'informations [ici](https://www.malekal.com/liste-des-ports-ports-reseaux-de-connexion-et-ce-que-cest/ "article")
