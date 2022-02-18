
---
title: "Install FOLIO"
linkTitle: "Install FOLIO"
date: 2020-06-11
weight: 10
tags: ["parenttopic"]
---

## Types of installations and deployments

You can work with, install and deploy FOLIO in different ways:

* Pre-built Vagrant boxes
* Single-server deployment
* Kubernetes deployment

### Pre-built Vagrant boxes

If you just want to try FOLIO without installing it, you can run one of the pre-built Vagrant boxes. This will take a couple of minutes to download and run a virtual machine with a FOLIO instance and sample data that can be used right away.

See [Vagrant boxes]({{< ref "vagrantboxes.md" >}}) for more information.

### Single-server

You can choose to host and operate FOLIO locally. In this scenario, the installation of FOLIO is self-managed, and is performed on a single-server without the usage of software orchestration solutions such as Kubernetes. This configuration is recommended if you have a single tenant or you can estimate beforehand the number of tenants and resources that your FOLIO instance will handle; otherwise you should consider a Kubernetes deployment.

One of the goals of FOLIO is extensibility. Libraries and vendors can build on existing apps, or develop new apps that extend the library into areas such as campus ERP, research administration, and more. In addition to the coding and testing tools, a developer will probably want to explore the whole FOLIO system, and would need a local instance. Usually, this is a virtual machine with a single-server deployment of FOLIO.

See [Single server with containers]({{< ref "singleserverwithcontainers.md" >}}) or [Single server without containers]({{< ref "singleservernocontainers.md" >}}) for more information.

### Kubernetes

FOLIO's built-in multi-tenant capabilities make it straightforward to harness economies of scale and improve efficiencies for libraries. In this scenario, FOLIO will be deployed on a cluster of servers using Kubernetes for orchestration. This configuration allows the addition of new tenants and hardware resources on demand and it is ideal if you need to scale-up your FOLIO instance in the future.

See [Kubernetes example]({{< ref "kubernetesex.md" >}}) for more information.

## Prerequisites

### Memory

At least 24 GB memory are needed to run the official [platform-complete](https://github.com/folio-org/platform-complete) set of FOLIO modules.

### PostgreSQL

FOLIO requires PostgreSQL 12 or any later version.

`pg_hba.conf` must be configured for `md5` [password authentication](https://www.postgresql.org/docs/current/auth-password.html). Some PostgreSQL distributions default to `scram-sha-256` password authentication failing the FOLIO installation with this error message:

```
Opening SQLConnection failed: com/ongres/scram/common/stringprep/StringPreparation
java.lang.NoClassDefFoundError: com/ongres/scram/common/stringprep/StringPreparation
```

The FOLIO development teams are working on enabling the more secure `scram-sha-256` method, see [FOLIO-2411](https://issues.folio.org/browse/FOLIO-2411) and the issues it lists in its Issues Link section.
