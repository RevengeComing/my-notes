# install system requirements
sudo apt install vim curl git wget

# install oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install python
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.7-dev python3.8-dev python3.9-dev python3.6-dev python3.5-dev python2.7-dev virtualenv

# install golang
wget https://golang.org/dl/go1.15.6.linux-amd64.tar.gz -P /tmp
sudo tar -C /usr/local -xzf /tmp/go1.15.6.linux-amd64.tar.gz

# install docker CE
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

