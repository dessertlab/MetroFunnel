#Dockerfile: MetroFunnel-Filebeat

FROM docker.elastic.co/beats/filebeat:6.0.0
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN chmod go-w /usr/share/filebeat/filebeat.yml
USER filebeat
