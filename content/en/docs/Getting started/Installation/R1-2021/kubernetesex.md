---
title: "Kubernetes example"
linkTitle: "Kubernetes example"
weight: 30
description: >
  Note: This content is currently in draft status.
tags: ["subtopic"]
---
 The Rancher/Kubernetes solution allows for the addition of new tenants and hardware resources on demand.  It is ideal if you need to scale-up your FOLIO instance in the future.  This guide describes a Rancher/Kubernetes installation.

![Kubernetes Deployment](/img/kubernetes_deployment.png)

## Deployment environments
FOLIO is a system built on micro-services.  It is designed to be a multi-tenant cloud environment.  Having said that, some institutions will also choose to deploy FOLIO on premise.  The community can expect a wide range of deployment environments and mechanisms.  This guide will describe some of the issues that need to be understood in a Rancher/Kubernetes environment and the choices around those issues.  We will also label what are felt to be best practices when possible.

### Public cloud vs on premise
A production ready FOLIO deployment will need adequate infrastructure for reliable service.  The institution will have to decide where and how to deploy FOLIO.  The public cloud vs on premise choice will define sets of alternatives for technology and tooling.  For example, if a site chooses to deploy in AWS then it will have a set of tooling and technology that are not available on premise.  It will also possibly use proprietary solutions such as RDS.  The deployment process will be adapted for the specifics of each organization.

### Virtual vs physical
Virtualization has become a common practice in data centers due to the convenience of managing virtual environments.  However, some institutions may prefer physical servers for various reasons.  The virtual vs physical choice need not be dictated by the cloud vs on premise choice.   For example, you can run VMware in AWS.  Fortunately, the deployment process for a FOLIO instance is practically the same in both scenarios.

### Database considerations
FOLIO has been designed and developed with PostgreSQL as the default database engine.  Although using Postgres isn't mandatory, it is recommended for the vast majority of use cases.  The main considerations with PostgreSQL and FOLIO are:

* Use a Cloud service such as Amazon RDS or Amazon Aurora.
* Set up a dedicated database server or cluster.
* Implement PostgreSQL-as-a-Service using Kubernetes.
* Use independent PostgreSQL servers for the components of FOLIO.

These choices will depend on each organization's needs.  However, from the FOLIO deployment perspective you only will need an accessible PostgreSQL service.

### Orchestration tools
There are many orchestration tools for both on premise and cloud solutions, including but not limited to: Kubernetes, OpenShift, Docker Swarm or ECS (Amazon). In theory, you can use any of them to deploy FOLIO due to its microservice architecture, but the Rancher/Kubernetes solution is the most common within the FOLIO community and therefore it will be covered in this manual.


## Deploy Rancher server
You will need a Rancher server for managing the Kubernetes cluster for FOLIO.  This server should be accessible for all of the Kubernetes nodes in your cluster.   If you are using AWS, you will need to configure a VPC, subnets and route tables. A sample configuration can be found [here](https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO).

1. Install Docker. The installation process of Docker can be different for each linux distribution an for your Cloud provider.  In this example, Ubuntu server will be used.

```
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
```

2. Run Rancher.  Rancher is bundled in a Docker container.  You can execute it by running the following docker command.

