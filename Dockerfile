#taken from https://github.com/ozgunawesome/webNUT/blob/main/Dockerfile
FROM ubuntu
RUN  apt-get -y update
RUN  apt-get -y install python3 python3-dev python3-pip
RUN  pip install setuptools
WORKDIR /application
COPY . /application
RUN pip install -e . 
RUN pip3 install -e .
EXPOSE 6543
CMD pserve production.ini --reload