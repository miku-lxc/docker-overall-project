# 从官方基础版本构建
FROM nginx:1.19

# 镜像信息
LABEL maintainer="miku-lin" \
    version="2023.3.0" \
    description="Nginx 1.19"

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
