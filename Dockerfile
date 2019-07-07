FROM ubuntu:18.04

LABEL maintainer "Atsuko Kurosawa <a-kurosawa@mi-labo.co.jp>"

RUN apt-get update
RUN apt-get clean
RUN apt-get install -y apt-utils sudo curl net-tools iproute2, iputils-ping

# ユーザを作成
RUN useradd polaris
RUN echo 'polaris:polaris' |chpasswd
RUN echo 'Defaults visiblepw'             >> /etc/sudoers
RUN echo "polaris    ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/polaris
WORKDIR /home/polaris
USER polaris

# docker インストール
RUN sudo apt-get -y install \
    apt-transport-https gnupg-agent \
    ca-certificates software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN sudo apt-get update
RUN sudo apt-get -y install docker-ce

