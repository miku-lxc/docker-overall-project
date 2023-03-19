# 从官方基础版本构建
FROM php:7.4-fpm-buster

# 镜像信息
LABEL maintainer="miku-lin" \
    version="2023.3.0" \
    description="PHP-FPM 7.4"

# 安装install-php-extensions
#ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
##这个改了默认不执行
##提示要用copy 就用相对地址 别用绝对不然提示无文件
COPY ./install-php-extensions /usr/local/bin/

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

# 安装mysqli、pdo等PHP扩展
# 如果需要安装特定版本的扩展，可以在扩展名后加版本号，例如：redis-5.1.1
RUN chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions redis mysqli pdo_mysql pcntl gd mcrypt bcmath sockets zip

# 使用线上环境的php.ini配置文件
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
