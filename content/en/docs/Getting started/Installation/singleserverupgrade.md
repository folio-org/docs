---
title: "Single server: upgrade"
linkTitle: "Single server: upgrade"
weight: 10
description: 
tags: ["subtopic"]
---
A single server installation is being considered a non-production installation. For a production installation some kind of orchestration should be applied. A single server installation of FOLIO is useful for demo and testing purposes.

![FOLIO Single Server components](/img/single_docker_compose.png)

A FOLIO instance is divided into two main components.  The first component is Okapi, the gateway.  The second component is the UI layer which is called Stripes.  The single server with containers installation method will install both.

## Upgrade-based installation

This is a documentation for an **upgrade** of your FOLIO system. 

* It assumes that you have already successfully installed a FOLIO system and now want to upgrade your system to Lotus. 

* If you are deploying FOLIO for the first time, or if you want to start with a fresh installation for whatever reasons, see [how to do a **fresh installation**]({{< ref "singleserverfreshinstall.md" >}}) of a single server deployment.

* This documentation shows how to upgrade to a **platform-complete** distribution of Nolana.

* Throughout this documentation, the sample tenant "diku" will be used. Replace with the name of your tenant, as appropriate.

## System requirements

**Software requirements**

| **Requirement**      | **Recommended Version**                    |
|----------------------|--------------------------------------------|
| Operating system     | Ubuntu 20.04.06 LTS (Focal Fossa) 64-bits  |
| FOLIO system         | Morning Glory (R2-2022)                          |

**Hardware requirements**

| **Requirement** | **FOLIO Extended Apps** |
|-----------------|-------------------------|
| RAM             | 40GB                    |
| CPU             | 8                       |
| HD              | 350 GB SSD              |

## I. Before the Upgrade

First do a snapshot of your system, so you will be able to replay the current status in case the upgrade fails.

First do Ubuntu Updates & Upgrades
  
```
sudo apt-get update
sudo apt-get upgrade
sudo reboot
```
Check if all Services have been restarted after reboot: <em>Okapi, postgres, docker, the docker containers</em> (do: docker ps --all | more ) <em>, Stripes and nginx.</em>

