#!/bin/bash

sudo apt update
sudo apt install nano
sudo apt install -y ruby-full ruby-bundler build-essential

COMMAND='ruby -v'
if echo $COMMAND | grep -q 'command not found'; then
	echo "error: ruby installation failuire"
else
	echo "ruby installation is successfull"
fi

COMMAND='bundler -v'
if echo $COMMAND | grep -q 'command not found'; then
	echo "error: bundler installation failuire"
else
	echo "bundler installation is successfull"
fi

wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

COMMAND='systemctl status mongod'

if $COMMAND | grep -q 'active (running)'; then
	echo "mongod is up and running"
else
	echo "mongod: installation failure"
fi


sudo apt install git
cd ~
git clone -b monolith https://github.com/express42/reddit.git
cd ~/reddit
bundle install

puma -d

COMMAND='ps aux'

if $COMMAND | grep -q "[p]uma"; then
	tput setaf 2;echo "puma is up and running"
else
	tput setaf 1; echo "puma: installation failure"
fi
