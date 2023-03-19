# 从官方基础版本构建
FROM mysql:5.7

# 镜像信息
LABEL maintainer="miku-lin" \
    version="2023.3.0" \
    description="MySQL 5.7"

# 设置系统时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装常用命令工具包，根据自己的实际需要情况进行安装
# vim: vi、vim  必须要安装gredit也可以修改文件
# procps: ps 
# iputils-ping: ping
# less: less
# net-tools: netstat
# iproute2: ss
RUN apt-get update && apt-get install -y --no-install-recommends vim procps iputils-ping less net-tools iproute2
