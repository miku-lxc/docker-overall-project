# 从官方基础版本构建
FROM redis:6.2-buster

# 镜像信息
LABEL maintainer="miku-lin" \
    version="2023.3.0" \
    description="Redis 6.2"

# 官方镜像默认是没有redis.conf配置文件的，如果需要配置文件，需要自己编写或者到网络上下载
# 6.2版本配置文件下载地址：https://raw.githubusercontent.com/antirez/redis/6.2/redis.conf
# 把宿主机上已下载好的配置文件复制到容器里去
COPY redis.conf /usr/local/etc/redis/redis.conf

# 设置系统时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装常用命令工具包，根据自己的实际需要情况进行安装
# vim: vi、vim
# procps: ps
# iputils-ping: ping
# less: less
# net-tools: netstat
# iproute2: ss
RUN apt-get update && apt-get install -y --no-install-recommends vim procps iputils-ping less net-tools iproute2

# 以指定配置文件的方式启动redis
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
