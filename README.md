# MetroFunnel
Real-time monitoring of microservices-based software systems

The idea that has been pursued during this work is to make available to developers and the community, a specific monitoring tool for microservices, easy to install, transparent and non-intrusive.


## Log

MetroFunnel generates a log starting from the http requests exchanged on the network interface. 
The log can be analyzed, for example, through the Elastic stack, for real-time analysis.
A log line, representing the beginning and end of a microservice is the following:
![alt text](/images/log_line.png "MetroFunnel log line")


## Interpret a log
This is the basic case, a request with a correct answer.
![alt text](/images/example1.png "MetroFunnel example log 1")

False positive, we have a timeout request and a response not associated with any request but with a positive response code.
![alt text](/images/example2.png "MetroFunnel example log 2")

This is a timeout request, with no response received later; it can be either a false positive if MetroFunnel has failed to capture the answer, or a real failure if indeed the answer has never been sent.
![alt text](/images/example3.png "MetroFunnel example log 3")

Here instead, one request that it received the error code 502; in this case, the timeout was high enough to insert the answer.
![alt text](/images/example4.png "MetroFunnel example log 4")

Finally, an example of a request expired in timeout, and then the response with error code 502 is received; in this case it is not a false positive, because the answer contains an error code, both lines refer to the same failure.
![alt text](/images/example5.png "MetroFunnel example log 5")


## System Requirement

To run MetroFunnel are needed:

    Java
    libpcap
    Docker (to use the Docker version of MetroFunnel, or the Elastic Product)
 
 Within the repository there are some scripts in order to correctly run MetroFunnel and all the necessary configuration
 
## Using Standard Version

In order to use the Standard Version, run:

    install_System_Requirement.sh
 
if you want to use the Elastic Stack then:

    install_filebeat.sh
    build_elastic.sh
    
To exectute Metrofunnel:

    MetroFunnelStart.sh
 
if you want to run the Elastic Stack then:

    filebeatStart.sh
    elasticStart.sh
    

## Using Docker Version

In order to use the Docker Version, run:

    buildAll.sh

To execute Elastic Stack:

    ElasticStart.sh
 
To exectute Metrofunnel:

    MetroFunnelStart.sh
    

## User and Operating Manual
MetroFunnel displays all the available interfaces, and then requests the number of interfaces (which can be physical or virtual) that you want to monitor.
![alt text](/images/Manual 1.png "MetroFunnel Manual 1")

Next, the list of interfaces is shown again and MetroFunnel asks for the reference ID of the interface to be monitored; you must enter the ID of the network interface on which the microservices packets pass.
![alt text](/images/Manual 2.png "MetroFunnel Manual 2")

After entering the interface ID, the correct creation of the log file is shown, with its name, and then asks if you want to enter the TCP port number to filter the data; this check is made to each packet that transits and records the requests and the responses of the packets that have that TCP port number, whether it is as a source or as a destination.
![alt text](/images/Manual 3.png "MetroFunnel Manual 3")

You can enter multiple values separated by a space or enter any to capture everything without filtering.
![alt text](/images/Manual 4.png "MetroFunnel Manual 4")
![alt text](/images/Manual 5.png "MetroFunnel Manual 5")

Finally, it asks for the max time before considering an expired timed request; this value is unique for all requests, regardless of the Method and the reference URL.
If you chose to monitor multiple interfaces simultaneously, all the previous options are related to the single interface.
After having inserted everything, the program starts with the monitoring of the packets that transit on the network, showing them on the video when they receive the corresponding response or expire by timeout.
![alt text](/images/Manual 6.png "MetroFunnel Manual 6")

