#! /bin/bash

echo "Hey there, please give me the IP to scan."
echo " "
read IP
echo "Thanks, I'll start scanning $IP now."
echo " "
sleep 2
sudo nmap -sV -Pn $IP
echo " "
sleep 2
echo " "
echo "Here are the results. Happy Hacking!"
