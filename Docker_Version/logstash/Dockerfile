#Dockerfile: MetroFunnel-Logstash

FROM docker.elastic.co/logstash/logstash-oss:6.0.0

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

ADD logstash.conf /usr/share/logstash/pipeline/


