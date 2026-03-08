#!/bin/bash
#
echo "
.----------------------------------------------------------------------------.
|  ____  _                 _    _       _   _           _       _            |
| / ___|| |__   __ _ _ __ | | _( )___  | | | |_ __   __| | __ _| |_ ___ _ __ |
| \___ \| '_ \ / _\` | '_ \| |/ /// __| | | | | '_ \ / _\` |/ _\` | __/ _ \ '__||
|  ___) | | | | (_| | | | |   <  \__ \ | |_| | |_) | (_| | (_| | ||  __/ |   |
| |____/|_| |_|\__,_|_| |_|_|\_\ |___/  \___/| .__/ \__,_|\__,_|\__\___|_|   |
|                                            |_|                             |
'----------------------------------------------------------------------------'
"
echo " "
echo "Preparing to get the standard update."

echo " "
sudo apt-get update -y
echo " "
echo "
***************************************
    *****  Update Completed!  *****
***************************************
"
echo " "
sleep 2
echo "Preparing to get the standard upgrade."
echo " "
sudo apt-get upgrade -y
echo " "
echo "
***************************************
   *****  Upgrade Completed!  *****
***************************************
"
echo " "
sleep 2
echo "Preparing to get the full upgrade."
echo " "
sudo apt-get full-upgrade -y
echo " "
echo "
***************************************
 *****  Full-Upgrade Completed!  *****
***************************************
"
echo " "
sleep 2
echo "Preparing to complete autocleaning and auto removal of packages."
echo " "
sudo apt autoclean -y
echo " "
echo "
***************************************
   *****  Autoclean Complete!  *****
***************************************
"
echo " "
sudo apt autoremove -y
echo " "
echo "
***************************************
   ****  Autoremove Complete!  *****
***************************************
"
echo " "
echo " "
sleep 3
# ASCII art completion message
echo "
***************************************
 ****  Update Script Completed!  *****
***************************************
"

# End of script

