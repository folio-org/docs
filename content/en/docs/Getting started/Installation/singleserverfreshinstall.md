---
title: "Single server: fresh install"
linkTitle: "Single server: fresh install"
weight: 10
description: 
tags: ["subtopic"]
---
A single server installation is intended for a non-production environment, for demo and testing purposes. For a production installation some kind of orchestration should be applied.

See also [how to upgrade an existing single server installation]({{< ref "singleserverupgrade.md" >}}) from the Juniper release.

![FOLIO Single Server components](/img/single_docker_compose.png)

A FOLIO instance is divided into two main components.  The first component is Okapi, the gateway.  The second component is the UI layer which is called Stripes.  The single server with containers installation method will install both.

This documentation shows how to install a platform-complete distribution of Lotus.

Throughout this documentation, the sample tenant “diku” will be used. Replace with the name of your tenant, as appropriate.

## System requirements

**Software requirements**

| **Requirement**      | **Recommended Version**                    |
|----------------------|--------------------------------------------|
| Operating system     | Ubuntu 20.04.02 LTS (Focal Fossa) 64-bits  |
| Java                 | OpenJDK 11                                 |
| PostgreSQL           | PostgreSQL 12                              |

**Hardware requirements**

| **Requirement** | **FOLIO Base Apps** | **FOLIO Extended Apps** |
|-----------------|---------------------|-------------------------|
| RAM             | 24GB                | 40GB                    |
| CPU             | 4                   | 8                       |
| HD              | 100 GB SSD          | 350 GB SSD              |


## Installing Okapi

### Okapi requirements

1. Update the APT cache.

```
sudo apt update
```

2. Install Java 11 and verify that Java 11 is the system default.
```
sudo apt -y install openjdk-11-jdk
sudo update-java-alternatives --jre-headless --jre --set java-1.11.0-openjdk-amd64
```

3. Import the PostgreSQL signing key, add the PostgreSQL apt repository and install PostgreSQL.
```
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main"
sudo apt update
sudo apt -y install postgresql-12 postgresql-client-12 postgresql-contrib-12 libpq-dev
```

4. Configure PostgreSQL to listen on all interfaces and allow connections from all addresses (to allow Docker connections).

* Edit (via sudo) the file **/etc/postgresql/12/main/postgresql.conf** to add line **listen_addresses = '\*'** in the "Connection Settings" section.
* In the same file, increase **max_connections** (e.g. to 500)
* Edit (via sudo) the file **/etc/postgresql/12/main/pg_hba.conf** to add line **host all all 0.0.0.0/0 md5**
* Restart PostgreSQL with command **sudo systemctl restart postgresql**

5. Import the Docker signing key, add the Docker apt repository and install the Docker engine.
```
sudo apt -y install apt-transport-https ca-certificates gnupg-agent software-properties-common
wget --quiet -O - https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
```

6. Configure Docker engine to listen on network socket.

- Create a configuration folder for Docker if it does not exist.  

```
sudo mkdir -p /etc/systemd/system/docker.service.d
```

- Create a configuration file **/etc/systemd/system/docker.service.d/docker-opts.conf** with the following content.

```
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://127.0.0.1:4243
```

- Restart Docker.

```
sudo systemctl daemon-reload
sudo systemctl restart docker
```

7. Install docker-compose.

