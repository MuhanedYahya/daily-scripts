#!/bin/bash

context=$1

# Define source file path
source_file="$HOME/Documents/contexts/$context"

# Define destination path
destination="$HOME/.kube/config"

# Copy the selected file to the destination
cp "$source_file" "$destination"

# Display the current contexts
kubectl config get-contexts
