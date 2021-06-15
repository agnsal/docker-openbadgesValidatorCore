# syntax=docker/dockerfile:1

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update && apt-get -y upgrade
RUN apt --fix-broken install && apt-get -y install python3.9 && apt-get -y install python3-pip
RUN python3.9 -m pip install Flask
RUN apt-get -y install git && git clone https://github.com/IMSGlobal/openbadges-validator-core.git
RUN cd openbadges-validator-core && python3.9 -m pip install -r requirements.txt
RUN python3.9 openbadges/verifier/server/app.py

EXPOSE 5000
