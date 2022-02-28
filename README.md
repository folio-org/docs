# FOLIO Documentation

Copyright (C) 2017-2022 The Open Library Foundation

This software is distributed under the terms of the Apache License,
Version 2.0. See the file "[LICENSE](LICENSE)" for more information.

## Introduction

This is the documentation for FOLIO apps.
If working with this Hugo site locally, be sure to execute

```
git submodule update --init --recursive
```

before attempting to build with Hugo for the first time.

### Serve with Docker
One way to locally serve the site is with Docker

1. [Install Docker for your operating system](https://docs.docker.com/get-docker/)
2. From the docs directory, run
```
docker run --rm -it -v $(pwd):/src -p 1313:1313 klakegg/hugo:ext-alpine server
```

### Serve locally with Hugo
Another option is to run Hugo locally on your computer

1. [Install Hugo for your operating system](https://gohugo.io/getting-started/installing)
2. From the docs directory, run
```
hugo server -D
```
### Preview the Docs site
After serving, visit <http://localhost:1313>

## Issue tracker

See project [DOCS](https://issues.folio.org/browse/DOCS)
at the [FOLIO issue tracker](https://dev.folio.org/guidelines/issue-tracker).

