 
#! bash

curl -Ss https://gitcode.net/simple-linux-de/debserver/-/raw/master/project/simplelinux.asc | sudo gpg --import -

sudo bash -c "gpg --export F5D1CCA2BD189758 > /etc/apt/trusted.gpg.d/simplelinux.gpg"
