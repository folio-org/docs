---
title: "Host names"
linkTitle: "Host names"
weight: 5
tags: ["subtopic"]
---

Choosing the host names of front-end and back-end has implications on deployment, security and performance.

The frond-end host serves the content to be displayed in the browser. The back-end exposes Okapi and the APIs of the back-end modules.

## Same host name

Front-end and back-end can be provided on the same host so that they use the same host name, the back-end is served on a special URL path.

Existing example:

* https://folio-demo.gbv.de
* https://folio-demo.gbv.de/okapi

Advantages:

* Most secure solution. Using a single host name allows to use the most restrictive configuration regarding cross-origin resource sharing (CORS) and cross-site request forgery (CSRF).
* Most simple security configuration.

Disadvantages:

* Requires a path based proxy. Example snippet for nginx:

```
        location /okapi/ {
                proxy_pass http://127.0.0.1:9130/;
                proxy_redirect default;
        }

        location / {
                root /var/www/tenanta;
                try_files $uri /index.html;
        }
```

* Using a content delivery network (CDN) might require different cache configurations for front-end and back-end URL paths.

## Two host names on same site

Some FOLIO deployments use different host names for font-end and back-end, and the host names belong to the same site. Example for site folio.org:

* https://folio-snapshot.dev.folio.org
* https://folio-snapshot-okapi.dev.folio.org

"Same site" has a special meaning, learn more at https://web.dev/samesite-cookies-explained/ and https://publicsuffix.org/ .

Advantages:

* Simple host name based configuration, requires no path based proxy configuration.
* Continuously tested on FOLIO's reference environments.

Disadvantages:

* Slower because the browser needs to send extra "preflight" OPTIONS HTTP requests for cross-origin resource sharing (CORS) protection resulting in latency.
* Less secure as it requires a configuration that weakens the security restrictions regarding cross-origin resource sharing (CORS) and cross-site request forgery (CSRF).

## Two host names on different sites

FOLIO doesn't support running front-end and back-end on host names that belong to different sites.

Fictional example:

* https://beispiel.de
* https://okapi.example.org

This requires removing security restrictions regarding cross-origin resource sharing (CORS) and cross-site request forgery (CSRF) and likely violates security rules required by law or policy.

FOLIO prevents this configuration for the most security sensitive module, the single-sign-on (SSO) module mod-login-saml.
