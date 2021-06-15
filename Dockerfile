# syntax=docker/dockerfile:1

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update & apt-get upgrade
RUN wget https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz && tar -xf Python-3.9.0.tar.xz && cd Python-3.9.0 && ./configure && make altinstall
RUN python3.9 -m pip install Flask
RUN git clone https://github.com/IMSGlobal/openbadges-validator-core.git && cd openbadges-validator-core
RUN python3.9 -m pip install -r requirements.txt
RUN python3.9 openbadges/verifier/server/app.py

EXPOSE 5000
