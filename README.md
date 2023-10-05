# Latest rdrview binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/rdrview)](https://artifacthub.io/packages/search?repo=rdrview)

This image contains the current rdrview binary.

## Installation

> ⚠ Checkout the required dependencies on maintainers repo [here] and install them.

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/rdrview:latest /bin/rdrview /where/You/Want
```

### Local install

1. Build image: 

```
podman build -t alpine-rdrview -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/rdrview:latest /bin/rdrview /bin/rdrview
EOF
```

2. Run container in detached mode:

```
podman run -dt localhost/alpine-rdrview
```

3. Get Container ID:

```
podman ps
```

4. Copy rdrview to your host: 

```
podman cp <containerId>:/bin/rdrview /where/You/Want
```

Related:

* https://github.com/eafer/rdrview

[here]: <https://github.com/eafer/rdrview>
