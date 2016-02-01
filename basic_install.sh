sudo locale-gen en_US en_US.UTF-8 

cd /tmp

git clone git://github.com/trapd00r/ls--.git
git clone https://github.com/w4rlock/servers_dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp servers_dotfiles/.* ~/
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

cd ls--
sudo cpan Term::ExtendedColor
perl Makefile.PL
make 
sudo make install

sudo apt-get install -y ctags htop 
npm i -g forever pm2
