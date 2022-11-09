#!/bin/sh
list_of_containers="eager_northcutt"
containers=`docker ps -f status=running --format "{{.Names}}"`
for container in $list_of_containers
do
  if echo $containers |grep -q $container
    then  echo "$container online "
  else echo "$container offline"
    exit 1
  fi
done
exit 0