Follow the instructions from official documentation for [docker](https://docs.docker.com/compose/install/). The instructions may vary depending on the architecture and operating system of your server, but in most cases the following commands will work.

```
sudo curl -L \
  "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" \
  -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

8. Install Apache Kafka and Apache ZooKeeper.  Apache Kafka and Apache ZooKeeper are required by FOLIO [mod-pubsub](https://github.com/folio-org/mod-pubsub).  Both Kafka and ZoopKeepr are installed below using docker-compose.

Take into account that you have to change the **KAFKA_ADVERTISED_LISTENERS** value for the private IP of your server, instead of 10.0.2.15 for a Vagrant box.

```
mkdir ~/folio-install
cd folio-install
vim docker-compose-kafka-zk.yml
```

Insert this content into the file. Change the IP Address in KAFKA_ADVERTISED_LISTENERS to the local IP of your server on which you run Kafka:
```
version: '2'
services:
  zookeeper:
    image: wurstmeister/zookeeper
    container_name: zookeeper
    restart: always
    ports:
      - "2181:2181"
  kafka:
    image: wurstmeister/kafka
    container_name: kafka
    restart: always
    ports:
      - "9092:9092"
      - "29092:29092"
    environment:
      KAFKA_LISTENERS: INTERNAL://:9092,LOCAL://:29092
      KAFKA_ADVERTISED_LISTENERS: INTERNAL://<YOUR_IP_ADDRESS>:9092,LOCAL://localhost:29092
      KAFKA_LISTENER_SECURITY_PROTOCOL_MAP: LOCAL:PLAINTEXT,INTERNAL:PLAINTEXT
      KAFKA_INTER_BROKER_LISTENER_NAME: INTERNAL
      KAFKA_AUTO_CREATE_TOPICS_ENABLE: "true"
      KAFKA_ZOOKEEPER_CONNECT: zookeeper:2181
      KAFKA_BROKER_ID: 1
      KAFKA_LOG_RETENTION_BYTES: -1
      KAFKA_LOG_RETENTION_HOURS: -1
```

**Note**: The IP address <YOUR_IP_ADDRESS> should match the private IP of your server.  This IP address should be reachable from Docker containers.  Therefore, you can not use localhost.  

- For a Vagrant installation, the IP address should be 10.0.2.15.

You can use the /**ifconfig** command in order to determine the private IP. 

```
sudo mkdir /opt/kafka-zk
sudo cp ~/folio-install/docker-compose-kafka-zk.yml /opt/kafka-zk/docker-compose.yml
cd /opt/kafka-zk
sudo docker-compose up -d
```

### Create a database and role for Okapi

You will need to create one database in PostgreSQL to persist the Okapi configuration.

1. Log into the PostgreSQL server as a superuser.

```
sudo su -c psql postgres postgres
```

2. Create a database role for Okapi and a database to persist Okapi configuration.
```
CREATE ROLE okapi WITH PASSWORD 'okapi25' LOGIN CREATEDB;
CREATE DATABASE okapi WITH OWNER okapi;
```

3. Create a database role and database to persist tenant data.

```
CREATE ROLE folio WITH PASSWORD 'folio123' LOGIN SUPERUSER;
CREATE DATABASE folio WITH OWNER folio;
```

4. Exit psql with **\q** command

### Install and configure Okapi

Once you have installed the requirements for Okapi and created a database, you can proceed with the installation.  Okapi is available as a Debian package that can be easily installed in Debian-based operating systems. You only need to add the official APT repository to your server.

1. Import the FOLIO signing key, add the FOLIO apt repository and install okapi.

```
wget --quiet -O - https://repository.folio.org/packages/debian/folio-apt-archive-key.asc | sudo apt-key add -
sudo add-apt-repository "deb https://repository.folio.org/packages/ubuntu focal/"
sudo apt update
sudo apt-get -y --allow-change-held-packages install okapi=4.13.2-1 # R1-2022 Okapi version
sudo apt-mark hold okapi
```

Please note that the R1-2022 FOLIO release version of Okapi is 4.13.2-1.  If you do not explicitly set the Okapi version, you will install the latest Okapi release.  There is some risk with installing the latest Okapi release.  The latest release may not have been tested with the rest of the components in the official release.

2. Configure Okapi to run as a single node server with persistent storage.

- Edit (via sudo) file **/etc/folio/okapi/okapi.conf** to reflect the following changes: 

```
role="dev"
port_end="9340"
host="<YOUR_IP_ADRESS>"
storage="postgres"
okapiurl="http://<YOUR_IP_ADDRESS>:9130"
docker_registries -- See explanation in okapi.conf file. Default is unauthenticated.
log4j_config=“/etc/folio/okapi/log4j2.properties”
```

**Note**: The properties **postgres_host**, **postgres_port**, **postgres_username**, **postgres_password**, **postgres_database** should be configured in order to match the PostgreSQL configurations made previously.

Edit (via sudo) log4j2.properties. Make sure Okapi logs into a file and define a RollingFileAppender :
````
appenders = f

appender.f.type = RollingFile
appender.f.name = File
appender.f.fileName = /var/log/folio/okapi/okapi.log
appender.f.filePattern = /var/log/folio/okapi/okapi-%i.log
appender.f.layout.type = PatternLayout
appender.f.layout.pattern = %d{HH:mm:ss} [$${FolioLoggingContext:requestid}] [$${FolioLoggingContext:tenantid}] [$${FolioLoggingContext:userid}] [$${FolioLoggingContext:moduleid}] %-5p %-20.20C{1} %m%n
appender.f.policies.type = Policies
appender.f.policies.size.type = SizeBasedTriggeringPolicy
appender.f.policies.size.size = 200MB
appender.f.strategy.type = DefaultRollOverStrategy
appender.f.strategy.max = 10

rootLogger.level = info
rootLogger.appenderRefs = f
rootLogger.appenderRef.f.ref = File
````

3. Restart Okapi

```
sudo systemctl daemon-reload
sudo systemctl restart okapi
```
The Okapi log is at **/var/log/folio/okapi/okapi.log**.


4. Pull module descriptors from the central registry.

A module descriptor declares the basic module metadata (id, name, etc.), specifies the module's dependencies on other modules (interface identifiers to be precise), and reports all "provided" interfaces. As part of the continuous integration process, each module descriptor  is published to the FOLIO Registry at https://folio-registry.dev.folio.org.

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" \
   -d '{ "urls": [ "https://folio-registry.dev.folio.org" ] }' \
  http://localhost:9130/_/proxy/pull/modules
```
Okapi log should show something like

````
INFO  ProxyContext         283828/proxy REQ 127.0.0.1:51424 supertenant POST /_/proxy/pull/modules  okapi-4.13.2
INFO  PullManager          Remote registry at https://folio-registry.dev.folio.org is version 4.13.2
INFO  PullManager          pull smart
  ...
INFO  PullManager          pull: 3466 MDs to insert
INFO  ProxyContext         283828/proxy RES 200 93096323us okapi-4.13.2 /_/proxy/pull/modules
````

Okapi is up and running!


## Create a new tenant

1. Switch to a working directory.

```
cd ~
```

2. Create a tenant.json file:
```
{
  "id" : "diku",
  "name" : "Datalogisk Institut",
  "description" : "Danish Library Technology Institute"
}
```

3. Post the tenant initialization to Okapi.
```
curl -w '\n' -D - -X POST -H "Content-type: application/json" \
  -d @tenant.json \
  http://localhost:9130/_/proxy/tenants
```

**Note**:  In this installation guide, the Datalogisk Institut is used as an example, but you should use the information for your organization.  Take into account that you have to use the id of your tenant in the next steps.

3. Enable the Okapi internal module for the tenant

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" \
  -d '{"id":"okapi"}' \
  http://localhost:9130/_/proxy/tenants/diku/modules
```
## Install Elasticsearch 

You have to install elasticsearch (ES) in order to be able to do queries. You need to point the related modules, at least *mod_pubsub* and *mod_search* to your ES installation (this will be described further down).

Follow this guide to install a three-node Elasticsearch cluster on a Single Server: [Installation of Elasticsearch](https://wiki.folio.org/display/SYSOPS/Installation+of+Elasticsearch). 

*Note for completeness:* To make use of the full capabilities of FOLIO, it is required to install more  services which do not generically belong to FOLIO. For example, if you want to make use of FOLIO's data export functionality, you have to install a minio Server or make use of an Amazon S3 bucket. The installation of these services and the configuration of FOLIO to connect to these services is not part of this guide. They might be included in later versions of this guide for some commonly employed services.

## Install a Folio Backend

1. Post data source information to the Okapi environment for use by deployed modules. The Okapi environment variables will be picked up by every module that makes use of them during deployment. Supply at least these environment variables:
```
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"DB_HOST\",\"value\":\"<YOUR_IP_ADDRESS>\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"DB_PORT\",\"value\":\"5432\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"DB_DATABASE\",\"value\":\"folio\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"DB_USERNAME\",\"value\":\"folio\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"DB_PASSWORD\",\"value\":\"folio123\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_HOST\",\"value\":\"<YOUR_IP_ADDRESS>\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_PASSWORD\",\"value\":\"s3cret\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_URL\",\"value\":\"http://<YOUR_IP_ADDRESS>:9200\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_USERNAME\",\"value\":\"elastic\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"INITIAL_LANGUAGES\",\"value\":\"eng, ger, swe\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"KAFKA_HOST\",\"value\":\"<YOUR_IP_ADDRESS>\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"KAFKA_PORT\",\"value\":\"9092\"}" http://localhost:9130/_/env;
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"OKAPI_URL\",\"value\":\"http://<YOUR_IP_ADDRESS>:9130\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"SYSTEM_USER_PASSWORD\",\"value\":\"pub-sub\"}" http://localhost:9130/_/env
```

**Note**: Make sure that you use your private IP for the properties **DB_HOST**, **KAFKA_HOST** and **OKAPI_URL**. (In a Vagrant environment, 10.0.2.15 should work.)  Change passwords as you like, but make sure that you use the same passwords in your installations of the database and elasticsearch. **SYSTEM_USER_PASSWORD** will be used by mod-pubsub and mod-search. It needs to be the same as those used for the system users  *system-user*, *pub-sub* and *mod-search* (and potentially more system generated users). 
Set the **ELASTICSEARCH_\*** variables so that they point to your Elasticsearch installation.

You may at this point also want to set environment variables for modules which are not part of Okapi's global env vars. Follow these instructions [Change Environment Variables of a Module](https://wiki.folio.org/display/SYSOPS/Change+Environment+Variables+of+a+Module) (cf. the section named "When the module has not yet been deployed"). 

Confer the module documentations on github to learn about configuration options for the modules by setting environment variables. For example, for mod-search, look at https://github.com/folio-org/mod-search#environment-variables .
You can also find a list of environment variables for each module at the Overview - Metadata section of the module's page in Folio org’s Dockerhub. For example, for mod-search, this is at https://hub.docker.com/r/folioorg/mod-search.

2. Check out platform-complete.

- Clone the repository

```
cd $HOME
git clone https://github.com/folio-org/platform-complete
cd platform-complete
```
- Checkout the latest stable branch of the repository (one which has undergone bugfest or hotfix testing)

```
git checkout R1-2022-hotfix-2
```


3. Deploy and enable the backend modules.


### Deploy the backend modules

Deploy all backend modules of the release with a single post to okapi’s install endpoint. This will deploy and enable all backend modules. Start with a simulation run:

````
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
````
The system will show you what it will do. It will also enable dependent frontend modules (which may not be of a release version). 

Now, actually deploy and enable the backend modules.

Note: Edit the following to  "loadSample%3Dtrue" instead if you want to load some reference data (this will populate your inventory with sample data, which might be unwanted if you want to later migrate your own inventory data):
```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=true\&preRelease=false\&tenantParameters=loadReference%3Dtrue%2CloadSample%3Dfalse
```

This will pull the Docker images from Docker Hub and spin up a container on your host for each backend module. 

Progress can be followed in the Okapi log at /var/log/folio/okapi/okapi.log

*This will run for 15 minutes or so.*

If that fails, remedy the error cause and try again until the post succeeds. 

Check, what is in your Discovery:

```
curl -w '\n' -D - http://localhost:9130/_/discovery/modules | grep srvcId
```

There should be 65 modules in your Okapi discovery - those which are in okapi-install.json - if all went well.

Check, what Docker containers are running on your host:

```
sudo docker ps --all | grep mod- | wc
```

This should also show the number 65.

Get a list of backend modules that have now been enabled for your tenant:
````
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep mod- | wc
````

There should be 65 of these as well.

Now you have installed a complete FOLIO backend. 
**Congratulations !**


The backend of the new tenant is ready.  
Now, you have to set up a Stripes instance for the frontend of the tenant, create a superuser for the tenant and optionally secure Okapi.


## Install the frontend, Folio Stripes

You have an Okapi instance running, you can proceed to install Stripes.  Stripes is bundled and deployed on a per tenant basis. 
Install Stripes and nginx in a Docker container. Use the docker file of platform-complete.

### Configure the docker file and the nginx webserver

```
  cd ~/platform-complete
  edit docker/Dockerfile
    ARG OKAPI_URL=http(s)://<YOUR_DOMAIN_NAME>/okapi
    ARG TENANT_ID=diku # Or change to your tenant's name
```

<YOUR_DOMAIN_NAME> is usually your server name (host name plus domain), unless you are doing a redirect from some other domain. The subpath /okapi of your domain name will be redirected to port 9130 below, in your nginx configuration. Thus, the Okapi port 9130 does not need to be released to outside of your network.
  
Edit docker/nginx.conf to include this content below.  Replace the server name and IP address with what is in the original version of nginx.conf:

```   
server {
  listen 80;
  server_name <YOUR_SERVER_NAME>;
  charset utf-8;
  access_log  /var/log/nginx/host.access.log  combined;

  # front-end requests:
  # Serve index.html for any request not found
  location / {
    # Set path
    root        /usr/share/nginx/html;
    index       index.html index.htm;
    include mime.types;
    types {
      text/plain lock;
    }
    try_files $uri /index.html;
  }

  # back-end requests:
  location /okapi {
    rewrite ^/okapi/(.*) /$1 break;
    proxy_pass http://<YOUR_IP_ADDRESS>:9130/;
  }
}
```

<YOUR_SERVER_NAME> should be the real name of your server in your network. <YOUR_SERVER_NAME> should consist of host name plus domain name, e.g. myserv.mydomain.edu. If you are not doing a redirect <YOUR_SERVER_NAME> equals to <YOUR_DOMAIN_NAME>.


**Note**: If you want to host multiple tenants on a server, you can configure NGINX to either open a new port for each tenant or set up different paths on the same port (e.g. /tenat1, /tenant2).

Edit the url and tenant in stripes.config.js. The url will be requested by a FOLIO client, thus a browser. Make sure that you use the public IP or domain of your server. Use http only if you want to access your FOLIO installation only from within your network.

```
  edit stripes.config.js
      okapi: { 'url':'http(s)://<YOUR_DOMAIN_NAME>/okapi', 'tenant':'diku' },
```


You might also edit branding in stripes.config.js, e.g. add your own logo and favicon as desired. Edit these lines:

```
  branding: {
    logo: {
      src: './tenant-assets/mybib.gif',
      alt: 'My Folio Library',
    },
    favicon: {
      src: './tenant-assets/mybib_icon.gif'
    },
  }
```


### Build the Docker container

Build the docker container which will contain stripes and nginx:
  
```
  sudo su
  docker build -f docker/Dockerfile --build-arg OKAPI_URL=http://<YOUR_DOMAIN_NAME>/okapi --build-arg TENANT_ID=diku -t stripes .
Sending build context to Docker daemon  1.138GB
Step 1/19 : FROM node:15-alpine as stripes_build
...
Step 19/19 : ENTRYPOINT ["/usr/bin/entrypoint.sh"]
 ---> Running in a47dce4e3b3e
Removing intermediate container a47dce4e3b3e
 ---> 48a532266f21
Successfully built 48a532266f21
Successfully tagged stripes:latest
```

This will run for approximately 15 minutes.

### Make sure nginx is not already running on your VM

```
sudo service nginx stop
```

You will get an error if it was not already running, which is fine.

### Make sure nothing else is running on port 80.

```
sudo apt install net-stat
netstat -anpe | grep ":80"
```

You should get no results.

### Start the Docker container

Redirect port 80 from the outside to port 80 of the docker container. (When using SSL, port 443 has to be redirected.)
  
```
  nohup docker run --name stripes -d -p 80:80 stripes
```
  
### (Optionally) Log in to the Docker container
  Check if your config file looks o.k. and follow the access log inside the container:
  
```
  docker exec -it <container_id> sh
  vi /etc/nginx/conf.d/default.conf
  
  tail -f /var/log/nginx/host.access.log
```
### Exit sudo

```
    exit
```

### Enable the frontend modules for your tenant

Use the parameter *deploy=false* of Okapi's install endpoint for the frontend modules and post the complete list of modules *install.json* to the install endpoint. This will enable all modules of the release version for your tenant.

First, simulate what will happen:
```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
```

Then, enable all modules for your tenant:

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=false\&preRelease=false\&tenantParameters=loadReference%3Dfalse
```
Get a list of modules which have been enabled for your tenant:

````
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep id | wc
````

There should be 131 modules enabled.

This number is the sum of the following:

56 Frontend modules (folio_\*)
9 Edge modules
65 Backend modules (R1-2022) (mod-\*)
1 Okapi module (4.13.2)
These are all R1 (Lotus) modules.

You have installed all modules now. Check again what containers are running in docker:
````
sudo docker ps --all | wc
````

This should show 72 containers running.

The following containers are running on your system, but do not contain backend modules:

- Stripes
- 3 times Elasticsearch
- Kafka
- Zookeper

In sum, these are 6 containers which do not run backend modules. Also subtract the header line (of “docker ps”), and you will arrive at 
72 - 7 = 65 containers which run backend modules .


## Create a superuser

You need to create a superuser for your tenant in order to be able to administer it.  This is a multi step process and the details can be found in the (Okapi documentation) [https://github.com/folio-org/okapi/blob/master/doc/guide.md#securing-okapi]. You can use a PERL script to execute these steps automatically.   You only need to provide the tenant id, a username/password for the superuser and the URL of Okapi.

Install gcc on Ubuntu 20 (prerequisite to install Perl modules from cpan)
```
sudo apt install gcc
gcc --version
gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0

sudo apt install make
```

Install prerequiste Perl modules
```
sudo cpan install LWP.pm
sudo cpan install JSON.pm
sudo cpan install UUID::Tiny
```

Use this Perl script to create a superuser 
[https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/bootstrap-superuser.pl ]:
```
wget "https://raw.githubusercontent.com/folio-org/folio-install/master/runbooks/single-server/scripts/bootstrap-superuser.pl"
perl bootstrap-superuser.pl \
  --tenant diku --user diku_admin --password admin \
  --okapi http://localhost:9130
```

Now Stripes is running on port 80 (or 443, if you configured SSL) and you can open it using a browser. 
Go to http(s)://<YOUR_HOST_NAME>/.
Log in with the credentials of the superuser that you have created.

## Create Elasticsearch Index
*Note* : You might want to defer creating the ES index to a point of time after you have migrated some data to your freshly created FOLIO instance. If you have loaded sample data above and do not plan to migrate data, then you should create the index now.

[*Note aside* : This section follows https://github.com/folio-org/mod-search#recreating-elasticsearch-index ]

### Create Elasticsearch index for the first time
Assign the following permission to user diku_admin:
    search.index.inventory.reindex.post (Search - starts inventory reindex operation)
Use the "Users" app of the UI.
    
Get a new Token:
````
export TOKEN=$( curl -s -S -D - -H "X-Okapi-Tenant: diku" -H "Content-type: application/json" -H "Accept: application/json" -d '{ "tenant" : "diku", "username" : "diku_admin", "password" : "admin" }' http://localhost:9130/authn/login | grep -i "^x-okapi-token: " )
curl -w '\n' -D - -X POST -H "$TOKEN" -H "X-Okapi-Tenant: diku" -H "Content-type: application/json" -d '{ "recreateIndex": true, "resourceName": "instance" }' http://localhost:9130/search/index/inventory/reindex
HTTP/1.1 200 OK
vary: origin
Content-Type: application/json
Date: Fri, 22 Jul 2022 19:00:00 GMT
transfer-encoding: chunked

{"id":"02c8e76a-0606-43f2-808e-86f3c48b65c6","jobStatus":"In progress","submittedDate":"2022-07-22T19:00:00.000+00:00"}
````

Follow *okapi.log*. You will see a lot of logging:
/inventory-view RES 200 mod-inventory-storage ...
  Posting to the endpoint /search/index/inventory/reindex causes actions on all 3 elasticsearch containers (nodes). 
Indexing of 200,000 instances takes 5-6 minutes.

### Monitoring the reindex process

(This section follows https://github.com/folio-org/mod-search#monitoring-reindex-process .)

There is no end-to-end monitoring implemented yet, however it is possible to monitor it partially. In order to check how many records published to Kafka topic use inventory API. Instead of the id "02c8e76a-0606-43f2-808e-86f3c48b65c6" use the id that has been reported by your post to /search/index/inventory/reindex above:
````
curl -w '\n' -D - -X GET -H "$TOKEN" -H "X-Okapi-Tenant: diku" -H "Content-type: application/json" http://localhost:9130/instance-storage/reindex/02c8e76a-0606-43f2-808e-86f3c48b65c6
HTTP/1.1 200 OK
vary: origin
Content-Type: application/json
transfer-encoding: chunked

{
  "id" : "02c8e76a-0606-43f2-808e-86f3c48b65c6",
  "published" : 224823,
  "jobStatus" : "Ids published",
  "submittedDate" : "2022-07-22T19:15:00.000+00:00"
}
````
Compare the number *"published"* to the number of instance records that you have actually loaded or migrated to your FOLIO inventory.



## Secure Okapi

\*\*\* **This step is optional and should be omitted in test environments !!** \*\*\*

By default, Okapi API is open in order to facilitate the deployment process of FOLIO. However, in a production environment you must enable the security checks. You can use a Python script to secure Okapi, you should provide a username and password for Okapi.

```
python3 secure-supertenant.py -u USERNAME -p PASSWORD -o http://localhost:9130
```

The script can be downloaded (here)[https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/secure-supertenant.py].

When Okapi is secured, you must login using **mod-authtoken** to obtain an authtoken and include it in the **x-okapi-token** header for every request to the Okapi API !  For example, if you want to repeat any of the calls to Okapi in this guide, you will need to include **x-okapi-token:YOURTOKEN** and **x-okapi-tenant:supertenant** as headers for any requests to the Okapi API.


## Install and serve edge modules (platform-complete only)

If you do a test installation of FOLIO, you do not need to install any edge modules at all. Install an edge module in a test environment only if you want to *test the edge module*.

\*\*\* **If you do not need to integrate any third-party services, nor want to test any now, you are done at this point and have finished your fresh installation of FOLIO. Congratulations, again !!** \*\*\*

The Edge modules bridge the gap between some specific third-party services and FOLIO (e.g. RTAC, OAI-PMH).  In these FOLIO reference environments, the set of edge services are accessed via port 8000.  In this example, the edge-oai-pmh will be installed.

You can find more information about the Edge modules of FOLIO in the Wiki https://wiki.folio.org/display/FOLIOtips/Edge+APIs.

1. Create institutional user. An institutional user must be created with appropriate permissions to use the edge module. You can use the included create-user.py to create a user and assign permissions.

```
python3 create-user.py -u instuser -p instpass \
    --permissions oai-pmh.all --tenant diku \
    --admin-user diku_admin --admin-password admin
```
The script can be found (here) [https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/create-user.py].

If you need to specify an Okapi instance running somewhere other than http://localhost:9130, then add the --okapi-url flag to pass a different url.  If more than one permission set needs to be assigned, then use a comma delimited list, i.e. --permissions edge-rtac.all,edge-oai-pmh.all.

2. The institutional user is created for each tenant for the purposes of edge APIs. The credentials are stored in one of the secure stores and retrieved as needed by the edge API. You can find more information about secure stores (here) [https://github.com/folio-org/edge-common#secure-stores].  In this example, a basic EphemeralStore using an **ephemeral.properties** file which stores credentials in plain text.  This is meant for development and demonstration purposes only.

```
sudo mkdir -p /etc/folio/edge
sudo vi /etc/folio/edge/edge-oai-pmh-ephemeral.properties
```
The ephemeral properties file should look like this.


```
secureStore.type=Ephemeral
# a comma separated list of tenants
tenants=diku
#######################################################
# For each tenant, the institutional user password...
#
# Note: this is intended for development purposes only
#######################################################
# format: tenant=username,password
diku=instuser,instpass
```

3. Start edge module Docker containers.
You will need the version of the edge-modules available on Okapi for the tenant.  You can run a CURL request to Okapi and get the version of the **edge-oai-pmh** module.


```
curl -s http://localhost:9130/_/proxy/tenants/diku/modules | jq -r '.[].id' | grep 'edge-'
```

- Set up a docker compose file in **/etc/folio/edge/docker-compose.yml** that defines each edge module that is to be run as a service. The compose file should look like this.

```
version: '2'
services:
  edge-oai-pmh:
    ports:
      - "9700:8081"
    image: folioorg/edge-oai-pmh:2.2.1
    volumes:
      - /etc/folio/edge:/mnt
    command:
      -"Dokapi_url=http://10.0.2.15:9130"
      -"Dsecure_store_props=/mnt/edge-oai-pmh-ephemeral.properties"
    restart: "always"
```
Make sure you use the private IP of the server for the Okapi URL.


- Start the edge module containers.

```
cd /etc/folio/edge
sudo docker-compose up -d
```

4. Set up NGINX.

- Create a new virtual host configuration to proxy the edge modules.   Create a new NGINX file in the directory **/etc/nginx/sites-available/edge**. This needs to be done inside your Stripes container. You might want to modify the Docker file that builds your Stripes container, then re-build and re-run the container.

```
server {
  listen 8130;
  server_name localhost;
  charset utf-8;

  location /oai {
    proxy_pass http://localhost:9700;
  }
}

```
- Link that new configuration and restart nginx (inside the Stripes container; or re-start that container).

```
sudo ln -s /etc/nginx/sites-available/edge /etc/nginx/sites-enabled/edge
sudo service nginx restart

```

Now, an OAI service is running on http://server:8130/oai . 

5. Follow this procedure to generate the API key for the tenant and institutional user that were configured in the previous sections.  Currently, the edge modules are protected through API Keys.

```
cd ~
git clone https://github.com/folio-org/edge-common.git
cd edge-common
mvn package
java -jar target/edge-common-api-key-utils.jar -g -t diku -u instuser
```

This will return an API key that must be included in requests to edge modules. With this APIKey, you can test the edge module access.  For instance, a test OAI request would look like this.

```
curl -s "http://localhost:8130/oai?apikey=APIKEY=&verb=Identify"
```
The specific method to construct a request for an edge module is documented in the developers website: https://dev.folio.org/source-code/map/ or you can refer to the github project of the edge module.
