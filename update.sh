#!/bin/bash
#
echo " "
echo "Preparing to get the standard update."
echo " "
sudo apt-get update -y
echo " "
echo "The standard update has finished... "
echo " "
sleep 2
echo "Preparing to get the standard upgrade."
echo " "
sudo apt-get upgrade -y
echo " "
echo "The standard upgrade has finished... "
echo " "
sleep 2
echo "Preparing to get the full upgrade."
echo " "
sudo apt-get full-upgrade -y
echo " "
echo "The full upgrade has finished..."
echo " "
sleep 2
echo "Preparing to complete autocleaning and auto removal of packages."
echo " "
sudo apt autoclean -y
echo " "
echo "Autoclean has finished..."
echo " "
sudo apt autoremove -y
echo " "
echo "Autoremove has finished..."
echo " "
echo " "
sleep 3
echo "The update has finished, master."
