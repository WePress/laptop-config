64:
	wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb;
	wget https://github.com/atom/atom/releases/download/v1.17.0/atom-amd64.deb;
	wget http://download.processing.org/processing-3.3.3-linux64.tgz;
	wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-x64.tar.xz;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
	make deps;
	make unpack;
	make link;
	make bash;
	sudo dpkg -i atom-amd64.deb;
	sudo dpkg -i sublime-text_build-3126_amd64.deb;
	sudo dpkg -i google-chrome-stable_current_amd64.deb;
	rm *.deb;


32:
	wget https://download.sublimetext.com/sublime-text_build-3126_i386.deb;
	wget https://github.com/atom/atom/releases/download/v1.17.0/atom-i386.deb;
	wget http://download.processing.org/processing-3.3.3-linux32.tgz;
	wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-x86.tar.xz;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb;
	make deps;
	make unpack;
	make link;
	make bash;
	sudo dpkg -i atom-i386.deb;
	sudo dpkg -i sublime-text_build-3126_i386.deb;
	sudo dpkg -i google-chrome-stable_current_i386.deb;
	rm *.deb;

deps:
	sudo apt update;
	sudo apt install git gconf2 gconf-service libappindicator1;
	sudo apt -f install;

unpack:
	tar xvf processing-3.3.3-linux*;
	tar xf node-v7.10.0-linux-*;
	rm *.tgz;
	rm *.tar.xz;

link:
	mkdir -p ~/Apps;
	mv processing-3.3.3 ~/Apps;
	mv node-v7.10.0-linux-x64 node-v7.10.0
	mv node-v7.10.0-linux-x86 node-v7.10.0
	mv node-v7.10.0 ~/Apps;
	sudo ln -s /home/wepress/Apps/processing-3.3.3/processing /usr/local/bin/processing;
	sudo ln -s /home/wepress/Apps/processing-3.3.3/processing-java /usr/local/bin/processing-java;
	sudo ln -s /home/wepress/Apps/node-v7.10.0/bin/node /usr/local/bin/node;
	sudo ln -s /home/wepress/Apps/node-v7.10.0/bin/npm /usr/local/bin/npm;

bash:
	cp .bashrc ~/;

picon: 
	sudo cp processing.desktop /usr/share/applications;

# add setup target to add processing icon & workshop icon
# also customize bash profile (just wepress)
