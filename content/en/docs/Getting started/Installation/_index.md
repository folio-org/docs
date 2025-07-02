
---
title: "Install FOLIO"
linkTitle: "Install FOLIO"
date: 2025-01-06
weight: 10
tags: ["parenttopic"]
---

## Types of installations and deployments

You can work with, install and deploy FOLIO in different ways:

* Single-server deployment
* Kubernetes deployment

### Single-server deployment

Currently we don't have complete installation instructions for a single-server deployment in the Quesnelia release.

Work in progress is [Eureka Single Server Fresh Install](https://folio-org.atlassian.net/wiki/spaces/FOLIJET/pages/441843733/Single+Server+Fresh+Install) and [eureka-platform-bootstrap](https://github.com/folio-org/eureka-platform-bootstrap).

### Kubernetes

FOLIO's built-in multi-tenant capabilities make it straightforward to harness economies of scale and improve efficiencies for libraries. In this scenario, FOLIO will be deployed on a cluster of servers using Kubernetes for orchestration. This configuration allows the addition of new tenants and hardware resources on demand and it is ideal if you need to scale-up your FOLIO instance in the future.

See [Kubernetes example]({{< ref "kubernetesex.md" >}}) for more information.

## Prerequisites

### Memory

At least 24 GB memory are needed to run the official [platform-complete](https://github.com/folio-org/platform-complete) set of FOLIO modules.

### Infrastructure

FOLIO requires
* a PostgreSQL server
* an OpenSearch or Elasticsearch server
* a Kafka server

Optional is
* a MinIO object store or an Amazon S3 bucket

#### PostgreSQL

FOLIO requires PostgreSQL 16 or any later version.

`pg_hba.conf` must be configured for `md5` [password authentication](https://www.postgresql.org/docs/current/auth-password.html). Some PostgreSQL distributions default to `scram-sha-256` password authentication failing the FOLIO installation with this error message:

```
Opening SQLConnection failed: com/ongres/scram/common/stringprep/StringPreparation
java.lang.NoClassDefFoundError: com/ongres/scram/common/stringprep/StringPreparation
```

The FOLIO development teams are working on enabling the more secure `scram-sha-256` method, see [FOLIO-2411](https://issues.folio.org/browse/FOLIO-2411) and the issues it lists in its Issues Link section.
