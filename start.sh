#!/bin/bash
# 2018
# By Majes
# For epresspack.com

# AWS Migrator
# This tool aim to simplify the migration from
# standard vps install of wordpress to AWS instances
# with high-availability, security and monitoring in mind

# Requirements to launch this tool ?
# ANSIBLE !

deployment_to_swarm(){
cat << EOF > /tmp/$WEbSITE_NAME.docker.yaml
docker swarm init --advertise-addr $IP_ADDRESS
docker swarm join --token $TOKEN:2377
docker service create --name $WEBSITE_NAME --publish 443:443 --replicas $REPLICA_NUMBER localhost:5000/example.com.template
EOF
}

banner(){
clear
echo -e "-----------------------------------------------------"
echo -e "AWS Migrator for epresspack.com"
#curl -fsSL https://get.docker.com/ | sh
echo -e "Say you launch this script with example.com as parameter"
echo -e "like : ./start.sh example.com"
echo -e "you must have a example.com folder where start.sh resides"
echo -e "and have two files in that folder"
echo -e "A plugins.txt file with all the plugins names from the previous install"
echo -e "and a requirements.txt file where all ubuntu depandancies and their versions"
echo -e "are listed and ip address of AWS EC2 instance, one line for each for both files"
echo -e "here's an example of requirements.txt file"
echo -e "-----------------------------------------------------"
echo -e "php7.0        "
echo -e "apache2       "
echo -e "apache2-utils "
echo -e "mysql-client  "
echo -e "mysql-server  "
echo -e "IP_ADDRESS=192.168.0.1"
echo -e "-----------------------------------------------------"
echo -e "You also have to have a ubuntu docker template image"
echo -e "like localhost:5000/example.com.template"


echo -e "Example: ./start.sh example.com"
echo -e "with a example.com folder"
echo -e "and requirements.txt file and a plugins.txt file inside it"
echo -e ""

echo -e "-----------------------------------------------------"

}

if [ -z $WEBSITE_ --advertise-addr $IP_ADDRESS

then
	banner
else
	if [ -z requirements.txt || plugins.txt ]
	then
		break
	else
		banner
	fi
fi
