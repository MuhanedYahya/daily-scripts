#!/bin/bash

LOGFILE="$HOME/update_system.log"

# Update the system and save the output to LOGFILE
sudo apt-get update && sudo apt-get upgrade -y &> "$LOGFILE"


