#!/bin/bash

# Step 1) Check if root ####################################
if [[ $EUID -ne 0 ]]; then
   echo "Please execute script as root." 
   exit 1
fi

#-----------------------------------------------------------

# Step 2) Go to the right folder ###########################
cd /storage/

#-----------------------------------------------------------

#Step 3) Download this repository with all files needed ----

wget "https://github.com/marcelonovaes/lakka_nespi_power/archive/master.zip"

#-----------------------------------------------------------

#Step 4) Unpack files --------------------------------------

