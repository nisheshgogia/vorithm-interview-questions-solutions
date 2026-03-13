#!/bin/bash

# Script to set up GitHub remote and push to repository
# Usage: ./setup_github.sh <your-github-username> <repo-name>

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: ./setup_github.sh <your-github-username> <repo-name>"
    echo "Example: ./setup_github.sh nishesh interview-questions-solutions"
    exit 1
fi

USERNAME=$1
REPO_NAME=$2

echo "Setting up GitHub remote..."
git remote add origin https://github.com/${USERNAME}/${REPO_NAME}.git 2>/dev/null || git remote set-url origin https://github.com/${USERNAME}/${REPO_NAME}.git

echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "Done! Your repository is now on GitHub at: https://github.com/${USERNAME}/${REPO_NAME}"
