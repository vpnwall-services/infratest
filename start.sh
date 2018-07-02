#!/bin/bash
echo -e "Infra tester for epresspack migration"
#curl -fsSL https://get.docker.com/ | sh
echo -e ""
docker swarm init --advertise-addr 192.168.137.200
