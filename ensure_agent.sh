#!/bin/bash
# This script ensures the go-agent is setup and running.
# It is basically Idempotent


#install agent if not done
if [ ! -f "/etc/init.d/go-agent" ];
then
	echo "deb https://download.gocd.org /" | sudo tee /etc/apt/sources.list.d/gocd.list
	curl https://download.gocd.org/GOCD-GPG-KEY.asc | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install go-agent
fi

# install scripts
sudo ln -s -f -T $(realpath ./agent-scripts/juliarun.sh) /usr/local/bin/juliarun
sudo chmod +x /usr/local/bin/juliarun

# restart agent
sudo /etc/init.d/go-agent restart



