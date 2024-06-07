#! /bin/bash

echo "What is the machine name?"
echo " "
read name
echo " "
echo "Thank you, I will create the directory structure for the machine named $name"
echo " "
sudo mkdir ~/CTF/$name
sudo mkdir ~/CTF/$name/1_Nmap
sudo mkdir ~/CTF/$name/2_Exploits
sudo mkdir ~/CTF/$name/3_Extras
echo " "
echo "The $name directory and associated sub_directories have been created."