```
sudo docker run -d --privileged --restart=unless-stopped --name rancher-server --ulimit nofile=4096:4096 -p 80:80 -p 443:443 rancher/rancher:latest
```
**Note**:   You can change the ports redirects, configure SSL certificates and other configurations.  If you need more information, visit the Rancher [documentation](https://rancher.com/docs/rancher/v2.x/en/installation/other-installation-methods/single-node-docker/).  When the Rancher container is up and running, you can access the Rancher GUI in a browser and set the administrator password.

## Setup a PostgreSQL server

If you want to set up a dedicated PostgreSQL server, you can follow the instructions in the Single server guides or you can check the official PostgreSQL documentation for the linux distribution that you are using.  Also, many Cloud providers provide operating system templates and manuals for this task.

Alternatively, you can deploy PostgreSQL on the Kubernetes cluster using https://www.crunchydata.com/ or use cloud services such as Amazon RDS.  In any case, the PostgreSQL server should be reachable to the Kubernetes cluster in FOLIO and you should have superuser access.

## Configure a Kubernetes cluster

### Configuring a registry of images

You will need to build, push and pull docker images during the installation process for FOLIO.  For this task, you need a docker registry.  You can use [Docker Hub](https://hub.docker.com/),  a private registry or [run a local registry](https://docs.docker.com/registry/deploying/). 

For small organizations, you can simply create an account on Docker Hub and publish your images in a repository.  If you are using Cloud services, you can use services such as Amazon ECS. 

### Setup Kubernetes cluster

The deployment process for FOLIO is executed by the Rancher server that manages the Kubernetes cluster.  You need to connect Rancher to a Kubernetes cluster or create a new one. 

If you are using a cloud provider such as Amazon or Azure you can follow the instructions for your specific provider in the official documentation for Rancher for [hosted kubernetes clusters](https://rancher.com/docs/rancher/v2.x/en/cluster-provisioning/hosted-kubernetes-clusters/).  On the other hand, if you are using a virtualization solution (e.g vShpere) you can use Rancher Node [templates](https://rancher.com/docs/rancher/v2.x/en/cluster-provisioning/rke-clusters/node-pools/vsphere/provisioning-vsphere-clusters/) that will help you to automate the setup process. 

You can also manually create a new cluster connecting each node to Rancher.  Each node is a server running a Docker service that is configured by Rancher in order to create a cluster. 

Each node must be accessible to the Rancher server and have docker installed. Additionally, you can configure docker registries if you use private image registries. An example of the nodes configuration can be found [here](https://github.com/folio-org/folio-install/tree/kube-rancher/alternative-install/kubernetes-rancher/TAMU#prerequisites-for-kubernetes-hosts). 

The connection between the nodes and the rancher server can be executed using the instructions that follow.

In Rancher server:

1. Add a Cluster.
* Enter the name of the cluster (e.g folio-cluster).
* Select Custom, in the Kubernetes Options.
* (Optional) Configure private registries in the Private Registry section.
* Click Next.
2. Cluster Options
* Select all the roles: etcd, Control, and Worker.
* (Optional) Rancher auto-detects the IP addresses used for Rancher communication and cluster communication. You can override these using Public Address and Internal Address in the Node Address section.
* Copy the command displayed on screen to your clipboard.
* Log in to your first Kubernetes Linux host using your preferred shell, such as PuTTy or a remote Terminal connection.  Run the command copied to your clipboard. Repeat this for each additional node you wish to add.
3. When you finish running the command on all of your Kubernetes Linux hosts, click Done inside of Rancher GUI.

If the process was successful, you have a new cluster configured in Rancher.

### Create FOLIO project and namespace in Rancher

Within Rancher, you have to create a new project and namespace for your FOLIO deployment.  The projects and namespaces are concepts in Kubernetes and Rancher that divide a cluster into “virtual clusters” for easier management.

To create a new project and namespace in Rancher:

1. Log in to Rancher.
2. Select the new cluster (created in the previous section).
3. In the top menu, go to ‘ Projects/Namespaces’.
4. Add Project.
* Enter a name for the project (e.g folio-project).
* Create.
5. In the projects list, find the new project.
6. Add Namespace.
* Enter a name for the namespace (e.g folio).
* Create.

Now, you should be able to find the newly created project and namespace for Folio.


Optionally, you can add DockerHub or private registries to the new project.

1. Go to the Projects/Namespaces section.
2. Select the recently created project.
3. In the top menu, go to Resources/Secrets.
4. Select Registry Credentials.
5. Add Registry.
* Select Dockerhub or provide credentials for a private registry.
* Click save.

## Deploy Okapi

### Create the Okapi database

Before you deploy Okapi on the cluster, you must create databases and users on the PostgreSQL server. The resources that you should create are the following:

* A database for Okapi configurations (e.g. okapi). 
* A database for Folio modules’ data (e.g. okapi_modules).
* A superuser that owns the Okapi database (e.g. okapi).
* A superuser that owns the modules database (e.g. folio_admin).

The creation of these resources can be accomplished using psql on the PostgreSQL server or via a Rancher Job that runs on the cluster. 

In the latter case, you can download Docker files and scripts from the FOLIO community and build a Docker image that can be executed on the cluster as a Job. Before you build an image to be executed, you will need the following items:
* Install Docker on your computer.
* Create or reuse an account from a image registry.
* Log in to your account with Docker. 
* Create a repository in your image registry.  If you do not have a private registry you can create an account on https://hub.docker.com/ and create the repository there.


#### Build the job image 

1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/create-database 
2. Navigate to the downloaded folder.
3. Custom the create-db.sh script.
* The script is preconfigured for a RDS PostgreSQL server.
* If you do not use this kind of service, you can remove the RDS-specific configurations.
    + Comment PSQL commands that start with ‘GRANT rds_superuser’.
    + Replace ‘CREATEROLE’ with ‘SUPERUSER’ in the ALTER ROLE PSQL statements.
4. Build the image (e.g docker build -t dockerhubusername/create-database:v1 . )
5. Push the image to the registry (run docker push dockerhubusername/create-database:v1)

#### Create a secret in Rancher
The PostgreSQL server credentials can be securely stored in Rancher as a Secret.  The Secret can be used later in the Job to establish the connection with the server.

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Secrets (Storage / Secrets).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the secret (e.g init-folio-database).
* Enter the following Key-Value entries.
    + PG_MASTER_USER=postgres
    + PG_MASTER_USER_PASSWORD=password
    + PG_OKAPI_USER=okapi
    + PG_OKAPI_USER_PASSWORD=okapi25
    + PG_FOLIO_ADMIN_USER=folio_admin
    + PG_FOLIO_ADMIN_USER_PASSWORD=password
    + PG_DATABASE_OKAPI=okapi
    + PG_DATABASE_OKAPI_MODULES=okapi_modules
    + PG_DB_HOST= <PostgreSQL server IP>
* Click create

Make sure that you use strong passwords for new users and take into account that the administration superuser of PostgreSQL must be able to do login from the Kubernetes cluster.

Create and run the database creation Job.
1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Jobs (Workload / Jobs).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Job (e.g create-database).
* Enter the container image (dockerhubusername/create-database:v1).
* Add the init-folio-database secret to the Environment Variables.
    + Environment Variables / Add
    + Add From Resource
    + Type / Secret.
    + Source / init-folio-database.
    + Enter an alias for the secret.
* Click create.

If the Job was successful, the user and database must have been created on the PostgreSQL server. You can examine the logs of the job in Rancher.  Go to Workload / Jobs in the Cluster Explorer view.  Select the create-database Job from the list and open the logs of the pod created by Kubernetes.

### Build and deploy Okapi

Once the database for Okapi has been created, you can run Okapi.  For this task, you will need to download and compile Okapi from its source code on Github and build an image that can be deployed on Kubernetes as a scalable deployment. Fortunately, there is a pre-configured docker project that can be reused for this task.

#### Build the Okapi image
1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/okapi 
2. Navigate to the downloaded folder.
3. Edit the version of Okapi (Dockerfile).
* The Docker file uses an outdated version of Okapi (v2.29.3) that is currently broken.
* You should use a newer version.  v3.1.2 or higher is recommended.
* The version should be changed in the line ‘RUN git clone ...’
* The complete list of releases can be found [here](https://github.com/folio-org/okapi/tags)
4. Build the image (e.g docker build -t dockerhubusername/okapi:v1 . ).
5. Push the image to the registry (run docker push dockerhubusername/okapi:v1).

#### Create a secret for Okapi
You should create a secret for Okapi (e.g. okapi-config) in the same way that the secret was created for the create-database Job. This secret will have the following entries:

* INITDB=true
* PG_HOST=<PostgreSQL server IP>
* PG_PORT=5432
* PG_USERNAME=okapi
* PG_PASSWORD=okapi25
* PG_DATABASE=okapi
* OKAPI_COMMAND=dev
* OKAPI_PORT=9130
* OKAPI_URL=http://okapi:9130
* OKAPI_HOST=okapi
* OKAPI_CLUSTERHOST=okapi
* OKAPI_NODENAME=okapi
* OKAPI_LOGLEVEL=DEBUG
* OKAPI_STORAGE=postgres

#### Deploy Okapi
1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Deployments (Workload / Deployments).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Deployment (e.g okapi).
* Enter the container image (dockerhubusername/okapi:v1).
* Add the okapi-config secret to the Environment Variables.
    + Environment Variables / Add
    + Add From Resource
    + Type / Secret.
    + Source / okapi-config.
    + Enter an alias for the secret.
* Click create.

If successful, an Okapi deployment should be running on the Kubernetes cluster and the Okapi database should be initialized.  The logs of the Okapi can be found on the pods of the deployment (Workload / Deployments / Pods).

Once Okapi has started successfully, the key ‘INITDB’ of the okapi-config secret should be set to false since the database initialization process is no longer required for the new Pods of the deployment.


### Deploy back-end modules

In a Kubernetes installation of FOLIO, each backend module will be executed as a Kubernetes Deployment.  These Kubernetes Deployments can be created through a YAML file or Helm Charts. 

The specific list of modules can be obtained from the FOLIO Base (platform-core) and FOLIO Extended (platform-complete) projects on Github.  In this guide, the FOLIO Base suite was used, but you can easily access the extended suite by changing ‘platform-core’ for ’platform-complete’ in the instructions.

1. Download the git repository.
* git clone https://github.com/folio-org/platform-core
2. Move to the source directory.
* cd plaform-core
3. Switch to a stable branch.
* git checkout q3-2020
4. The lists of backend modules can be found in the files:
* okapi-install.json
* install-extras.json


#### Generate a YAML file for the modules

1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/modules-yaml-generator 
2. Navigate to the downloaded folder.
3. Copy the lists of modules (okapi-install.json and install-extras.json).
4. Run YAML generation Docker container.
* docker run -it --mount src="$(pwd)",target=/usr/local/bin/folio-yaml-builder,type=bind maven:3.6.1-jdk-8-alpine /bin/bash
* On the container’s command line.
    + cd /usr/local/bin/folio-yaml-builder/
    + mvn clean compile exec:java -Dexec.args="-o=backend-modules.yaml -i=okapi-install.json -i=install-extras.json"
    + exit
5. The file backend-modules.yaml should be updated now.
* Depending on the version of Kubernetes that you are using, you may need to manually adapt this YAML file (e.g update apiVersion).

#### Deploy the YAML file in Rancher
1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. In the top menu, go to ‘ Projects/Namespaces’.
4. Select the FOLIO project (e.g folio-project).
5. Go to Import YAML.
* Copy the content of the file backend-modules.yaml or use the Read from a file button.
* Change the Import Mode to Namespace.
* Select the FOLIO namespace.
* Click import.

If successful, Kubernetes will download and execute the modules on the cluster.  This process can take a while.

Alternatively, the FOLIO community has developed a Helm repository that can automate the deployment of backend modules.  If you are familiar with Helm, you should checkout https://github.com/folio-org/folio-helm.


### Add a load balancer for Okapi

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. In the top menu, go to ‘Projects/Namespaces’.
4. Select the FOLIO project (e.g folio-project).
5. Select the Load Balancing tab.
6. Click on Add Ingress
* Enter a name for Ingress (e.g. ingress-okapi)
* Choose the namespace created for the FOLIO deployment.
* Choose a hostname to use.
* Enter the DNS name of the server.
* Add Target Backend type; Service.
    + Enter the path / .
    + Select the okapi service.
    + Enter the port number 9130.
* Click save.

If successful, Okapi should be accessible on http://dnsname.com:9130. For more information about Ingresses and Load Balancing, refer to the Rancher Documentation: https://rancher.com/docs/rancher/v2.x/en/k8s-in-rancher/load-balancers-and-ingress/ingress/ 

Additionally, some cloud providers have custom Load Balancing implementations.  For more information, refer to the Rancher documentation https://rancher.com/docs/rancher/v2.x/en/k8s-in-rancher/load-balancers-and-ingress/load-balancers/#layer-4-load-balancer. 

## Create a new tenant

### Create new tenants

Create a new Secret for the tenant (e.g. diku-tenant-config). 
* ADMIN_PASSWORD=admin
* ADMIN_USER=diku_admin
* OKAPI_URL=http://okapi:9130
* PURGE_DATA=true
* REF_DATA=true
* REGISTRY_URL=http://okapi:9130/_/proxy/modules
* SAMPLE_DATA=true
* TENANT_DESC=Danish Library Technology Institute
* TENANT_ID=diku
* TENANT_NAME=Datalogisk Institut

If you do not want sample data to be added to you tenant, you can set SAMPLE_DATA to false.

#### Built the create-tenant Job image

1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/create-tenant 
2. Navigate to the downloaded folder.
3. Build the image (e.g docker build -t dockerhubusername/create-tenant:v1 . ).
4. Push the image to the registry (run docker push dockerhubusername/create-tenant:v1).

#### Deploy the create-tenant Job

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Jobs (Workload / Jobs).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Job (e.g create-tenant).
* Enter the container image (dockerhubusername/create-tenant:v1).
* Add the diku-tenant-config secret to the Environment Variables.
    + Environment Variables / Add
    + Add From Resource
    + Type / Secret.
    + Source / diku-tenant-config.
    + Enter an alias for the secret.
* Click create.

#### Build the create-deploy Job image
1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/create-deploy 
2. Navigate to the downloaded folder.
3. Copy the modules files from platform-core to the install folder.
* okapi-install.json
* install-extras.json
* stripes-install.json
4. Build the image (e.g docker build -t dockerhubusername/create-deploy:v1 . )
5. Push the image to the registry (run docker push dockerhubusername/create-deploy:v1).

#### Deploy the create-deploy Job

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Jobs (Workload / Jobs).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Job (e.g create-deploy).
* Enter the container image (dockerhubusername/create-deploy:v1).
* Add the diku-tenant-config secret to the Environment Variables.
    + Environment Variables / Add
    + Add From Resource
    + Type / Secret.
    + Source / diku-tenant-config.
    + Enter an alias for the secret.
* Click create.

If successful, a new tenant is created in Okapi and the modules of the FOLIO Base Apps are enabled for the new tenant.


### Bootstrap superuser for the tenant

You must create a superuser for the new tenant.  The superuser will be able to access the administrative section of FOLIO, create new users, assign roles, etc.  The creation process can be executed with the help of a Perl script.

#### Built the bootstrap-superuser Job image

1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/bootstrap-superuser 
2. Navigate to the downloaded folder.
3. Edit the superuser credentials in Dockerfile.
* TENANT_ID='diku'
* ADMIN_USER='tenant_admin'
* ADMIN_PASSWORD='password'
* OKAPI_URL='http://okapi:9130'
4. Build the image (e.g docker build -t dockerhubusername/bootstrap-superuser:v1 . )
5. Push the image to the registry (run docker push dockerhubusername/bootstrap-superuser:v1).

**Note**:  You also can create a secret for credentials in Rancher instead of hard coding them in the Dockerfile.

#### Deploy the bootstrap-superuser Job

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Jobs (Workload / Jobs).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Job (e.g bootstrap-superuser).
* Enter the container image (dockerhubusername/bootstrap-superuser:v1).
* Add the credentials’ secret if you created one.
* Click create.

### Secure Okapi

Okapi by default allows all requests to the supertant when you deploy it.  This configuration simplifies the creation and configuration of new tenants, users, modules, etc.   However, Okapi must be secured when it is published on the Internet. 

You can secure Okapi with the secure-supertenant script that is used in the Single server installation guide. This script creates a superuser for Okapi and enables authentication/authorization validations for every request sent to Okapi.

Alternatively, if you want to secure Okapi from inside the Kubernetes cluster you can create a Job using this existing Docker project https://github.com/folio-org/folio-install/tree/kube-rancher/alternative-install/kubernetes-rancher/TAMU/deploy-jobs/secure-okapi . The build and execution of this Job would be similar to the bootstrap-superuser Job mentioned above. The parameters that you have to configure in this Job are:

* OKAPI_URL='http://okapi:9130'
* SUPER_USR='superuser' 
* SUPER_PSSWD='password'
* TENANT_ID='supertenant'
* SAMPLE_DATA='false'
* REF_DATA='true'

For more information about Securing Okapi, refer to https://github.com/folio-org/okapi/blob/master/doc/securing.md .

## Deploy Stripes

In order to deploy Stripes, you will need to download the source code for the specific FOLIO suite that you want to install (platform-core or platform-complete). You can use the files downloaded in the section Deploy backend modules.

### Build and deploy Stripes image

#### Build the docker image of Stripes.

1. Download the folder https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/EBSCO/stripes-diku 
2. Navigate to the downloaded folder.
3. Copy the files from platform-core .
* *.json
* *.js
* Yarn.lock
* tenant-assets/*
4. Edit the Dockerfile.
* TENANT_ID=diku
* OKAPI_URL=http://okapi.example.org:9130
    + Use the DNS name or public IP address of the server. This URL must be accessible for the clients of FOLIO.
5. Build the image (e.g docker build -t dockerhubusername/stripes:v1 . )
6. Push the image to the registry (run docker push dockerhubusername/stripes:v1).

#### Deploy Stripes on the cluster

1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. Go to the cluster dashboard (Cluster Explorer).
4. Go to the Deployments (Workload / Deployments).
5. Click Create.
* Choose the namespace created for the FOLIO deployment.
* Enter the name for the Deployment (e.g stripes).
* Enter the container image (dockerhubusername/stripes:v1).
* Click create.

If successful, Stripes should be running on the cluster in the internal URL http://stripes.  You need to configure an Ingress or Load Balancer in order to forward this service to the external DNS name or public IP of the server.

### Add a load balancer for Stripes
1. Go to the Rancher GUI.
2. Select the cluster that was created for the FOLIO deployment.
3. In the top menu, go to ‘ Projects/Namespaces’.
4. Select the FOLIO project (e.g folio-project).
5. Select the Load Balancing tab.
6. Click on Add Ingress
* Enter a name for Ingress (e.g. ingress-stripes)
* Choose the namespace created for the FOLIO deployment.
* Choose Specify a hostname to use.
* Enter the DNS name of the server.
* Add Target Backend type; Service.
    + Enter the path / .
    + Select the stripes service.
    + Enter the port number 80.
* Click save.










