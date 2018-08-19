# docker-duckdns

Docker image for keeping a dynamic DNS up to date using [Duck DNS](https://www.duckdns.org/). Currently only supports IPv4.

## Usage

Substitute your domain and token from the Duck DNS site.

```
docker build -t duckdns .
docker run --restart=always --name "duckdns" -e "DUCKDNS_DOMAIN=example-com" -e "DUCKDNS_TOKEN=00000000-0000-0000-0000-000000000000" duckdns
```

Alternatively use systemd or docker-compose to start the container.

