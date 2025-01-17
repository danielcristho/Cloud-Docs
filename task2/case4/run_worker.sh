#!/bin/env bash

docker rm -f app1 app2

docker run -dit --name app1 \
    -v $(pwd)/script/app1:/app \
    -w /app \
    -p 10001:10001 \
    python:3.13.0a1-alpine3.17 \
    /bin/sh -c "
    pip install flask && \
    python3 app.py"

docker run -dit --name app2 \
    -v $(pwd)/script/app2:/app \
    -w /app \
    -p 10002:10002 \
    python:3.13.0a1-alpine3.17 \
    /bin/sh -c "
    pip install flask && \
    python3 app.py"