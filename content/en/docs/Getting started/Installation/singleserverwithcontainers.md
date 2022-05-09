---
title: "Single server with containers"
linkTitle: "Single server with containers"
weight: 10
description: 
tags: ["subtopic"]
---
A single server installation is being considered a non-production installation. For a production installation some kind of orchestration should be applied. A single server installation of FOLIO is useful for demo and testing purposes.

![FOLIO Single Server components](/img/single_docker_compose.png)

A FOLIO instance is divided into two main components.  The first component is Okapi, the gateway.  The second component is the UI layer which is called Stripes.  The single server with containers installation method will install both.

## Changes in the documentation
There are some changes in the idea of this documentation as compared to the documentations for previous releases (cf. [Juniper](https://juniper.docs.folio.org/docs/getting-started/installation/singleserverwithcontainers/) or [Iris](https://iris.docs.folio.org/docs/getting-started/installation/singleserverwithcontainers/) documentations). 

* This is a documentation for an **upgrade** of your FOLIO system. It assumes that you have already successfully installed Juniper (GA or a Juniper hotfix release) and now want to upgrade your system to Kiwi. If you are deploying FOLIO for the first time, or if you want to start with a fresh installation for whatever reasons, go to the [Juniper single server documentation](https://juniper.docs.folio.org/docs/getting-started/installation/singleserverwithcontainers/) and come back here when you have installed Juniper.
* This documentation assumes that you have installed the **platform-complete** distribution and want to upgrade the modules of that distribution. Previous release documentations have been written for the  more concise "platform-core" distribution. The platform-core distribution is not being supported, anymore.

## System requirements

**Software requirements**

| **Requirement**      | **Recommended Version**                    |
|----------------------|--------------------------------------------|
| Operating system     | Ubuntu 20.04.02 LTS (Focal Fossa) 64-bits  |
| FOLIO system         | Juniper (R2-2021)                          |

**Hardware requirements**

| **Requirement** | **FOLIO Extended Apps** |
|-----------------|-------------------------|
| RAM             | 40GB                    |
| CPU             | 8                       |
| HD              | 350 GB SSD              |

## I. Before the Upgrade

First do Ubuntu Updates & Upgrades
  
```
sudo apt-get update
sudo apt-get upgrade
sudo reboot
```
Check if all Services have been restarted after reboot: <em>Okapi, postgres, docker, the docker containers</em> (do: docker ps --all | more ). <em>Stripes and nginx</em> (you have started these in one container if you have followed the Juniper docs. Re-start this container).

The following actions in this section have been taken from the [Kiwi Release Notes](https://wiki.folio.org/display/REL/Kiwi+%28R3+2021%29+Release+Notes). I was able to do an upgrade with only these actions taken. There might be more actions that you might need to take for the upgrade of your FOLIO installation. If you are unsure what other steps you might need to take, study the [Release Notes](https://wiki.folio.org/display/REL/Kiwi+%28R3+2021%29+Release+Notes).

### i. Change all duplicate item barcodes

Item barcode is unique now. Duplicate item barcodes fail the upgrade.
Before upgrade: Change all duplicate item barcodes. Find them with this SQL:
```
pslq folio
SET search_path TO diku_mod_inventory_storage;
SELECT lower(jsonb->>'barcode')
FROM item
GROUP BY 1
HAVING count(*) > 1;
 lower
-------
(0 rows)
```
Use Inventory Item Barcode search to edit the duplicate barcode.

### ii. Change all holdings sources to FOLIO

Holdings created by a MARC Bib, not a MARC Holdings, showed the <em>source = MARC</em>. The behavior was changed to show <em>source = FOLIO</em> for such holdings. Database tables might contain holdings records with incorrect source value. See here [MODSOURMAN-627 - Script for retrieving holding by specific conditions](https://wiki.folio.org/pages/viewpage.action?pageId=79466342).
Log in to your postgres database (on linux console, type "psql -U folio folio") and select the Holdings where source name is not FOLIO or MARC :
```
SELECT
*
FROM ${tenant}_mod_inventory_storage.holdings_record
WHERE ${tenant}_mod_inventory_storage.holdings_record.jsonb ->> 'sourceId' = (
SELECT
id::text
FROM ${tenant}_mod_inventory_storage.holdings_records_source
WHERE ${tenant}_mod_inventory_storage.holdings_records_source.jsonb ->> 'name' != 'FOLIO' AND
${tenant}_mod_inventory_storage.holdings_records_source.jsonb ->> 'name' != 'MARC');
(0 rows)

(END)
```
Replace ${tenant} by the name of your tenant. On a standard (test or demo) install, the tenant is "diku". 
If the holdings source is anything other than FOLIO or MARC (e.g. -), then change it to FOLIO. 

### iii. Install Elasticsearch
If you have not already done so in your Juniper Install (it was optional there) install Elasticsearch now in your running Juniper instance. Follow this guide to install a 3-node Elasticsearch cluster on a Single Server: [Installation of Elasticsearch](https://wiki.folio.org/display/SYSOPS/Installation+of+Elasticsearch). This also install mod-search and the frontend modules  folio_inventory-es and folio_search in Juniper.

### iv.Install a minIO-Server
If you want to use Data Export, you either have to use Amazon S3 or a minIO server.
So, for anyone who plans to use MinIO server instead of Amazon S3:
External storage for generated MARC records should be configured to MinIO server by changing ENV variable AWS_URL.
Installation of a MinIO server is not being covered in this documentation. Refer to:
[MinIO Deployment and Management](https://docs.min.io/minio/baremetal/installation/deployment-and-management.html#minio-installation) ,
[Deploy MinIO Standalone](https://docs.min.io/minio/baremetal/installation/deploy-minio-standalone.html#deploy-minio-standalone-container) .

### v. More preparatory steps
There might be more preparatory steps that you need to take for your installation. If you are unsure what other steps you might need to take, study the [Kiwi Release Notes](https://wiki.folio.org/display/REL/Kiwi+%28R3+2021%29+Release+Notes).

## II. Main Processing: Upgrade Juniper => Kiwi 
This documentation assumes that you have Juniper Hotfix#3 running. Upgrade procedures for other Hotfixes or the GA Release might vary slightly. In particular, if this documentation refers to Juniper Release module versions, check if you have exactly that version running and if not, use the version that you had deployed.

### II.i. Upgrade the Okapi Version / Restart Okapi
#### Install and configure Okapi
This needs to be done first, otherwise Okapi can not pull the new modules.

Read the Okapi Release Version from the platform-\*/install.json file.

In this installation guide, the ‘platform-core’ repository will be used.  If you would like to install ‘platform-complete’ you should replace every mention of platform-core with platform-complete in the instructions.

- Clone the repository, change into that directory: 

```
git clone https://github.com/folio-org/platform-core
cd platform-core
git fetch
```
There is a new Branch R3-2021-hotfix-2. We will deploy this version.
Check out this Branch.
Stash local changes. This should only pertain to stripes.config.js .
Discard any changes which you might have made in Juniper on install.json etc.:

```
git restore install.json
git restore okapi-install.json
git restore stripes-install.json
git restore package.json
 
git stash save
git checkout master
git pull
git checkout R3-2021-hotfix-2
git stash pop
```

Read  the R3 Okapi version from install.json: **okapi-4.11.1**

Fetch Okapi as a Debian package from repository.folio.org . 
Import the FOLIO signing key, add the FOLIO apt repository, install okapi (of this release):

```
wget --quiet -O - https://repository.folio.org/packages/debian/folio-apt-archive-key.asc | sudo apt-key add -
sudo add-apt-repository "deb https://repository.folio.org/packages/ubuntu focal/"
sudo apt-get update
sudo apt-get -y --allow-change-held-packages install okapi=4.11.1-1
```

#### Start Okapi in cluster mode

I install Okapi in cluster mode, because this is the appropriate way to install it in a production environment (although it is being done on a single server here, this procedure could also be applied to a multi-server environment). Strictly speaking, on a single server, it is not necessary to deploy Okapi in cluster mode. So you might want to stay with the default role "dev", instead.

Change the port range in okapi.conf . Compared to Juniper, this needs to be done now, because Elasticsearch will occupy ports 9200 and 9300 (or is already occupying them) :

```
vim /etc/folio/okapi/okapi.conf
# then change the following lines to:
      - role="cluster"
      - cluster_config="-hazelcast-config-file /etc/folio/okapi/hazelcast.xml"
      - cluster_port="9001"
      - port_start="9301"
      - port_end="9520"
      - host="10.9.2.85"  # change to your host's IP address
      - nodename="10.9.2.85"
```

You can find out the node name that Okapi uses like this: curl -X GET http://localhost:9130/_/discovery/nodes . You have to use that value if you deploy Okapi in  cluster mode. Not your host name and not "localhost".

Edit interface and members in hazelcast.xml (if you deploy Okapi in cluster mode). If you run Okapi on a single server, this is your local IP address. 

```
vim /etc/folio/okapi/hazelcast.xml
...
<tcp-ip enabled="true">
                <interface>10.9.2.85</interface>
                <member-list>
                    <member>10.9.2.85</member>
                </member-list>
</tcp-ip>
```

Send new Environment Variables for Hazelcast to Okapi (in case you haven't been using Hazelcast so far):

```
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"OKAPI_CLUSTERHOST\",\"value\":\"10.9.2.85\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"HAZELCAST_IP\",\"value\":\"10.9.2.85\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"HAZELCAST_PORT\",\"value\":\"5701\"}" http://localhost:9130/_/env
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"HAZELCAST_FILE\",\"value\":\"/etc/folio/okapi/hazelcast.xml\"}" http://localhost:9130/_/env
```

Restart Okapi:

```
sudo systemctl daemon-reload
sudo systemctl restart okapi.service
```

Follow /var/log/folio/okapi/okapi.log . You should read something like this:

```
INFO DeploymentManager shutdown
...
```

Now Okapi will re-start your modules. Follow the okapi.log. It will run for 2 or 3 minutes. Check if all modules are running:

```
docker ps --all | grep "mod-" | wc
  62
```

Retrieve the list of modules which are now being enabled for your tenant (just for your information):

```
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules
...
}, {
  "id" : "okapi-4.11.1"
} ]
```

You should see 9 Edge modules (Starting from Juniper HF#3; if you have started from Juniper-GA, you will see only 8 Edge modules), 52 Frontend modules (folio_\*), 62 Backend modules (mod-\*) (These are the modules of Juniper, platform-complete) + the Kiwi-Version of Okapi (4.11.1).

### II.ii. Pull module descriptors from the central registry.

A module descriptor declares the basic module metadata (id, name, etc.), specifies the module's dependencies on other modules (interface identifiers to be precise), and reports all "provided" interfaces. As part of the continuous integration process, each Module Descriptor  is published to the FOLIO Registry at https://folio-registry.dev.folio.org.

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" \
  -d { "urls": [ "https://folio-registry.dev.folio.org" ]  http://localhost:9130/_/proxy/pull/modules
```
Okapi log should show something like

```
 INFO  ProxyContext         283828/proxy REQ 127.0.0.1:51424 supertenant POST /_/proxy/pull/modules  okapi-4.11.1
 INFO  PullManager          Remote registry at https://folio-registry.dev.folio.org is version 4.11.1
 INFO  PullManager          pull smart
  ...
 INFO  PullManager          pull: 3466 MDs to insert
 INFO  ProxyContext         283828/proxy RES 200 93096323us okapi-4.11.1 /_/proxy/pull/modules
```

### II.iii. Deploy a compatible FOLIO backend

1.  Post data source information to the Okapi environment for use by deployed modules
```
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_HOST\",\"value\":\"10.9.2.85\"}" http://localhost:9130/_/env;
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_URL\",\"value\":\"http://10.9.2.85:9200\"}" http://localhost:9130/_/env;
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_USERNAME\",\"value\":\"elastic\"}" http://localhost:9130/_/env;
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"ELASTICSEARCH_PASSWORD\",\"value\":\"s3cret\"}" http://localhost:9130/_/env;
curl -w '\n' -D - -X POST -H "Content-Type: application/json" -d "{\"name\":\"INITIAL_LANGUAGES\",\"value\":\"eng, ger, swe\"}" http://localhost:9130/_/env;
```

Change 10.9.2.85 to your local IP address. Choose a  safe password ELASTICSEARCH_PASSWORD.  You can choose up to five INITIAL_LANGUAGES. To find out the language codes, view here [mod-search: multi language search support](https://github.com/folio-org/mod-search#multi-language-search-support) .

The Okapi environment should now look something like this:

```
 curl -X GET http://localhost:9130/_/env
[ {
  "name" : "DB_DATABASE",
  "value" : "folio"
}, {
  "name" : "DB_HOST",
  "value" : "10.9.2.62"
}, {
  "name" : "DB_PASSWORD",
  "value" : "folio123"
}, {
  "name" : "DB_PORT",
  "value" : "5432"
}, {
  "name" : "DB_USERNAME",
  "value" : "folio"
}, {
  "name" : "ELASTICSEARCH_HOST",
  "value" : "10.9.2.85"
}, {
  "name" : "ELASTICSEARCH_PASSWORD",
  "value" : "s3cret"
}, {
  "name" : "ELASTICSEARCH_URL",
  "value" : "http://10.9.2.85:9200"
}, {
  "name" : "ELASTICSEARCH_USERNAME",
  "value" : "elastic"
}, {
  "name" : "HAZELCAST_FILE",
  "value" : "/etc/folio/okapi/hazelcast.xml"
}, {
  "name" : "HAZELCAST_IP",
  "value" : "10.9.2.85"
}, {
  "name" : "HAZELCAST_PORT",
  "value" : "5701"
}, {
  "name" : "INITIAL_LANGUAGES",
  "value" : "ger, eng, fre, spa"
}, {
  "name" : "KAFKA_HOST",
  "value" : "10.9.2.85"
}, {
  "name" : "KAFKA_PORT",
  "value" : "9092"
}, {
  "name" : "OKAPI_CLUSTERHOST",
  "value" : "10.9.2.85"
}, {
  "name" : "OKAPI_URL",
  "value" : "http://10.9.2.85:9130"
}, {
  "name" : "SYSTEM_USER_PASSWORD",
  "value" : "pub-sub"
} ]
```

If you choose a different SYSTEM_USER_PASSWORD than the default (which you should do on a production system), then you will have to change the password of the user "pub-sub" in the system to the same value. Change the password of the user pub-sub via Settings - Passwords menu. Do this **before** you re-deploy pubsub. Thus, do this **now**, as the re-deployment of pub-sub is the next step.


2. Deploy the backend modules

*Sidestep*: Look, how many containers are running already now:

sudo docker ps | grep -v "^CONTAINER" | wc -l

 68 containers are running:
 - 62 Backend Modules of R2-2021
 - Stripes with nginx
 - 3 Nodes Elasticsearch
 - Kafka & Zookeeper

2.1. Upgrade and enable mod-pubsub

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d '[ { "id" : "mod-pubsub-2.4.3", "action" : "enable" } ]' http://localhost:9130/_/proxy/tenants/diku/install?simulate=true
  curl -w '\n' -D - -X POST -H "Content-type: application/json" -d '[ { "id" : "mod-pubsub-2.4.3", "action" : "enable" } ]' http://localhost:9130/_/proxy/tenants/diku/install?deploy=true\&preRelease=false\&tenantParameters=loadReference%3Dtrue
HTTP/1.1 200 OK
```

The old module instance, mod-pubsub-2.3.3, has been automatically undeployed by this operation.

2.2 Deploy all the other backend modules

Remove mod-pubsub-2.4.3 from the list ~/platform-complete/okapi-install.json because it has already been deployed.

Deploy all backend modules with this single script [deploy-all-backend-modules.sh]({{< ref "deploy-all-backend-modules.sh" >}}) . You will also need this script  [deploy-backend-module.sh]({{< ref "deploy-backend-module.sh" >}}) :

This will download all the necessary container images for the backend modules from Docker Hub and deploy them as containers to the local system :

```
./deploy-all-backend-modules.sh ~/platform-complete/okapi-install.json <YOUR_IP_ADDRESS>
```

This script will run for approx. 15 minutes. It will spin up one Docker container for each backend module using Okapi's /discovery/modules endpoint.

You can follow the progress on the terminal screen and/or in /var/lib/folio/okapi/okapi.log .

Now the R3 (Kiwi) backend modules have been deployed, but have not yet been enabled for your tenant.

In addition, the R2 (Juniper) containers are still running on your system. The latter are enabled. This means that, right now, the system is still in the state "R2-2021 (Juniper)", except for Okapi (but the Okapi is downward compatible to R2) and mod-pubsub.

There are 61 backend modules of R2 (all, except for mod-pubsub) and 65 backend modules of R3 running as containers on your system. Check this by typing

```
docker ps --all | grep "mod-" | wc
    126
```
*Side Remark*: 3 of the backend modules have been deployed twice in the same version, because for those backend modules, the R2 version is the same as the R3 version. These modules are:

  mod-service-interaction:1.0.0
  mod-graphql:1.9.0
  mod-z3950-2.4.0  .



### Enable the backend modules for your tenant

Post the list of backend modules to Okapi to enable them for your tenant.  Also, you can set the (tenantParameters)[https://github.com/folio-org/okapi/blob/master/doc/guide.md#install-modules-per-tenant] to load their sample and reference data.

First do a simulation run:

```
  curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-core/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
```

**Note**: You will have to replace ‘diku’ with the id of your tenant.

Decide whether you want to load a set of sample data (inventory: bibs, holdings and items) or not. If you want to load sample data, then change the value of "loadSample" from "false" to "true" in the following command line. Then execute this command line:

```
  curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @$HOME/platform-core/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=false\&preRelease=false\&tenantParameters=loadReference%3Dtrue%2CloadSample%3Dfalse
```

Finally, check which backend modules have been enabled for your tenant:

```
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep "id"
```

This should show the same set of modules as in okapi-install.json plus the Okapi module itself. Thus, the number of modules enabled for your tenant should be 62.

The backend of the new tenant is ready.  Now, you have to set up a Stripes instance for the frontend of the tenant, create a superuser for the tenant and secure Okapi.




## Install the frontend, Folio Stripes

You have an Okapi instance running, you can proceed to install Stripes.  Stripes is bundled and deployed on a per tenant basis. 
Install Stripes and nginx in a Docker container.

### Configure the docker file and the nginx webserver

```
  cd ~/platform-core
  edit docker/Dockerfile
    ARG OKAPI_URL=http(s)://<YOUR_DOMAIN_NAME>/okapi
    ARG TENANT_ID=diku # Or change to your tenant's name
```

Use https if possible, i.e. use an SSL certificate. <YOUR_DOMAIN_NAME> should then be the fully qualified domain name (FQDN) for which your certificate is valid, or a server alias name (SAN) which applies to your certificate. If using http, it is your server name (host name plus domain). The subpath /okapi of your domain name will be redirected to port 9130 below, in your nginx configuration. 
   
```   
  edit docker/nginx.conf
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

<YOUR_SERVER_NAME> should be the real name of your server in your network. <YOUR_SERVER_NAME> should consist of host name plus domain name, e.g. myserv.mydomain.edu. 

If you want your FOLIO installation to be accessed from outside of your network, it is highly recommended to use https instead of http. In this case, your nginx.conf might look like this:
 
 ```
 edit docker/nginx.conf
 server {
  listen 443 ssl;
  server_name  <YOUR_SERVER_NAME>;
  ssl on;
  ssl_certificate     cert_bundle.crt;
  ssl_certificate_key <YOUR_SERVER_NAME>-key.no_enc.pem;
  ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
  ssl_prefer_server_ciphers on;
  ssl_ciphers         HIGH:!aNULL:!MD5;

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

The subpath /okapi of your domain is being redicrectd to your internal port 9130. Thus, the Okapi port 9130 does not need to be released to outside of your network.
**Note**: If you want to host multiple tenants on a server, you can configure NGINX to either open a new port for each tenant or set up different paths on the same port (e.g. /tenat1, /tenant2).

Edit the url and tenant in stripes.config.js. The url will be requested by a FOLIO client, thus a browser. Make sure that you use the public IP or domain of your serve. Use http only if you want to access your FOLIO installation only from within your network.

```
  edit stripes.config.js
      okapi: { 'url':'http(s)://<YOUR_DOMAIN_NAME>/okapi', 'tenant':'diku' },
     
      # remove this line, unless you are installing Elasticsearch :
          '@folio/search' : {},
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
  
```
  sudo su
  docker build -f docker/Dockerfile --build-arg OKAPI_URL=http(s)://<YOUR_DOMAIN_NAME>/okapi --build-arg TENANT_ID=diku -t stripes .
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

This will run for quite a long time, approx. 15 minutes.

### Start the Docker container
  Make sure nginx is not already running on your VM (do `sudo service nginx stop`). Make sure nothing else is running on port 80.
  Redirect port 80 from the outside to port 80 of the docker container. When using SSL, port 443 has to be redirected.
  
```
  nohup docker run -d -p 80:80 stripes
```
  
### Log in to the Docker container
  Check if your config file looks o.k. and follow the access log inside the container:
  
```
  docker exec -it <container_id> sh
  vi /etc/nginx/conf.d/default.conf
  
  tail -f /var/log/nginx/host.access.log
```

### Post the list of Stripes modules to enable for your tenant.

First, simulate what will happen:
```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @stripes-install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
```

Then, enable the frontend modules for your tenant:

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @stripes-install.json http://localhost:9130/_/proxy/tenants/diku/install?preRelease=false
```

50 Stripes modules (folio*) and 9 Edge modules have been enabled.

### Create a superuser

You need to create a superuser for the newly created tenant.  This is a multi step process and the details can be found in the (Okapi documentation) [https://github.com/folio-org/okapi/blob/master/doc/guide.md#securing-okapi]. You can use a PERL script to execute these steps automatically.   You only need to provide the tenant id, a username/password for the superuser and the URL of Okapi.

Install gcc on Ubuntu 20 (prerequisite to install Perl modules from cpan)
```
sudo apt install gcc
gcc --version
gcc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0
```

Install prerequiste Perl modules
```
sudo cpan install LWP.pm
sudo cpan install JSON.pm
sudo cpan install UUID::Tiny
```

Use this Perl script to create a superuser [https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/bootstrap-superuser.pl ]. Use the version of the script which is applicable for mod-permissions of version < 5.15.0 :
```
wget "https://raw.githubusercontent.com/folio-org/folio-install/b2e75a058f6d821c4cc04f711aeb0d8dbab06f80/runbooks/single-server/scripts/bootstrap-superuser.pl"
perl bootstrap-superuser.pl \
  --tenant diku --user diku_admin --password admin \
  --okapi http://localhost:9130
```

Now Stripes is running on port 80 or 443 and you can open it using a browser. Log in with the credentials of the superuser that you have created.


### Secure Okapi

By default, Okapi API is open in order to facilitate the deployment process of FOLIO. However, in a production environment you must enable the security checks. You can use a Python script to secure Okapi, you should provide a username and password for Okapi.

```
python3 secure-supertenant.py -u USERNAME -p PASSWORD -o http://localhost:9130
```

The script can be downloaded (here)[https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/secure-supertenant.py].

When Okapi is secured, you must login using **mod-authtoken** to obtain an authtoken and include it in the **x-okapi-token** header for every request to the Okapi API.  For example, if you want to repeat any of the calls to Okapi in this guide, you will need to include **x-okapi-token:YOURTOKEN** and **x-okapi-tenant:supertenant** as headers for any requests to the Okapi API.


## Install and serve edge modules (platform-complete only)

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
