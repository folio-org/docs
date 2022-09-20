---
title: "Customizations"
linkTitle: "Customizations"
weight: 50
description: >
  Note: This content is currently in draft status.
tags: ["subtopic"]
---


## Branding Stripes

Stripes has some basic branding configurations that are applied during the build process.  In the file **stripes.config.js**, you can configure the logo and favicon of the tenant.  These parameters can be set under the branding key at the end of the file.  You can add the new images in the folder **tenant-assets** and link to them in the configuration file.  Take into account that these changes will take effect after you build the webpack for Stripes.

## Okapi security

By default, Okapi API is open in order to facilitate the deployment process of FOLIO. However, in a production environment you must enable the security checks. 

Make sure that you have secured Okapi before publishing it to the Internet.  If you do not configure a super-tenant user and password for Okapi API, any user on the net could run privileged requests. The process of securing Okapi is performed with the **secure-supertenant** script, by providing a username and password for Okapi.

```
python3 secure-supertenant.py -u USERNAME -p PASSWORD -o http://<YOUR_HOST_NAME>:9130
```

The script can be downloaded [here](https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/secure-supertenant.py).

When Okapi is secured, you must login using **mod-authtoken** to obtain an authtoken and include it in the **x-okapi-token** header for every request to the Okapi API !  For example, if you want to repeat any of the calls to Okapi in this guide, you will need to include **x-okapi-token:YOURTOKEN** and **x-okapi-tenant:supertenant** as headers for any requests to the Okapi API.

### SSL Certificates

Additionally, it is recommended that you configure SSL certificates for Okapi in order to prevent data being sent as plain text over the Internet.  Okapi does not have native HTTPS support, but you can set up a reverse proxy (e.g NGINX) that receives HTTPS requests and forwards them to Okapi.  You can find more information about HTTPS on NGINX [here](http://nginx.org/en/docs/http/configuring_https_servers.html).  Also, if you are using an Ingress in Kubernetes, you can configure SSL certificates using Rancher.  For more information on this process check [here](https://rancher.com/docs/rancher/v2.x/en/k8s-in-rancher/load-balancers-and-ingress/ingress/).

## Email configuration

The module mod-email provides the role of delivering messages using SMTP server to send emails in FOLIO.  It is used for sending notifications and restarting user passwords.

The mod-email module uses mod-configuration to get connection parameters.  A detailed list of parameters can be found in the documentation of the [module](https://github.com/folio-org/mod-email#introduction).  The required configuration options are the following:

* EMAIL_SMTP_HOST
* EMAIL_SMTP_PORT
* EMAIL_USERNAME
* EMAIL_PASSWORD
* EMAIL_FROM
* EMAIL_SMTP_SSL

These parameters should be set in Okapi through POST requests using the name of the module: **SMTP_SERVER**.  For example, the host configuration would look like this. 

```
curl -X POST \
 http://localhost:9130/configurations/entries \
 -H 'Content-Type: application/json' \
 -H 'X-Okapi-Tenant: <tenant>' \
 -H 'x-okapi-token: <token>' \
 -d
   '{
     "module": "SMTP_SERVER",
     "configName": "smtp",
     "code": "EMAIL_SMTP_HOST",
     "description": "server smtp host",
     "default": true,
     "enabled": true,
     "value": "smtp.googlemail.com"
   }'
```

Take into account that this configuration is performed on a per tenant basis and the tenant ID is defined in the **X-Okapi-Tenant** header.  Also, you have to be logged in as the superuser of the tenant and provide the access token in the header **x-okapi-token**.   You can find an example of a login request (here)[https://github.com/folio-org/folio-install/tree/master/runbooks/single-server#load-mods-records].

Once you have configured the mod-email module, you should configure other modules related to the email configuration.  You should configure the users module and edge-sip2.  You can find a Bash script that could be used to automate this process [here](https://github.com/folio-org/folio-install/blob/kube-rancher/alternative-install/kubernetes-rancher/TAMU/deploy-jobs/create-email/create-email-config.sh).  Make sure that you replace all of the environment variables required for the script.

Alternatively, if you deployed FOLIO on a Kubernetes cluster, you can create a Kubernetes Job for this task.  This docker project  https://github.com/folio-org/folio-install/tree/kube-rancher/alternative-install/kubernetes-rancher/TAMU/deploy-jobs/create-email can be built, pushed to the image registry and executed on the cluster similarly to other scripts mentioned in the Kubernetes deployment section.

## Install and serve edge modules

These instructions have been written for a single server environment in which Okapi is running on localhost:9130.

If you do a test installation of FOLIO, you do not need to install any edge modules at all. Install an edge module in a test environment only if you want to *test the edge module*.

The Edge modules bridge the gap between some specific third-party services and FOLIO (e.g. RTAC, OAI-PMH).  In these FOLIO reference environments, the set of edge services are accessed via port 8000.  In this example, the edge-oai-pmh will be installed.

You can find more information about the Edge modules of FOLIO in the Wiki https://wiki.folio.org/display/FOLIOtips/Edge+APIs.

1. Create institutional user. An institutional user must be created with appropriate permissions to use the edge module. You can use [the included create-user.py](https://github.com/folio-org/folio-install/blob/master/runbooks/single-server/scripts/create-user.py) to create a user and assign permissions.

```
python3 create-user.py -u instuser -p instpass \
    --permissions oai-pmh.all --tenant diku \
    --admin-user diku_admin --admin-password admin
```

If you need to specify an Okapi instance running somewhere other than http://localhost:9130, then add the --okapi-url flag to pass a different url.  If more than one permission set needs to be assigned, then use a comma delimited list, i.e. --permissions edge-rtac.all,edge-oai-pmh.all.

2. The institutional user is created for each tenant for the purposes of edge APIs. The credentials are stored in one of the secure stores and retrieved as needed by the edge API. See [more information about secure stores](https://github.com/folio-org/edge-common#secure-stores).  In this example, a basic EphemeralStore using an **ephemeral.properties** file which stores credentials in plain text.  This is meant for development and demonstration purposes only.

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

- Create a new virtual host configuration to proxy the edge modules.  This needs to be done inside your Stripes container. 
Log in to the stripes container, cd into the nginx configuration directory and create a new nginx configuration file there:
```
docker ps --all | grep stripes
docker exec -it <stripes container id> /bin/sh
cd /etc/nginx/conf.d
edit edge-oai.conf
```
Insert the following contents into the new file edge-oai.conf:
```
server {
  listen 8130;
  server_name <YOUR_SERVER_NAME>;
  charset utf-8;
  access_log  /var/log/nginx/oai.access.log  combined;
  location /oai {
    rewrite ^/oai/(.*) /$1 break;
    proxy_pass http://<YOUR_SERVER_NAEM>:9700/;
  }
}

```
YOUR_SERVER_NAME might be localhost. If you are working inside a Vagrant box, it is 10.0.2.15.
Exit the container and then restart the container:
```
docker restart <stripes container id>
```

You might also want to modify the Docker file that builds your Stripes container. So you will be able to re-build the container later or on some other machine.
Add the file edge-oai.conf (with the contents as above) to the directory `$HOME/platform-complete/docker/`.
Then add a line to the Dockerfile `$HOME/platform-complete/docker/Dockerfile`:
```
COPY docker/edge-oai.conf /etc/nginx/conf.d/edge-oai.conf
```
Commit your changes to a local (or personal or institutional) git repository.

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
