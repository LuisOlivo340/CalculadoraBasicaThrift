FROM ubuntu:20.04
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get -y install automake bison flex g++ git libboost-all-dev libevent-dev libssl-dev libtool make pkg-config
RUN apt-get -y install thrift-compiler
RUN apt-get install -y ruby-thrift
RUN apt -y install git
WORKDIR /home/
RUN git clone https://github.com/LuisOlivo340/CalculadoraBasicaThrift.git
#CalculadoraBasicaThrift/Cliente/
WORKDIR /home/CalculadoraBasicaThrift/Cliente/
RUN thrift -r -gen rb ThriftCalc.thrift  

EXPOSE 7130
CMD ruby CalcCliente.rb
