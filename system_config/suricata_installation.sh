!#bin/bash

echo "[!]Updating System Packages....."
sudo apt-get update

if command -v suricata &> /dev/null; then
	CURRENT_VERSION=$(suricata -V | awk '{print $NF}')
	echo "[!]Suricata is altrady installed..."
	echo "[+] Current version: $CURRENT_VERSION"
else
	echo "[!]Suricata installation start....."
	sudo apt-get install suricata -y
	sudo apt-get update
fi

echo "[*] Configuring Suricata interface in /etc/suricata/suricata.yaml..."

echo "[*] After configuring fetch and update Suricata rules...."

echo "[*] Enabling and starting Suricata service..."
