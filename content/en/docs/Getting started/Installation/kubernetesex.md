---
title: "Kubernetes example"
linkTitle: "Kubernetes example"
weight: 30
description: 
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
You will need a Rancher server for managing the Kubernetes cluster for FOLIO.  This server should be accessible for all of the Kubernetes nodes in your cluster.   If you are using AWS, you will need to configure a VPC, subnets and route tables.

A sample configuration and deployment procedure can be found at
<https://github.com/folio-org/folio-install/tree/master/alternative-install/kubernetes-rancher/TAMU>.
