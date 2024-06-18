---
title: "Settings > Software versions"
linkTitle: "Software versions"
date: 2023-04-21
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

| mod-inventory | mod-inventory-storage | release |
| ----- | ------- | - |
| 20.2.6  | 27.1.3  | [Quesnelia R1-2024](https://github.com/folio-org/platform-complete/blob/R1-2024/install.json) |
| 20.1.12 | 27.0.6  | [Poppy R2-2023-csp-5](https://github.com/folio-org/platform-complete/blob/R2-2023-csp-5/install.json) |
| 20.1.11 | 27.0.6  | [Poppy R2-2023-csp-4](https://github.com/folio-org/platform-complete/blob/R2-2023-csp-4/install.json) |
| 20.1.10 | 27.0.5  | [Poppy R2-2023-csp-3](https://github.com/folio-org/platform-complete/blob/R2-2023-csp-3/install.json) |
| 20.1.9  | 27.0.4  | [Poppy R2-2023-csp-2](https://github.com/folio-org/platform-complete/blob/R2-2023-csp-2/install.json) |
| 20.1.8  | 27.0.4  | [Poppy R2-2023-csp-1](https://github.com/folio-org/platform-complete/blob/R2-2023-csp-1/install.json) |
| 20.1.6  | 27.0.4  | [Poppy R2-2023-GA](https://github.com/folio-org/platform-complete/blob/R2-2023-GA/install.json) |
| 20.0.7  | 26.0.1  | [Orchid R1-2023-csp-7](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-7/install.json) |
| 20.0.7  | 26.0.1  | [Orchid R1-2023-csp-6](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-6/install.json) |
| 20.0.7  | 26.0.0  | [Orchid R1-2023-csp-5](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-5/install.json) |
| 20.0.6  | 26.0.0  | [Orchid R1-2023-csp-4](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-4/install.json) |
| 20.0.4  | 26.0.0  | [Orchid R1-2023-csp-3](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-3/install.json) |
| 20.0.4  | 26.0.0  | [Orchid R1-2023-csp-2](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-2/install.json) |
| 20.0.4  | 26.0.0  | [Orchid R1-2023-csp-1](https://github.com/folio-org/platform-complete/blob/R1-2023-csp-1/install.json) |
| 20.0.4  | 26.0.0  | [Orchid R1-2023-GA](https://github.com/folio-org/platform-complete/blob/R1-2023-GA/install.json) |
| 19.0.2  | 25.0.4  | [Nolana R3-2022-csp-2](https://github.com/folio-org/platform-complete/blob/R3-2022-csp-2/install.json) |
| 19.0.2  | 25.0.4  | [Nolana R3-2022-hotfix-1](https://github.com/folio-org/platform-complete/blob/R3-2022-hotfix-1/install.json) |
| 19.0.2  | 25.0.3  | [Nolana R3-2022-GA](https://github.com/folio-org/platform-complete/blob/R3-2022-GA/install.json) |
