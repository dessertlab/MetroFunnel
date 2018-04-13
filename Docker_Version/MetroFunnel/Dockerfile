# Dockerfile: MetroFunnel

FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get install -y libpcap-dev && \
    apt-get clean

ADD libjnetpcap.so /usr/lib/
ADD libjnetpcap-pcap100.so /usr/lib/
ADD MetroFunnel.jar /home/

CMD ["java","-jar","/home/MetroFunnel.jar"]
