#!/bin/bash

COM1="docker run --rm --net=host --privileged -v MetroFunnelData:/MetroFunnelData --name=filebeat1 myfilebeat"
COM2="docker run --rm --net=host --privileged --name logstash1 -p 5044:5044 mylogstash"
COM3="docker run --rm --net=host --privileged --name elasticsearch1 -p 9200:9200 myelasticsearch"
COM4="docker run --rm --net=host --privileged --name kibana1 -p 5601:5601 mykibana"


gnome-terminal -e "bash -c \"echo filebeat;$COM1; exec bash\"";
sleep 10;
gnome-terminal -e "bash -c \"echo logstash;$COM2; exec bash\"";
sleep 30;
gnome-terminal -e "bash -c \"echo elasticsearch;$COM3; exec bash\"";
sleep 60;
gnome-terminal -e "bash -c \"echo kibana;$COM4; exec bash\"";


#command to use in case of vm.max_map_count error
#sudo sysctl -w vm.max_map_count=262144
