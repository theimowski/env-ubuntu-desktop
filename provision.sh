wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
apt-get update
apt-get remove -y --purge \
    libreoffice-core \
    libreoffice-common \
    unity-webapps-common \
    ubuntu-software
apt-get -y install \
    google-chrome-stable
apt-mark hold grub-pc
apt-get -y upgrade
wget -q -O code_amd64.deb https://go.microsoft.com/fwlink/?LinkID=760868
dpkg -i code_amd64.deb
code --install-extension Ionide.Ionide-fsharp
code --install-extension robertohuertasm.vscode-icons 
code --install-extension EditorConfig.EditorConfig

echo -e 'LANG="en_US.UTF-8"\nLANGUAGE="en_US"' | sudo tee /etc/default/locale > /dev/null