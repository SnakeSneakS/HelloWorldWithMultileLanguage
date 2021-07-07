From ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN mkdir /test
ADD ./ /test
WORKDIR /test

RUN apt-get update && \
    #c, c++, etc
    apt-get -y install build-essential && \ 
    #python
    apt -y install python3 python3-pip && \
    #java
    apt install -y software-properties-common &&\
    apt-get -y install default-jre && \
    #go
    apt -y install golang &&\
    #Csharp
    apt-get -y install mono-mcs &&\
    #nodejs
    apt-get -y install nodejs



