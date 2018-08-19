#!/bin/sh

url="https://www.duckdns.org/update?domains=$DUCKDNS_DOMAINS&token=$DUCKDNS_TOKEN&verbose=true"

echo "GET $url"

response=$(curl --silent "$url")

response_first_line=$(echo "$response" | head -n 1)

if [ "OK" == "$response_first_line" ]; then
    echo "$response"
    exit 0
else
    echo "$response" 1>&2
    exit 1
fi

