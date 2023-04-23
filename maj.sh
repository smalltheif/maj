#!/usr/bin/env bash

######################################################
# Name:             maj.sh
# Author:           Julien Houget
# Creation:         2023-04-14
# Description:      Mets à jour tous les packages de :
#                   apt
#                   pip
#                   flatpak
# Documentation:    
######################################################

# À ajouter au .bashrc
#   alias maj='/media/julien/Donnees/Julien/Documents/Divers/maj.sh'
# Exécuter dans un terminal : source ~/.bashrc

# Définit les couleurs d'affichage
# red=$( tput setaf 1 );
green=$( tput setaf 2 );
normal=$( tput sgr 0 );


echo -e "\n${green}apt update${normal}"
sudo apt update

echo -e "\n${green}apt upgrade${normal}"
sudo apt upgrade -y

echo -e "\n${green}apt autoremove --purge${normal}"
sudo apt autoremove --purge -y

echo -e "\n${green}apt clean${normal}"
sudo apt clean

echo -e "\n${green}pip install -U streamlink${normal}"
pip install -U streamlink

echo -e "\n${green}pip install -U glances${normal}"
pip install -U glances

echo -e "\n${green}pip install -U numpy${normal}"
pip install -U numpy

echo -e "\n${green}flatpak update${normal}"
flatpak update -y

echo -e "\n${green}flatpak uninstall --unused${normal}"
flatpak uninstall --unused -y


exit 0
