#!/bin/bash

COM1="docker run --net=host --privileged -v MetroFunnelData:/MetroFunnelData -it --rm --name=metroFunnel metrofunnelimage"

gnome-terminal -e "bash -c \"$COM1; exec bash\"";
