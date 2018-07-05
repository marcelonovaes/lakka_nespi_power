#!/bin/bash

#Step 1) Check if root--------------------------------------
if [[ $EUID -ne 0 ]]; then
   echo "Please execute script as root." 
   exit 1
fi
#-----------------------------------------------------------

#Step 4) Install RPi.GPIO module----------------------------

wget "https://github.com/marcelonovaes/lakka_nespi_power/archive/master.zip"

#-----------------------------------------------------------

#Step 5) Download Python script-----------------------------
cd /storage/
script=shutdown.py

if [ -e $script ];
	then
		echo "Script shutdown.py already exists. Doing nothing."
	else
		wget "https://raw.githubusercontent.com/marcelonovaes/lakka_nespi_power/master/scripts/shutdown.py"
fi
#-----------------------------------------------------------

#Step 6) Enable Python script to run on start up------------
cd /etc/
RC=rc.local

if grep -q "sudo python3 \/opt\/RetroFlag\/SafeShutdown.py \&" "$RC";
	then
		echo "File /etc/rc.local already configured. Doing nothing."
	else
		sed -i -e "s/^exit 0/sudo python3 \/opt\/RetroFlag\/SafeShutdown.py \&\n&/g" "$RC"
		echo "File /etc/rc.local configured."
fi
#-----------------------------------------------------------

#Step 7) Reboot to apply changes----------------------------
echo "RetroFlag Pi Case installation done. Will now reboot after 3 seconds."
sleep 3
sudo reboot
#-----------------------------------------------------------









