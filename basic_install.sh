sudo locale-gen en_US en_US.UTF-8 


#minimal server pkgs
sudo apt-get install -y \
	#apache \
	#mysql \
	ctags \
	htop \
	nginx \
	convert \
	tmux \
	zsh  \
	vim \
	fontconfig


cd /tmp
git clone git://github.com/trapd00r/ls--.git
git clone https://github.com/w4rlock/servers_dotfiles.git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp servers_dotfiles/.* ~/
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash


#powered ls
cd ls--
sudo cpan Term::ExtendedColor
perl Makefile.PL
make 
sudo make install



#node js tools
npm i -g \
	forever \
	pm2 \
	nodemon \
	grunt \
	gulp \
	bower

