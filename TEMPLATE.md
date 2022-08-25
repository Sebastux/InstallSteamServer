<!-- [START BADGES] -->

<!-- [END BADGES] -->
***

# **InstallSteamServer** :

Cet ensemble de rôles et de playbooks permet l’installation et la configuration
d’un serveur steam. Cette installation se passe en plusieurs étapes
et va de l’upgrade de debian 10 à debian 11 à la configuration de la machine
en passant par l’installation d’outil de supervision et le durcissement  de
l’OS.


## **Prérequis** :
Tout a été développé et testé sous FEDORA {vfed} avec la version {vansible} d’ansible.<br />
Le serveur en debian {vdebdep} qui sera migré en version {vdebfin}.
Les outils de développement afin d’avoir la commande make disponible.

## **Configuration de la machine de commande** :
Installer les packages suivant pour faire fonctionner l’ensemble :

 ```shell
  dnf install -y git-all make extra-cmake-modules sshpass
```

Ensuite cloner le dépot :

```shell
 git clone https://github.com/Sebastux/InstallSteamServer.git
```
Rendez-vous dans le répertoire nouvellement créé à l’aide de la commande suivante :
```shell
 cd InstallSteamServer
```


## **Variables** :
Plusieurs variables sont à compléter pour que tout fonctionne normalement.

## **Systémes d'exploitation** :

FEDORA {vfed} (conseillé) pour le noeud ansible.
debian {vdebdep} qui sera migré en version {vdebfin}.

## **Outils** :
Ansible {vansible} pour l’exécution des playbooks.
Make dans sa version la plus récente.

## **Fonctionnalités** :



## **Lancement** :
Entrez la commande make afin d’avoir la liste des options disponnible.
Il suffit ensuite d’entrer la commande make option.

Par exemple pour faire une installatioh complète, il suffit d’entrer la commande suivante :  

```shell
 make install
```

## **Auteur** :
Sebastux.

## **Readme des différents rôles** :



### **Versions** :
