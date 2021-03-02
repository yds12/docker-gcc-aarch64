#!/bin/sh
set -x

docker run --rm -it -d --name cross-gtk cross-gtk bash
docker exec -it cross-gtk bash
docker kill cross-gtk

