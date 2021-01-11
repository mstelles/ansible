#!/bin/bash

for i in $(docker container ps -qa); do 
  echo "Stopping and deleting container $i"
  docker container stop $i
  docker container rm $i
done

i=1
echo "Launching new containers"
while [ $i -le 3 ]; do
  ssh-keygen -qR 172.17.0.$(expr $i + 1)
  docker container run -dt --name ansible0$i mstelles/multi
  i=$(expr $i + 1)
done
docker container ps
