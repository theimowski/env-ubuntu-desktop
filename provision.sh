wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

apt-get update

apt-get remove -y --purge \
    libreoffice-core \
    libreoffice-common \
    unity-webapps-common \
    ubuntu-software

apt-get -y install \
    google-chrome-stable \
    mono-complete \
    fsharp \
    nodejs

apt-mark hold grub-pc
apt-get -y upgrade

wget -q -O code_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i code_amd64.deb

code --install-extension Ionide.Ionide-fsharp --user-data-dir=/home/vagrant/.config/Code/
code --install-extension robertohuertasm.vscode-icons --user-data-dir=/home/vagrant/.config/Code/
code --install-extension EditorConfig.EditorConfig --user-data-dir=/home/vagrant/.config/Code/
wget -q -O /home/vagrant/.config/Code/User/settings.json https://gist.githubusercontent.com/theimowski/12a3a901283f0806987d0bf3ef070c01/raw/settings.json

npm install -g gitbook-cli
gitbook

echo -e 'LANG="en_US.UTF-8"\nLANGUAGE="en_US"' | sudo tee /etc/default/locale > /dev/null