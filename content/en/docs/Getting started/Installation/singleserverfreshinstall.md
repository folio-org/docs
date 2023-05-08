---
title: "Single server or PC: fresh install"
linkTitle: "Single server or PC: fresh install"
weight: 10
description: 
tags: ["subtopic"]
---
These are installation instructions for installing a platform-complete distribution of FOLIO on a PC, including inside a Vagrant box. A single PC installation of FOLIO is useful for demo and testing purposes. 

The instructions should also work for a demo / testing installation on a single server. Note all of the instructions mentioning `<YOUR_IP_ADDRESS>` and `<YOUR_HOST_NAME>`, and configure them according to your network environment.

This is not considered appropriate for a production installation. A production installation should distribute the modules over multiple servers and use some kind of orchestration.

[FOLIO Single Server components](/img/single_docker_compose.png)

A FOLIO instance is divided into two main components.  The first component is Okapi, the gateway.  The second component is the UI layer which is called Stripes.  The single server with containers installation method will install both.

This documentation shows how to install a platform-complete distribution of Nolana.

Throughout this documentation, the sample tenant “diku” will be used. Replace with the name of your tenant, as appropriate.

## System requirements

These requirements apply to the FOLIO environment.  So for a Vagrant-based install, they apply to the Vagrant VM.

**Software requirements**

| **Requirement**      | **Recommended Version**                        |
|----------------------|------------------------------------------------|
| Operating system     | Ubuntu 20.04.5 LTS (Focal Fossa) 64-bits       |
| Java                 | OpenJDK 11                                     |
| PostgreSQL           | PostgreSQL 12                                  |

**Hardware requirements**

| **Requirement** | **FOLIO Base Apps** | **FOLIO Extended Apps** |
|-----------------|---------------------|-------------------------|
| RAM             | 24GB                | 40GB                    |
| CPU             | 4                   | 8                       |
| HD              | 100 GB SSD          | 350 GB SSD              |

## Vagrant setup

For testing FOLIO installation on a PC, it's recommended to use Vagrant to separate the many FOLIO software components from the host PC, and to allow for saved snapshots and rolling back as needed.

1. Install Vagrant.

