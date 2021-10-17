sudo dnf update

# install oh-my-zsh
# sudo dnf install zsh
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo dnf install python3.7 python3.8 python3.9 python3.6 python3.5 virtualenv

# install golang
wget https://golang.org/dl/go1.17.2.linux-amd64.tar.gz -P /tmp
sudo tar -C /usr/local -xzf /tmp/go1.17.2.linux-amd64.tar.gz
echo -e "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc

# install docker CE
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io

# install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(<kubectl.sha256) kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "$HOME/.docker" -R