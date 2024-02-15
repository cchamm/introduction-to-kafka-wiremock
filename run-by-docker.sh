#! /bin/bash


docker run -it --rm \
  -e WIREMOCK_OPTIONS=' --verbose' \
  -p 9001:8080 \
  --name wiremock \
  -v ./mappings:/home/wiremock/mappings \
  wiremock/wiremock:3.3.1
