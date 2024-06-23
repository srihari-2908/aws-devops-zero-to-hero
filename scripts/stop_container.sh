#!/bin/bash
set -e

echo "Hello World"
count=`docker ps|grep python|wc -l`

if [ $count -gt 0 ];then
ID=`docker ps|grep python|awk -F " " '{print $1}'`
docker stop $ID
else
echo "No Container are running"
fi
