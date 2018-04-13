#!/bin/bash

docker build -t mylogstash --rm ./logstash/;
docker build -t myelasticsearch --rm ./elasticsearch/;
docker build -t mykibana --rm ./kibana/;
