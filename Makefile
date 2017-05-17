apps:
	mkdir -p ~/Apps && cd ~/Apps;
	wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb;
	wget https://github.com/atom/atom/releases/download/v1.17.0/atom-amd64.deb;
	wget http://download.processing.org/processing-3.3.3-linux64.tgz;
	wget https://nodejs.org/dist/v7.10.0/node-v7.10.0-linux-x64.tar.xz;
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb;
	tar xvf processing-3.3.3-linux64.tgz && rm processing-3.3.3-linux64.tgz;
	sudo ln -s /home/wepress/Apps/processing-3.3.3/processing /usr/local/bin/processing;
	sudo ln -s /home/wepress/Apps/processing-3.3.3/processing-java /usr/local/bin/processing-java;
	tar --xz -jxvf node-v7.10.0-linux-x64.tar.xz && rm node-v7.10.0-linux-x64.tar.xz;
	sudo ln -s /home/wepress/Apps/node-v7.10.0-linux-x64/bin/node /usr/local/bin/node;
	sudo ln -s /home/wepress/Apps/node-v7.10.0-linux-x64/bin/npm /usr/local/bin/npm;
	sudo dpkg -i atom-amd64.deb;
	sudo dpkg -i sublime-text_build-3126_amd64.deb;
	sudo dpkg -i google-chrome-stable_current_amd64.deb;

#include script to install workshop command (that loads workshop page)
