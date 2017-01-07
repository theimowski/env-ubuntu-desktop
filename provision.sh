apt-get update
apt-mark hold grub-pc
apt-get -y upgrade
apt-get remove -y --purge libreoffice-core \
                          libreoffice-common \
                          unity-webapps-common \
                          ubuntu-software