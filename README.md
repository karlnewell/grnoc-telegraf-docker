# Community shared telemetry telegraf container

## Getting Started

### Prerequisites

`docker` and a suitable config file  
**N.B. Disable SE Linux (or figure out how to get it to play well with Docker and local file mounts)**

### Install - Option 1

Clone this repo

```sh
git clone https://github.internet2.edu/internet2/grnoc-telegraf-docker.git
```

Build the container

```sh
docker build -t grnoc-telegraf-docker .
```

### Install - Option 2

Pull the container from Docker Hub and tag the image so the following commands work.

```sh
docker pull karlnewell/grnoc-telegraf-docker
docker tag karlnewell/grnoc-telegraf-docker grnoc-telegraf-docker
```

### Run

Place config file(s) in `conf.d` directory

```sh
docker run -d --name grnoc-telegraf-docker -v $(pwd)/conf.d:/etc/telegraf/grnoc/conf.d grnoc-telegraf-docker
```

### Troubleshoot

```sh
docker logs grnoc-telegraf-docker
```

## Test

Copy `test.conf.example` to `conf.d/test.conf` and run

```sh
docker run --rm --name grnoc-telegraf-docker -v $(pwd)/conf.d:/etc/telegraf/grnoc/conf.d grnoc-telegraf-docker
```

You should see telegraf logs and eventually a bunch of output related to cpu and memory.  
`ctrl-c` to exit.
