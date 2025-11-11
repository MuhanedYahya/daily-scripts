#!/bin/bash

# Path to your GitOps folder
GITOPS_PATH="$HOME/Desktop/gitops"

# Check if the folder exists
if [ -d "$GITOPS_PATH" ]; then
    code "$GITOPS_PATH"
else
    echo "❌ Folder not found: $GITOPS_PATH"
    exit 1
fi
