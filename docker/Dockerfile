FROM ubuntu
ENV IDE_USERNAME Brook3
ENV IDE_PASSWD Brook3
#提供一些作者的信息
MAINTAINER ${IDE_USERNAME} <1157925734@qq.com>
#更改ubuntu源为国内源
RUN sed -i "s/archive.ubuntu./mirrors.aliyun./g" /etc/apt/sources.list
RUN apt-get update
#安装 ssh 服务
RUN apt-get install -y openssh-server
RUN apt-get install -y git
RUN apt-get install -y tmux
RUN apt-get install -y vim
#开放端口
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

RUN useradd --create-home --no-log-init --shell /bin/bash ${IDE_USERNAME} \
    && adduser ${IDE_USERNAME} sudo \
    && echo "${IDE_USERNAME}:${IDE_PASSWD}" | chpasswd
USER ${IDE_USERNAME}
WORKDIR /home/${IDE_USERNAME}
