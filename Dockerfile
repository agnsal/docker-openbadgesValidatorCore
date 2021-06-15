# syntax=docker/dockerfile:1

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update & apt-get upgrade
RUN apt install software-properties-common && add-apt-repository ppa:deadsnakes/ppa && apt install python3.9
RUN python3.9 -m pip install Flask
RUN git clone https://github.com/IMSGlobal/openbadges-validator-core.git && cd openbadges-validator-core
RUN python3.9 -m pip install -r requirements.txt
RUN python3.9 openbadges/verifier/server/app.py

EXPOSE 5000
