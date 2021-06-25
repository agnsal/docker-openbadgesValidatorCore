# syntax=docker/dockerfile:1

# Copyright 2021 Agnese Salutari.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

# http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
# an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License

FROM ubuntu:20.04

MAINTAINER Agnese Salutari

RUN apt-get update && apt-get -y upgrade
RUN apt --fix-broken install && apt-get -y install python3.9 && apt-get -y install python3-pip
RUN apt-get -y install git && git clone https://github.com/IMSGlobal/openbadges-validator-core.git
RUN python3.9 -m pip install openbadges[server] && python3.9 -m pip install -r openbadges-validator-core/requirements.txt
# CMD ["python3.9", "openbadges-validator-core/openbadges/verifier/server/app.py"]

EXPOSE 5000/tcp
