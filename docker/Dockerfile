FROM ubuntu
ENV IDE_USERNAME Brook3
ENV IDE_PASSWD Brook3
WORKDIR /root
#提供一些作者的信息
MAINTAINER ${IDE_USERNAME} <1157925734@qq.com>
#更改ubuntu源为国内源
RUN sed -i "s/archive.ubuntu./mirrors.aliyun./g" /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y tmux
RUN apt-get install -y vim
#开放端口
EXPOSE 22
