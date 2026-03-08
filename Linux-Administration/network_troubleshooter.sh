#!/bin/bash

#function to display network information
display_network_info() {
	echo "Network Information:"
	echo "--------------------"
	echo "IP Address: "
	echo ""
	echo "$(hostname -I | tr ' ' '\n' | sed 's/^/ /')"
	echo "DNS Servers: " 
	awk  '/^nameserver/ {print " " $2}' /etc/resolv.conf | tr ' ' '\n' | sed 's/^/ /'
	echo ""
	echo "Default Gateway: "
	echo ""
	echo "$(ip route | grep default | awk '{print $3}' | tr ' ' '\n' | sed 's/^/ /')"
	echo "--------------------"
}

#function to pint a remote server
ping_server() {
	echo "Enter the IP address or domain to ping: "
	read target_ip

	ping -c 3 "$target_ip"

	if [ $? -eq 0 ]; then
		echo "Ping successful. Network is reachable."
	else
		echo "Ping failed. Network may be unreachable."
	fi
}

#main menu
while true; do
	echo "Network Troubleshooter"
	echo "1. Display Network Information"
	echo "2. Ping a Remote Server"
	echo "3. Exit"
	read -p "Enter your choice (1/2/3): " choice
	
	case $choice in 
		1) display_network_info ;;
		2) ping_server ;;
		3) echo "Exiting. Goodbye!"; exit ;;
		*) echo "Invalid choice. Please enter 1, 2, or 3." ;;
	esac

done
