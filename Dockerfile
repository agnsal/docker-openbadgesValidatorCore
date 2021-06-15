# syntax=docker/dockerfile:1

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update
RUN apt-get upgrade
RUN apt install wget
RUN wget https://www.python.org/ftp/python/3.9.4/Python-3.9.4.tgz && tar xzf Python-3.9.4.tgz && cd Python-3.9.4
RUN ./configure --enable-optimizations && make altinstall
RUN rm -f /opt/Python-3.9.4.tgz 
RUN python3.9 -m pip install Flask
RUN git clone https://github.com/IMSGlobal/openbadges-validator-core.git && cd openbadges-validator-core
RUN python3.9 -m pip install -r requirements.txt
RUN python3.9 openbadges/verifier/server/app.py

EXPOSE 5000
