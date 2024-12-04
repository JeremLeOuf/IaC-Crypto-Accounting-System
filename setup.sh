sudo apt install pip && sudo apt install git && sudo apt install unzip # Install pip, git
virtualenv CryptoCompta # Create virtualenv CryptoCompta
source CryptoCompta/bin/activate # Activate it
git clone https://github.com/JeremLeOuf/IaC-Crypto-Accounting-System # Clone my repo
pip install -r requirements.txt # Install requirements

# Install AWS CLI:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip