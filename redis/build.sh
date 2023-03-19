#!/bin/bash


 ##因为官方不带rdis的配置所以这一步是下载配置的
#wget -cP /etc/ https://raw.githubusercontent.com/antirez/redis/6.2/redis.conf
##限制之类的这里直接用下载吧
cp redis.conf /etc/

cd /miku/docker/docker_all/DOCKER/redis   ##这是我当前的文件夹，之后会上传到云服务的对应位置 /miku/docker/docker_all/下 

###github 上传和下载
sudo docker build -t miku-redis:6.2 .

rm -rf /etc/redis.conf