Read carefully the [Nolana Release Notes](https://wiki.folio.org/display/REL/Nolana+%28R3+2022%29+Release+Notes).
Do these actions:

### i. Permissions, Tenant	
Permission ui-tenant-settings.settings.enabled - display name "Settings (Tenant): View" has been made invisible.
  Recommend removing "Settings (Tenant): View" from any users prior to upgrading to Nolana.
  You can also remove the permissions after upgrade by enabling Settings > Developer > Configuration > List invisible permissions in add perm menus and then editing the relevant user records.

### ii.  Data Import & Inventory
  Update to the default MARC Bib-to-Inventory Instance MAP:
  Existing mapping for 590 (Local note) updated so that 1st indicator = 0 triggers "Staff only" indication. Any other 1st indicator does not.
  If you would like to review the mapping change first, go to https://github.com/folio-org/mod-source-record-manager/blob/master/mod-source-record-manager-server/src/main/resources/rules/marc_bib_rules.json and search for 590. Review that section of the rules, and then if that handling is wanted for a particular library tenant, add that section to their equivalent map.
  Follow the [instruction](https://wiki.folio.org/display/FOLIJET/Updates+of+default+mapping+rules+for+R3+2022+Nolana+release) to update the rules.

### More preparatory steps
There might be more preparatory steps that you need to take for your installation. If you are unsure what other steps you might need to take, study carefully the Release Notes.  Do all actions in the column "Action required", as appropriate for your installation.


## II. Reinstall the Backend, Migrate from Morning Glory to Lotus
### II.i) Fetch a new version of platform-complete
Fetch the new release version of platform-complete, change into that directory: 
```
cd platform-complete
git fetch
```
There is a branch R3-2022-hotfix-1. We will deploy this version.
Check out this Branch.
Stash local changes. This should only pertain to stripes.config.js .
Discard any changes which you might have made on the install-jsons:

```
git restore install.json
git restore okapi-install.json
git restore stripes-install.json
git restore package.json
 
git stash save
git checkout master
git pull
git checkout R3-2022-hotfix-1
git stash pop
```

### II.ii) Upgrade Okapi
Upgrade the Okapi version and restart Okapi.
Read the Nolana Okapi version from install.json: **okapi-4.14.12**

Update the Okapi Debian package:
```
sudo add-apt-repository "deb https://repository.folio.org/packages/ubuntu focal/"
sudo apt-get update
sudo apt-get -y --allow-change-held-packages install okapi=4.14.12-1
```
Check Okapi logging properties in /etc/folio/okapi. Check that this line is in okapi.conf:
```
log4j_config="/etc/folio/okapi/log4j2.properties"
```
Edit log4j2.properties. Make sure Okapi logs into a file and define a RollingFileAppender.

Restart Okapi:

```
sudo systemctl daemon-reload
sudo systemctl restart okapi.service
```

Follow /var/log/folio/okapi/okapi.log . 

Now Okapi will re-start your modules. Follow the okapi.log. It will run for 5 minutes or so until all modules are up again. Check if all modules are running:

```
docker ps --all | grep "mod-" | wc
  64
```

Retrieve the list of modules which are now being enabled for your tenant (just for your information):

```
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules
...
}, {
  "id" : "okapi-4.14.12"
} ]
```

You should see 10 Edge modules, 48 Frontend modules (folio_\*), 64 Backend modules (mod-\*), if you are starting from Morning Glory, platform-complete + the Nolana version of Okapi (4.14.12).

### II.iii) Pull module descriptors from the central registry

A module descriptor declares the basic module metadata (id, name, etc.), specifies the module's dependencies on other modules (interface identifiers to be precise), and reports all "provided" interfaces. As part of the continuous integration process, each module descriptor  is published to the FOLIO Registry at https://folio-registry.dev.folio.org.

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" \
  -d { "urls": [ "https://folio-registry.dev.folio.org" ]  http://localhost:9130/_/proxy/pull/modules
```
Okapi log should show something like

```
 INFO  ProxyContext         283828/proxy REQ 127.0.0.1:51424 supertenant POST /_/proxy/pull/modules  okapi-4.14.12
 INFO  PullManager          Remote registry at https://folio-registry.dev.folio.org is version 4.14.12
 INFO  PullManager          pull smart
  ...
 INFO  PullManager          pull: 3466 MDs to insert
 INFO  ProxyContext         283828/proxy RES 200 93096323us okapi-4.14.12 /_/proxy/pull/modules
```

### II.iv) Deploy a compatible FOLIO backend


Check your Okapi environment:

```
 curl -X GET http://localhost:9130/_/env
```

At this point, (re-)configure the environment variables of your modules, as needed.
Study the release notes for any changes in module configurations.
Follow these instructions to change the environment variables for a module: [Change Environment Variables of a Module](https://wiki.folio.org/display/SYSOPS/Change+Environment+Variables+of+a+Module).

From Nolana release notes:
### i. Inventory single record import/quickMarc derive
  DB Read/Write split should be disabled for mod-source-record-manager. When mod-source-record-manager is deployed do not pass the environment variables for DB_HOST_READER and DB_PORT_READER (it won't be enabled by default).
 
### ii. Bulk Edit
  For mod-data-export-worker, add LOCAL environment variables discussed here: https://github.com/folio-org/mod-data-export-worker#environment-variables otherwise Bulk Edit file uploads will fail in Folio.

### iii. Data Import
  Provided script to clean up Job profiles in case linked Mapping or Action profiles were edited.
  Follow the instructions [instructions](https://wiki.folio.org/display/FOLIOtips/Scripts+for+Inventory%2C+Source+Record+Storage%2C+and+Data+Import+Cleanup) provided at point 11.

Deploy all backend modules of the new release with a single post to okapi's install endpoint. 
This will deploy and enable all new modules and undeploy the modules of the old version which are not needed anymore. Start with a simulation run:
```
  curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @/usr/folio/platform-complete/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
  curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @/usr/folio/platform-complete/okapi-install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=true\&preRelease=false\&tenantParameters=loadReference%3Dfalse
```

You can follow the progress on the terminal screen and/or in /var/lib/folio/okapi/okapi.log .

If that fails, remedy the error cause and try again until the post succeeds. In case of previous failures, old modules might not have been undeployed and will still be running. We will account for this later in the "clean up" section.


### II.iv.1) Post Upgrade
From Nolana release notes:
### i. Search
  Routing was changed to default. All indexes should be recreated.	
  During the upgrade process mod-search indices will need to recreate for both instance and authority as described [here](https://github.com/folio-org/mod-search#recreating-elasticsearch-index).

### ii. Permissions, Circulation
  With the permission "Settings (Circ): Can view loan history", the Save button on the Loan anonymization page is no longer visible (UICIRC-767).
  In addition, a new permission has been created, "Settings (Circ): Can edit loan history", for which the Save button on the Loan anonymization page is visible and can be selected (UICIRC-766).
  Update your users' permissions and/or permission sets, as required.

### iii. SMTP configuration
  SMTP configuration was moved from mod-configuration to mod-email.
  Read [Interesting Information for FOLIO SysAdmins](https://wiki.folio.org/display/FOLIOtips/Interesting+information+for+FOLIO+SysAdmins).


### II.v) Enable the frontend modules for your tenant

Use the parameter *deploy=false* for the frontend modules and post the complete list of modules install.json to the okapi install endpoint. This will enable all modules of the release version for your tenant. Don't load reference data if you are doing a system upgrade.

```
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @/usr/folio/platform-complete/install.json http://localhost:9130/_/proxy/tenants/diku/install?simulate=true\&preRelease=false
curl -w '\n' -D - -X POST -H "Content-type: application/json" -d @/usr/folio/platform-complete/install.json http://localhost:9130/_/proxy/tenants/diku/install?deploy=false\&preRelease=false\&tenantParameters=loadReference%3Dfalse
```

### II.vi) Cleanup
  
Clean up. Undeploy all unused containers.
Go through the list install.json, check if all modules mentioned there have actually been deployed for your tenant (compare the two lists):
```
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules
```
Also, look up in the list of deployed containers for backend modules if containers for old module versions are still deployed or if they have been deployed twice for the same module version:
```
docker ps --all | grep mod-
```

Required Actions:
 - undeploy old module versions, e.g. like this:
```
curl -w '\n' -D - -X DELETE http://localhost:9130/_/discovery/modules/mod-agreements-5.1.1
curl -w '\n' -D - -X DELETE http://localhost:9130/_/discovery/modules/mod-audit-2.4.2
```

### Result
  for Nolana HF#1
  65 backend modules, "mod-\*" are contained in the list install.json. 
  Those 65 backend modules are now being enabled for your tenant. 
  65 containers for those backend modules are running in docker on your system.

Now, finally once again get a list of the deployed backend modules:
  
  ```
  curl -w '\n' -D - http://localhost:9130/_/discovery/modules | grep srvcId | wc
 65
  ```
  
Compare this with the number of your running docker containers:
  
  ```
  docker ps --all | grep "mod-" | wc
    65
 docker ps --all | wc
    72
  ```
  
  The following containers are running on your system, but do not contain backend modules:
  
Stripes
  
3x Elasticsearch
  
Kafka
  
Zookeper
  
In sum, these are 6 containers without backend modules.
Also subtract the header line (of "docker ps"), and you will arrive at 72 - 7 = 65 containers with backend modules (the figure of the first "wc").

Modules enabled for your tenant:
```
curl -w '\n' -XGET http://localhost:9130/_/proxy/tenants/diku/modules | grep id | wc
  132
```

This number is the sum of the following:

 - 57 Frontend modules
 -  9 Edge modules
 - 65 Backend modules (R3-2022)
 -  1 Okapi module (4.14.12)

These are all R3-2022 (Nolana) modules.

The backend of the new tenant is ready.  Now, you have to set up a new Stripes instance for the frontend of the tenant.


## III. Frontend installation : Stripes

Install Stripes and nginx in a Docker container. Use the docker file of platform-complete.
Check if everything looks o.k. in platform-complete/docker. If you have successfully installed last time, you should not need to change anything. Just do a "git diff".

```
cd ~/platform-core
edit docker/Dockerfile
    ARG OKAPI_URL=http(s)://<YOUR_DOMAIN_NAME>/okapi
    ARG TENANT_ID=diku # Or change to your tenant's name
```
   
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


```
  edit stripes.config.js
      okapi: { 'url':'http(s)://<YOUR_DOMAIN_NAME>/okapi', 'tenant':'diku' },
```


Finally, build the docker container which will contain Stripes and nginx :
  
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

This will run for approximately 10 minutes. 

Stop the old Stripes container: docker stop <container id of your old stripes container which is still running>

Completely free your port 80. Look if something is still running there: e.g., do
  
```
netstat -taupn | grep 80
```

If there should be something still running on port 80, kill these processes.

Start the stripes container:
 
  Redirect port 80 from the outside to port 80 of the docker container:
  
```
  nohup docker run -d -p 80:80 stripes
```
  
Log in to your frontend: E.g., go to http://<YOUR_HOST_NAME>/ in your browser. 

  - Can you see the Nolana modules in Settings - Installation details ?

  - Do you see the right okapi version, 4.12.12-1 ? 

  - Does everything look good ?

If so, remove the old stripes container: docker rm \<container id of your old stripes container\> .
  
Congratulation, your system is ready!
