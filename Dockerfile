FROM ubuntu:latest
USER root
LABEL MAINTAINER=AChar95

RUN apt -y update;
RUN apt -y upgrade;
RUN apt install -y nodejs npm;

COPY . /src

RUN cd /src; npm install

EXPOSE 8080

CMD cd /src && node ./app.js