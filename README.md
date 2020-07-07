# Hello World App on Webpsphere Liberty Container

In this lab, we will deploy a Hello World application on Webpsphere Liberty Container


# Installation

Docker Engine

https://docs.docker.com/engine/install/ 


Docker Toolbox (Windows 7)

https://github.com/docker/toolbox/releases


## Please clone this git repository to your local machine with installed docker engine / docker toolbox

For Docker Toolbox, please open Docker Quickstart Terminal.

Right click the terminal, and select "Properties"
- enable QuickEdit Mode on Options tab
- adjust Window Size on Layout tab



Git Clone l-was Reporsitory

    $ git clone https://github.com/TechNetDemo/l-was.git
    
    $ cd l-was
 
 
# Hands on Lab

- [Pull Webpsphere Liberty Image](#pull-webpsphere-liberty-image)
- [Build Hello World App Image](#build-hello-world-app-image)
- [Deploy Hello World App Container](#deploy-hello-world-app-container)
- [Verification and Monitoring](#verification-and-monitoring)
- [Visit Hello World App](#visit-hello-world-app)
- [Operational Process](#operational-process)


## Pull Webpsphere Liberty Image

websphere-liberty - Ubuntu images with IBM Java

ibmcom/websphere-liberty - Red Hat's Universal Base Image with additional java options  

    $ docker pull ibmcom/websphere-liberty:latest
    
    
 List Docker Images on local
 
    $ docker images
    
    
## Build Hello World App Image    
    
The format of docker images consist of username/image_name:tag_name

In Public Docker Registry, image naming convention is restricted to a two level hierarchy like username/image_name.

Docker Tag represents a specific version of image. It’s not mandatory to specify docker tag, but it will assign "latest" as tag_name when you leave it blank.


    docker build -t username/image_name:tag_name .
    
    $ docker build -t l-was/sample:1.0 .
    
    
## Deploy Hello World App Container

Deploy Hello World App with custom Hello World App Image.

As 9080 and 9443 ports may be occupied, we should publish cotainer port by mapping
- 6080 (docker host) to 9080 (docker container)
- 6443 (docker host) to 9443 (docker container)
        
            
		$ docker run -d --name l-was -p 6080:9080 -p 6443:9443 l-was/sample:1.0
  
  
## Verification and Monitoring

Get Running Docker Container

    $ docker ps


Check Container by Docker Logs

    $ docker logs l-was --follow
    

Display Running Processes of Container

    $ docker top l-was
    
    
Display Docker Container(s) Resource Usage Statistics

    $ docker stats --no-stream
    
    
Get Docker Toolbox VM IP

    $ docker-machine ip default
    

## Visit Hello World App

Open Web browser and go to http://<Host IP / Docker Toolbox VM IP>:6080/sample


## Operational Process

Stop Hello World Container

    $ docker stop l-was
    
    $ docker ps
    
Start Hello World Container

    $ docker start l-was
    
    $ docker ps


# Other Information
    
## Docker Container User Group

user: 1001

group: 0

## Exposed Port 

HTTP: 9080

HTTPS: 9443

## Keystore 

	/config/configDropins/defaults/keystore.xml


## Dockerfile

	FROM websphere-liberty:kernel
	
	COPY --chown=1001:0  Sample1.war /config/dropins/   # App Location
	
	COPY --chown=1001:0  server.xml /config/  # Config Location
	
	RUN configure.sh # download runtime features from the online repository (kernel image version only)


For more details, please visit https://github.com/WASdev/ci.docker#building-an-application-image


