#!/bin/bash

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

