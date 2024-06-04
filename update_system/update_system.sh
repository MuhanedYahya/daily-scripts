#!/bin/bash

LOGFILE="$HOME/update_system.log"

# Update the system and save the output to LOGFILE
sudo apt-get update &> "$LOGFILE"
echo "====================================" >>"$LOGFILE"  
sudo apt-get upgrade -y &>> "$LOGFILE"