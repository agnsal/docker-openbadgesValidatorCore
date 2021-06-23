# syntax=docker/dockerfile:1

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update && apt-get -y upgrade
RUN apt --fix-broken install && apt-get -y install python3.8 && apt-get -y install python3-pip
RUN apt-get -y install git && git clone https://github.com/IMSGlobal/openbadges-validator-core.git
RUN python3.8 -m pip install openbadges[server] && python3.8 -m pip install -r openbadges-validator-core/requirements.txt
CMD ["python3.8", "openbadges-validator-core/openbadges/verifier/server/app.py"]

EXPOSE 5000/tcp
