#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install python3-pip git unzip -y

# Create and activate the virtual environment
if [ ! -d "CryptoCompta" ]; then
  virtualenv CryptoCompta
fi

source CryptoCompta/bin/activate

echo "Virtual environment 'CryptoCompta' is activated. You can now run your commands." \

# Install Python requirements (uncomment if requirements.txt exists)
# if [ -f "requirements.txt" ]; then
#   pip install -r requirements.txt
# fi

# Install AWS CLI
if [ ! -d "aws" ]; then
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip -o awscliv2.zip
  sudo ./aws/install
  rm awscliv2.zip
fi

source install_scripts/terraform_install.sh

cd aws 

# Initialize Terraform (ensure terraform is installed)
if command -v terraform >/dev/null 2>&1; then
  terraform init
  terraform plan -out=tfplan
  terraform validate
  terraform apply -auto-approve tfplan 
else
  echo "Terraform is not installed. Please install Terraform and re-run the script."
fi
