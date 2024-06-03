#!/bin/bash

# GitHub username and personal access token
username="your_username" 
token="your_token"

read -p "Enter the name for the new GitHub repository: " repo_name
read -p "Do you want the repository to be private? (y/n): " private_choice

if [[ $private_choice =~ ^[Yy]$ ]]; then
    private=true
else
    private=false
fi

create_github_repo() {
    response=$(curl -s -X POST -H "Authorization: token $token" -H "Accept: application/vnd.github.v3+json" \
               -d "{\"name\":\"$repo_name\",\"private\":$private}" "https://api.github.com/user/repos")

    repo_url=$(echo "$response" | grep -o '"clone_url": "[^"]*' | cut -d '"' -f 4)

    if [[ $repo_url ]]; then
        echo "Repository '$repo_name' created successfully."
        echo "git remote add origin $repo_url"
    else
        echo "Failed to create repository '$repo_name'."
        echo "Error message: $response"
    fi
}

create_github_repo
