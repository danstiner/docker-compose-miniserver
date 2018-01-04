# docker-duckdns-armhf

Docker image for keeping a dynamic DNS up to date using [Duck DNS](https://www.duckdns.org/) on a armhf device like a Raspberry Pi. Currently only supports IPv4.

## Usage

Substitute your domain and token from the Duck DNS site.

```
$ docker build -t duckdns-armhf .
$ docker run --restart=always --name "duckdns" -e "DUCKDNS_DOMAIN=example-com" -e "DUCKDNS_TOKEN=00000000-0000-0000-0000-000000000000" duckdns-armhf
```

Alternatively use systemd to auto-start the container: https://coreos.com/os/docs/latest/getting-started-with-systemd.html
