#!/bin/env bash

docker rm -f nginx_lb

docker run -dit --name nginx_lb \
    -v $(pwd)/script/nginx.conf:/etc/nginx/conf.d/default.conf:ro \
    -p 8080:8080 \
    nginx:alpine