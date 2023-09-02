# Latest rdrview binary

[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/rdrview)](https://artifacthub.io/packages/search?repo=rdrview)

This image contains the current rdrview binary.

## Installation

### CI/Image Install

```
COPY --from=ghcr.io/simonwoodtli/rdrview:latest /bin/rdrview /where/You/Want
```

### Local install

1. Build image: 

```
docker build -t alpine-rdrview -f- . <<EOF
FROM alpine:latest
COPY --from=ghcr.io/simonwoodtli/rdrview:latest /bin/rdrview
/bin/rdrview
EOF
```

2. Copy rdrview to your host: 

```
docker run --rm -v $HOME/.local/bin:/mnt alpine-rdrview sh -c "install
/bin/rdrview /mnt"
```
