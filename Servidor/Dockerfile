FROM ubuntu:20.04

RUN apt-get update
RUN apt -y install default-jdk
RUN apt-get -y install ant
RUN apt-get -y install automake bison flex g++ git libboost-all-dev libevent-dev libssl-dev libtool make pkg-config
RUN apt-get -y install thrift-compiler
RUN apt -y install git
WORKDIR /home/
RUN git clone https://github.com/LuisOlivo340/CalculadoraBasicaThrift.git
WORKDIR /home/CalculadoraThrift/Servidor/
RUN thrift -r --gen java ThriftCalc.thrift
RUN ant compile
EXPOSE 8080
CMD ant run