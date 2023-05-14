#!/bin/bash

# Fetch the version list
RELEASE_LIST=$(curl -s https://unofficial-builds.nodejs.org/download/release/index.json | jq -r '.[].version')

echo "Available Node.js versions:"

# Format the list as a table and output it
echo "$RELEASE_LIST" | column -c 100

# Ask the user to select a version
read -p "Enter the version to download: " VERSION

# Download the file
wget "https://unofficial-builds.nodejs.org/download/release/$VERSION/node-$VERSION-linux-armv6l.tar.xz"

# Extract the file
tar xvfJ "node-$VERSION-linux-x64.tar.xz"

# Copy the files to /usr/local
sudo cp -R "node-$VERSION-linux-x64"/* /usr/local

# Clean up the directory
rm -rf node-*