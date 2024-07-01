#!/bin/bash

# Check if the repository URL is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repository-url>"
  exit 1
fi

REPO_URL=$1
CLONE_DIR=$(basename "$REPO_URL" .git)

# Clone the repository
git clone "$REPO_URL"

# Check if the clone was successful
if [ $? -ne 0 ]; then
  echo "Failed to clone repository."
  exit 1
fi

# Open the cloned repository in Visual Studio Code
code "$CLONE_DIR"

exit 0

