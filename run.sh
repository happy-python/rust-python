#!/usr/bin/env sh

docker build . -t rust-python-web
docker run -d -p 5000:5000 rust-python-web