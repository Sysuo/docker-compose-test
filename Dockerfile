FROM python:3

LABEL maintainer "Atsuko Kurosawa <a-kurosawa@mi-labo.co.jp>"

RUN apt-get update
RUN apt-get clean
RUN apt-get install -y apt-utils sudo curl net-tools iproute2 iputils-ping

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

# ユーザを作成
# RUN useradd polaris
# RUN echo 'polaris:polaris' |chpasswd
# RUN echo 'Defaults visiblepw'             >> /etc/sudoers
# RUN echo "polaris    ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
# ENV HOME /home/polaris
# WORKDIR /home/polaris
# USER polaris
