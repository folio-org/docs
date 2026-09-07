---
title: "Settings > Software versions"
linkTitle: "Software versions"
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

Look for these modules to find out which FOLIO flower release the system runs. This is a good indicator if the official `platform-lsp` set of modules has been installed and no individual changes have been made.

| mod-inventory | mod-inventory-storage | release | app |
| ------- | ------- | - | - |
| 22.0.1 | 30.0.3 | [Trillium R1-2026-GA](https://github.com/folio-org/platform-lsp/blob/R1-2026-GA/platform-descriptor.json) | [app-inventory 1.0.11](https://raw.githubusercontent.com/folio-org/app-inventory/refs/tags/v1.0.11/application.lock.json) |
| 21.1.22 | 29.0.23 | [Sunflower R1-2025-csp-9](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-9/platform-descriptor.json) | [app-platform-complete 2.5.21](https://github.com/folio-org/app-platform-complete/blob/v2.5.21/application.lock.json) |
| 21.1.20 | 29.0.22 | [Sunflower R1-2025-csp-8](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-8/platform-descriptor.json) | [app-platform-complete 2.5.19](https://raw.githubusercontent.com/folio-org/app-platform-complete/refs/tags/v2.5.19/application.lock.json) |
| 21.1.20 | 29.0.19 | [Sunflower R1-2025-csp-7](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-7/install-applications.json) | [app-platform-complete 2.5.10](https://github.com/folio-org/app-platform-complete/blob/v2.5.10/app-platform-complete.template.json) |
| 21.1.19 | 29.0.18 | [Sunflower R1-2025-csp-6](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-6/install-applications.json) | [app-platform-complete 2.5.5](https://github.com/folio-org/app-platform-complete/blob/v2.5.5/app-platform-complete.template.json) |
| 21.1.19 | 29.0.16 | [Sunflower R1-2025-csp-5](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-5/install-applications.json) | [app-platform-complete 2.4.0](https://github.com/folio-org/app-platform-complete/blob/v2.4.0/app-platform-complete.template.json) |
| 21.1.16 | 29.0.16 | [Sunflower R1-2025-csp-4](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-4/install-applications.json) | [app-platform-complete 2.2.13](https://github.com/folio-org/app-platform-complete/blob/v2.2.13/app-platform-complete.template.json) |
| 21.1.15 | 29.0.13 | [Sunflower R1-2025-csp-3](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-3/install-applications.json) | [app-platform-complete 2.2.7](https://github.com/folio-org/app-platform-complete/blob/v2.2.7/app-platform-complete.template.json) |
| 21.1.11 | 29.0.12 | [Sunflower R1-2025-csp-2](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-2/install-applications.json) | [app-platform-complete 2.2.0](https://github.com/folio-org/app-platform-complete/blob/v2.2.0/app-platform-complete.template.json) |
| 21.1.9 | 29.0.12 | [Sunflower R1-2025-csp-1](https://github.com/folio-org/platform-lsp/blob/R1-2025-csp-1/install-applications.json) | [app-platform-complete 2.1.47](https://github.com/folio-org/app-platform-complete/blob/v2.1.47/app-platform-complete.template.json) |
| 21.1.6 | 29.0.10 | [Sunflower R1-2025-GA](https://github.com/folio-org/platform-lsp/blob/R1-2025-GA/install-applications.json) | [app-platform-complete 2.1.29](https://github.com/folio-org/app-platform-complete/blob/v2.1.29/app-platform-complete.template.json) |
| 21.0.18 | 28.0.15 | [Ramsons R2-2024-csp-9](https://github.com/folio-org/platform-complete/blob/R2-2024-csp-9/install.json) |
| 21.0.9  | 28.0.8  | [Ramsons R2-2024-GA](https://github.com/folio-org/platform-complete/blob/R2-2024-GA/install.json) |
