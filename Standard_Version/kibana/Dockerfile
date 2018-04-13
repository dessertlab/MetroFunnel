#Dockerfile: MetroFunnel-Kibana

FROM docker.elastic.co/kibana/kibana-oss:6.0.0

RUN rm /usr/share/kibana/config/kibana.yml
ADD kibana.yml /usr/share/kibana/config/kibana.yml
