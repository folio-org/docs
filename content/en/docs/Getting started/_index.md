---
title: "Getting Started"
linkTitle: "Getting Started"
weight: 200
description: >
  Note: This content is currently in draft status.
---

Thinking about getting started with FOLIO?  Check out the resources below to familiarize yourself with the platform.

## See FOLIO in action

Check out these videos to learn about FOLIO:

* [FOLIO videos on the Open Library Foundation](https://www.youtube.com/c/OpenLibraryFoundation)
* [More FOLIO videos](https://www.youtube.com/watch?v=pTKjaE99QI4&list=PLMocoPoiGkwfNHau9jqASXk5BAwcd5ekk)

## Ready to experience FOLIO for yourself?

Access one of our demo sites and explore FOLIO features and functionality.

Login: diku_admin / admin

* [Current release](https://folio-goldenrod.dev.folio.org)
* [Previous release](https://folio-fameflower.dev.folio.org)

### Work with a demo site

Once you've accessed a demo site, you can experiment with the platform to see how it works.  Some examples of things you can try include:

* Check out an item, and check it back in
* Update an item record with QuickMARC
* Update licenses and agreements for an electronic resource
* View and edit a patron record

## Install FOLIO for yourself

You've played with the platform, and now you're ready to install something for yourself. There are different ways to set up and run FOLIO. The type of installation you do and the components you install depends upon your goals.

### Core vs. complete

FOLIO is a large system and can take considerable space and resources to install.  The inclusive version of the system is called "platform-complete" and contains all FOLIO related modules. For evaluation or other purposes, you may want to install a pared down version of the platform that takes up less space and still enables you to work with a functioning system. FOLIO refers to this pared down version as "platform-core". It is the minimally viable subset of system components that are needed to run FOLIO.

Some reasons to use "platform-core" include:

* You're a developer, and want to install a working subset of FOLIO components for your development effort
* You're a developer, and want to spin up a test environment to check your work
* You're a system administrator, and want to install FOLIO so library staff can get a feel for the system
* You're a commercial vendor, and you're considering providing FOLIO services

### Types of installations and deployments

You can work with, install and deploy FOLIO in different ways:

* Pre-built Vagrant boxes
* Single-server deployment
* Kubernetes deployment

#### Pre-built Vagrant boxes

If you just want to try FOLIO without installing it, you can run one of the pre-built Vagrant boxes. This will take a couple of minutes to download and run a virtual machine with a FOLIO instance and sample data that can be used right away.

#### Single-server

You can choose to host and operate FOLIO locally. In this scenario, the installation of FOLIO is self-managed, and is performed on a single-server without the usage of software orchestration solutions such as Kubernetes. This configuration is recommended if you have a single tenant or you can estimate beforehand the number of tenants and resources that your FOLIO instance will handle; otherwise you should consider a Kubernetes deployment.

One of the goals of FOLIO is extensibility. Libraries and vendors can build on existing apps, or develop new apps that extend the library into areas such as campus ERP, research administration, and more. In addition to the coding and testing tools, a developer will probably want to explore the whole FOLIO system, and would need a local instance. Usually, this is a virtual machine with a single-server deployment of FOLIO.

#### Kubernetes

FOLIO's built-in multi-tenant capabilities make it straightforward to harness economies of scale and improve efficiencies for libraries. In this scenario, FOLIO will be deployed on a cluster of servers using Kubernetes for orchestration. This configuration allows the addition of new tenants and hardware resources on demand and it is ideal if you need to scale-up your FOLIO instance in the future.
