#!/bin/bash

cd /miku/docker/docker_all/DOCKER/nginx   ##这是我当前的文件夹，之后会上传到云服务的对应位置 /miku/docker/docker_all/下 

###github 上传和下载
sudo docker build -t miku-nginx:1.19 .

