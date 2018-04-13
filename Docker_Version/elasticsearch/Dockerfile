#Dockerfile: MetroFunnel-ElasticSearch

FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.0.0

RUN rm /usr/share/elasticsearch/config/elasticsearch.yml
ADD elasticsearch.yml /usr/share/elasticsearch/config/
RUN chown elasticsearch:elasticsearch /usr/share/elasticsearch/config/elasticsearch.yml

