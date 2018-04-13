#!/bin/bash

wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.0.0-linux-x86_64.tar.gz;
tar -zxvf filebeat-6.0.0-linux-x86_64.tar.gz -C ./;
mv ./filebeat-6.0.0-linux-x86_64 ./filebeat;
yes | cp -rf ./filebeat_configuration/filebeat.yml ./filebeat/;
rm ./filebeat-6.0.0-linux-x86_64.tar.gz;
