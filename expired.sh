#!/bin/bash

cd /var/www/pterodactyl || { echo "Install pterodactyl panel first, or ensure your pterodactyl installation files is exist on /var/www/pterodactyl"; exit 1; }
apt install wget
wget -O expired.zip "https://github.com/Zeedun0432/expired-date/raw/refs/heads/main/expired.zip"
unzip expired.zip
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 16
nvm use 16
nvm alias default 16
npm install -g yarn
yarn install
yarn build:production
echo "done"
