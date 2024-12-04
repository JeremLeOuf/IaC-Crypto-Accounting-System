#!/bin/bash

# Function to ensure commands do not terminate the parent shell
function safe_exec() {
  "$@" || { echo "Command failed: $*"; return 1; }
}

# Remove any conflicting Docker packages
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do
  safe_exec sudo apt-get remove -y "$pkg"
done

# Update the package index and install prerequisites
safe_exec sudo apt-get update
safe_exec sudo apt-get install -y ca-certificates curl

# Add Docker's official GPG key
safe_exec sudo install -m 0755 -d /etc/apt/keyrings
safe_exec sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
safe_exec sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the Docker repository to Apt sources
echo "Adding Docker repository to sources.list.d..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  safe_exec sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package index again
safe_exec sudo apt-get update

# Install Docker packages
safe_exec sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Test Docker installation
echo "Testing Docker installation..."
safe_exec sudo docker run hello-world

# Notify the user
echo "Docker installation completed successfully. Docker is ready to use."
