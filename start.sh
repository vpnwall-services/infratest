#!/bin/bash
# 2018
# By Majes
# For epresspack.com

# AWS Migrator
# This tool aim to simplify the migration from
# standard vps install of wordrpress to AWS instances
# with high-availability, security and monitoring in mind

# Requirements to launch this tool ?
# NONE !

banner(){
echo -e "AWS Migrator for epresspack.com"
#curl -fsSL https://get.docker.com/ | sh
echo -e "Say you launch this script with toto.epresspack.com as parameter"
echo -e "like : ./start.sh toto.epresspack.com"
echo -e "you must have a toto.epresspack.com folder where start.sh exists"
echo -e "and have two files in that folder"
echo -e "a plugin.txt file with all the plugin names from the previous install"
echo -e ""
}

if [ -z  ]
then
	break
elif
	break
else
	banner
	docker swarm init --advertise-addr 192.168.137.200
fi
