#!/bin/bash

COM1="./filebeat/filebeat -e -c ./filebeat/filebeat.yml"

gnome-terminal -e "bash -c \"echo filebeat;$COM1; exec bash\"";
