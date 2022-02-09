---
title: "Customizations"
linkTitle: "Customizations"
weight: 50
description: >
  Note: This content is currently in draft status.
tags: ["subtopic"]
---


## Branding Stripes

Stripes has some basic branding configurations that are applied during the build process.  In the file **stripes.config.js**, you can configure the logo and favicon of the tenant.  These parameters can be set under the branding key at the end of the file.  You can add the new images in the folder **tenant-assets** and link to them in the configuration file.  Take into account that these changes will take effect after you build the webpack for Stripes.

## Okapi security

Make sure that you have secured Okapi before publishing it to the Internet.  If you do not configure a super-tenant user and password for Okapi API, any user on the net could run privileged requests. The process of securing Okapi is performed with the **secure-supertenant** script and it is explained in the Single server deployment guides.

Additionally, it is recommended that you configure SSL certificates for Okapi in order to prevent data being sent as plain text over the Internet.  Okapi does not have native HTTPS support, but you can set up a reverse proxy (e.g NGINX) that receives HTTPS requests and forwards them to Okapi.  You can find more information about HTTPS on NGINX [here](http://nginx.org/en/docs/http/configuring_https_servers.html).  Also, if you are using an Ingress in Kubernetes, you can configure SSL certificates using Rancher.  For more information on this process check [here](https://rancher.com/docs/rancher/v2.x/en/k8s-in-rancher/load-balancers-and-ingress/ingress/).

## Email configuration

The module mod-email provides the role of delivering messages using SMTP server to send emails in FOLIO.  It is used for sending notifications and restarting user passwords.

The mod-email module uses mod-configuration to get connection parameters.  A detailed list of parameters can be found in the documentation of the [module](https://github.com/folio-org/mod-email#introduction).  The required configuration options are the following:

* EMAIL_SMTP_HOST
* EMAIL_SMTP_PORT
* EMAIL_USERNAME
* EMAIL_PASSWORD
* EMAIL_FROM
* EMAIL_SMTP_SSL

These parameters should be set in Okapi through POST requests using the name of the module: **SMTP_SERVER**.  For example, the host configuration would look like this. 

```
curl -X POST \
 http://localhost:9130/configurations/entries \
 -H 'Content-Type: application/json' \
 -H 'X-Okapi-Tenant: <tenant>' \
 -H 'x-okapi-token: <token>' \
 -d
   '{
     "module": "SMTP_SERVER",
     "configName": "smtp",
     "code": "EMAIL_SMTP_HOST",
     "description": "server smtp host",
     "default": true,
     "enabled": true,
     "value": "smtp.googlemail.com"
   }'
```

Take into account that this configuration is performed on a per tenant basis and the tenant ID is defined in the **X-Okapi-Tenant** header.  Also, you have to be logged in as the superuser of the tenant and provide the access token in the header **x-okapi-token**.   You can find an example of a login request (here)[https://github.com/folio-org/folio-install/tree/master/runbooks/single-server#load-mods-records].

Once you have configured the mod-email module, you should configure other modules related to the email configuration.  You should configure the users module and edge-sip2.  You can find a Bash script that could be used to automate this process [here](https://github.com/folio-org/folio-install/blob/kube-rancher/alternative-install/kubernetes-rancher/TAMU/deploy-jobs/create-email/create-email-config.sh).  Make sure that you replace all of the environment variables required for the script.

Alternatively, if you deployed FOLIO on a Kubernetes cluster, you can create a Kubernetes Job for this task.  This docker project  https://github.com/folio-org/folio-install/tree/kube-rancher/alternative-install/kubernetes-rancher/TAMU/deploy-jobs/create-email can be built, pushed to the image registry and executed on the cluster similarly to other scripts mentioned in the Kubernetes deployment section.