See the Vagrant [download and installation instructions](https://developer.hashicorp.com/vagrant/downloads).

2. Install a virtualization product.

For Windows, [install VirtualBox](https://www.virtualbox.org/).

3. Install an Ubuntu box.

Create a `Vagrantfile` like the following.

```
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.network "forwarded_port", guest: 9130, host: 9130
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 9200, host: 9200

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "49152"
  end
end
```

Run `vagrant up` in the folder with the Vagrantfile.

4. SSH into the Vagrant box.

```
vagrant ssh
```

For a Vagrant-based installation, all of the following instructions assume you are working within the Vagrant enviornment via `vagrant ssh`. You will likely want to open additional ssh connections to the box for later steps such as following changes to the Okapi log file.

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
* In the same file, change **log_timezone** and **timezone**, otherwise they will be UTC.
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
sudo apt-get -y --allow-change-held-packages install okapi=4.14.8-1 # Nolana (R3-2022) Okapi version
sudo apt-mark hold okapi
```

Please note that the R3-2022 FOLIO release version of Okapi is 4.14.8-1.  If you do not explicitly set the Okapi version, you will install the latest Okapi release.  There is some risk with installing the latest Okapi release.  The latest release may not have been tested with the rest of the components in the official release.

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
INFO  ProxyContext         808211/proxy REQ 127.0.0.1:38956 supertenant POST /_/proxy/pull/modules okapi-4.14.8
INFO  PullManager          Remote registry at https://folio-registry.dev.folio.org is version 4.14.0-SNAPSHOT
INFO  PullManager          pull smart
  ...
INFO  PullManager          pull: 8970 MDs to insert
INFO  ProxyContext         808211/proxy RES 200 64403799us okapi-4.14.8 /_/proxy/pull/modules
````

Okapi is up and running!


## Create a new tenant

1. Switch to the working directory.

```
cd ~/folio-install
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
## Install Elasticsearch and MinIO

*Note for completeness:* To make use of the full capabilities of FOLIO, it is required to install services which do not generically belong to FOLIO. 

You have to install elasticsearch (ES) in order to be able to do queries. You need to point the related modules, at least *mod_pubsub* and *mod_search* to your ES installation (this will be described further down).

Follow this guide to install a three-node Elasticsearch cluster on a Single Server: [Installation of Elasticsearch](https://wiki.folio.org/display/SYSOPS/Installation+of+Elasticsearch). 

FOLIO's mod-data-export-worker needs an S3-compatible storage (AWS S3, Minio Server) to process bulk-edit business flows.
Install a MinIO server following https://min.io/docs/minio/linux/index.html. Point your browser to http://<YOUR_IP_ADDRESS>:9000. Login with the standard user and password: minioadmin, minioadmin. Go to Settings and choose your region (for a list to choose from, see here: <https://cloud.google.com/compute/docs/regions-zones/>), press Save. Create your own minio user and password: Go to Identity -> Users. Assigned Policy of the new user should be "readwrite". Create a bucket named "diku-test" and change its Access Policy to "public". Create another bucket named "diku-test-local-fs" with Access Policy "public". The minio instance needs to be restarted for configuration changes to take effect; press "Restart" at the top right of the screen. Log out and log in again with the credentials of the new user that you have created.

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

**Note**: Make sure that you use your private IP for the properties **DB_HOST**, **KAFKA_HOST** and **OKAPI_URL**. (In a Vagrant environment, 10.0.2.15 should work.)  Change passwords as you like, but make sure that you use the same passwords in your installations of the database and elasticsearch. **SYSTEM_USER_PASSWORD** will be used by mod-pubsub. It needs to be the same as those used for the system users *system-user* and *pub-sub*. Set the **ELASTICSEARCH_\*** variables so that they point to your Elasticsearch installation.

You may at this point also want to set environment variables for modules which are not part of Okapi's global env vars. Confer the module documentations on github to learn about configuration options for the modules by setting environment variables. For example, for mod-search, look at https://github.com/folio-org/mod-search#environment-variables . Follow these instructions [Change Environment Variables of a Module](https://wiki.folio.org/display/SYSOPS/Change+Environment+Variables+of+a+Module) (cf. the section named "When the module has not yet been deployed"). 

You can also find a list of environment variables for each module at the Overview - Metadata section of the module's page in Folio org’s Dockerhub. For example, for mod-search, this is at https://hub.docker.com/r/folioorg/mod-search.

In order to be able to download files from FOLIO, you need to connect mod-data-export-worker to an S3-compatible storage (AWS S3, Minio Server). Configure mod-data-export-worker as described here https://github.com/folio-org/mod-data-export-worker#environment-variables . Set the following environment variables for mod-data-export-worker: 
```
   AWS_URL="http://<YOUR_IP_ADDRESS>:9000/"
   AWS_REGION="<the region you set up in your minio server>"
   AWS_BUCKET="diku-test"
   AWS_ACCESS_KEY_ID="<the user that you have created for your minio server>"
   AWS_SECRET_ACCESS_KEY="<the password for your minio user>"
   LOCAL_FS_URL="http://<YOUR_IP_ADDRESS>:9000/"
   LOCAL_FS_REGION="<the region you set up in your minio server>"
   LOCAL_FS_BUCKET="diku-test-local-fs"
   LOCAL_FS_ACCESS_KEY_ID="<the user that you have created for your minio server>"
   LOCAL_FS_SECRET_ACCESS_KEY="<the password for your minio user>"
   LOCAL_FS_COMPOSE_WITH_AWS_SDK="false"
```

2. Check out platform-complete.

- Clone the repository

```
cd $HOME
git clone https://github.com/folio-org/platform-complete
cd platform-complete
```
- Checkout the latest stable branch of the repository (one which has undergone bugfest or hotfix testing)

```
git checkout R3-2022-GA
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

If that fails, remedy the error cause. Deploy modules that could not have been deployed individually (see below under *digression*). Then, run the POST of okapi-install.json again, but with deploy=false. Try this again until the post succeeds. 

*Digression*

Try to start a module from the shell like so:
```
  docker run -d -p <PICK-A-PORT>:8080  -e DB_PORT='5432'  -e KAFKA_PORT='9092'  -e KAFKA_HOST=<YOUR-KAFKA-HOST>  -e DB_HOST=<YOUR-DATABASE-HOST>  -e DB_PASSWORD=<FOLIOS-DB-PASSWD>  -e ELASTICSEARCH_URL=<YOUR-ELASTIC-SEARCH:9200>  -e DB_DATABASE='folio'  -e OKAPI_URL=<GUESS-WHAT> -e DB_USERNAME='folio'  -e JAVA_OPTIONS="-server -XX:+UseContainerSupport -XX:MaxRAMPercentage=55.0 -XX:+PrintFlagsFinal"  -e DB_MAXPOOLSIZE="50"  folioorg/mod-licenses:4.2.1
```
If it comes up, and it ought to, then tell okapi where it is like so:

First, generate a new (random) uuid, run `uuidgen` from shell. Then do
```
  curl -w '\n' -X POST -d '{ "srvcId":"mod-licenses-4.2.1","instId":"<THE_UUID_THAT_YOU_HAVE_GENERATED>", "url":"http://<YOUR_SERVER_NAME>:<THAT-ABOVE-PORT-YA-PICKED>" }' http://localhost:9130/_/discovery/modules
```
*End of digression*

Check, what is in your Discovery:

```
curl -w '\n' -D - http://localhost:9130/_/discovery/modules | grep srvcId
```

There should be 62 modules in your Okapi discovery - those which are in okapi-install.json - if all went well.

Check, what Docker containers are running on your host:

```
sudo docker ps --all | grep mod- | wc
```

This should also show the number 62.

Get a list of backend modules that have now been enabled for your tenant:
````
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep mod- | wc
````

There should be 62 of these as well.

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
  
Edit docker/nginx.conf to include this content below.  Replace the server name and IP address with your values:

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

<YOUR_SERVER_NAME> should be the real name of your server in your network. <YOUR_SERVER_NAME> should consist of host name plus domain name, e.g. myserv.mydomain.edu. If you are not doing a redirect, <YOUR_SERVER_NAME> equals to <YOUR_DOMAIN_NAME>.


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
If you desire, choose a background color on the login screen and the navigation bar color. Adding these lines to the branding section of stripes.config.js will do:
```
    style: {
      mainNav: {
        backgroundColor: "#036"
      },
      login: {
        backgroundColor: "#fcb"
      },
    }
```
Other things that are useful:

* welcomeMessage -- you can set this to override the default "Welcome, the Future Of Libraries Is OPEN!" message 
* platformName -- The text next to the bee icon in the upper right, also the title of index.html.
* aboutInstallVersion and aboutInstallDate -- will display on the Settings/Software versions page

You can set these values in the config section of module.exports in stripes.config.js, e.g. like thus:
```
config: {
    logCategories: 'core,path,action,xhr',
    logPrefix: '--',
    maxUnpagedResourceCount: 2000,
    welcomeMessage: 'Welcome to FOLIO Test!',
    platformName: 'FOLIO - Test',
    showPerms: false
  },
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

Use the parameter *deploy=false* of Okapi's install endpoint for the frontend modules and post the list of frontend modules *stripes-install.json* to the install endpoint. This will enable the frontend modules of the release version for your tenant.

First, simulate what will happen:
```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/stripes-install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
```

Then, enable the frontend modules for your tenant:

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-complete/stripes-install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=false\&preRelease=false\&tenantParameters=loadReference%3Dfalse
```
Get a list of modules which have been enabled for your tenant:

````
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep id | wc
````

There should be 131 modules enabled (=the number of module ids in install.json).

This number is the sum of the following:

59 Frontend modules (folio_\*)
9 Edge modules
62 Backend modules (mod-\*)
1 Okapi module
These are all R3-2022 (Nolana) modules.

You have installed all modules now. Check again what containers are running in docker:
````
sudo docker ps --all | wc
````

This should show 69 containers running.

The following containers are running on your system, but do not contain backend modules:

- Stripes
- 3 times Elasticsearch
- Kafka
- Zookeper

In sum, these are 6 containers which do not run backend modules. Also subtract the header line (of “docker ps”), and you will arrive at 
69 - 7 = 62 containers which run backend modules .


## Create a superuser

You need to create a superuser for your tenant in order to be able to administer it.  This is a multi step process and the details can be found in the [Okapi documentation](https://github.com/folio-org/okapi/blob/master/doc/guide.md#securing-okapi). You can use a PERL script to execute these steps automatically.   You only need to provide the tenant id, a username/password for the superuser and the URL of Okapi.

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

Use [the bootstrap-superuser.pl Perl script](https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/bootstrap-superuser.pl) to create a superuser:
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

## Confirm that FOLIO is running

Log in to your frontend: E.g., go to http://<YOUR_HOST_NAME>/ in your browser.

Can you see the installed modules in Settings - Installation details ?

Do you see the right okapi version, 4.14.8-1 ?

Does everything look good ?

Congratulations, you have successfully installed FOLIO !
