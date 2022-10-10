---
title: "Settings > Software versions"
linkTitle: "Software versions"
date: 2022-04-14
weight: 500
tags: ["subtopic"]
---

The software versions page lists all components that run for the current tenant.  When reporting a bug try to communicate the version of the affected module to help the support and development teams.

## Permissions

There is no explicit permission to view Settings > Software versions. If a FOLIO user has access to view any area of Settings, they will also be able to see Settings > Software versions.

## Page layout

The page shows three columns.

* User interface: Information about Stripes (the FOLIO UI framework) and its associated infrastructure
    * Foundation
    * User Interface - App Modules
    * User Interface - Plugin Modules
    * User Interface - Settings Modules
    * User Interface - Handler Modules
* Okapi: Information about Okapi (the FOLIO API gateway) and its associated infrastructure
    * Base Okapi Version
    * Okapi Modules
    * Okapi Interfaces
* UI/Service Dependencies: Information about dependencies between different areas of FOLIO infrastructure
    * Foundation
    * App modules
    * Plugin modules
    * Handler modules


## Flower release

Look for these modules to find out which FOLIO flower release the system runs. This is a good indicator if the official `platform-complete` set of modules has been installed and no individual changes have been made.

| mod-configuration | mod-inventory-storage | mod-login-saml | release |
| ----- | ------- | ----- | - |
| 5.8.0 | 24.1.0  | 2.4.9 | [Morning Glory R2-2022-GA](https://github.com/folio-org/platform-complete/blob/R2-2022/install.json) |
| 5.7.9 | 23.0.5  | 2.4.9 | [Lotus R1-2022-hotfix-3](https://github.com/folio-org/platform-complete/blob/R1-2022-hotfix-3/install.json) |
| 5.7.9 | 23.0.5  | 2.4.8 | [Lotus R1-2022-hotfix-2](https://github.com/folio-org/platform-complete/blob/R1-2022-hotfix-2/install.json) |
| 5.7.8 | 23.0.5  | 2.4.5 | [Lotus R1-2022-hotfix-1](https://github.com/folio-org/platform-complete/blob/R1-2022-hotfix-1/install.json) |
| 5.7.6 | 23.0.2  | 2.4.4 | [Lotus R1-2022-GA](https://github.com/folio-org/platform-complete/blob/R1-2022-GA/install.json) |
| 5.7.7 | 22.0.4  | 2.4.5 | [Kiwi R3-2021-hotfix-3](https://github.com/folio-org/platform-complete/blob/R3-2021-hotfix-3/install.json) |
| 5.7.5 | 22.0.4  | 2.4.2 | [Kiwi R3-2021-hotfix-2](https://github.com/folio-org/platform-complete/blob/R3-2021-hotfix-2/install.json) |
| 5.7.4 | 22.0.4  | 2.4.2 | [Kiwi R3-2021-hotfix-1](https://github.com/folio-org/platform-complete/blob/R3-2021-hotfix-1/install.json) |
| 5.7.3 | 22.0.4  | 2.3.2 | [Kiwi R3-2021-GA](https://github.com/folio-org/platform-complete/blob/R3-2021-GA/install.json) |
| 5.7.4 | 21.0.10 | 2.4.1 | [Juniper R2-2021-hotfix-6](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-6/install.json) |
| 5.7.4 | 21.0.10 | 2.3.2 | [Juniper R2-2021-hotfix-5](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-5/install.json) |
| 5.7.2 | 21.0.9  | 2.2.1 | [Juniper R2-2021-hotfix-4](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-4/install.json) |
| 5.7.1 | 21.0.9  | 2.2.1 | [Juniper R2-2021-hotfix-3](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-3/install.json) |
| 5.7.0 | 21.0.3  | 2.2.1 | [Juniper R2-2021-hotfix-2](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-2/install.json) |
| 5.7.0 | 21.0.3  | 2.2.1 | [Juniper R2-2021-hotfix-1](https://github.com/folio-org/platform-complete/blob/R2-2021-hotfix-1/install.json) |
| 5.7.0 | 21.0.3  | 2.2.1 | [Juniper R2-2021-GA](https://github.com/folio-org/platform-complete/blob/R2-2021-GA/install.json) |
