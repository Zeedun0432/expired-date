#!/bin/bash

cd /var/www/pterodactyl || { echo "Install pterodactyl panel first, or ensure your pterodactyl installation files is exist on /var/www/pterodactyl"; exit 1; }
apt install wget
wget -O exp_zedun_nakal_gtw_nakal.zip "https://files.chiwa.id/exp_zedun_nakal_gtw_nakal.zip?token=yang_colong_jadi_cewek_ajah_hmpjh, terutama_zedun_nakal"
unzip exp_zedun_nakal_gtw_nakal.zip
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
