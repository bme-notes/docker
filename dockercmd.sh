#!/bin/sh
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/sources martonbognar/bme-latex "$@"
