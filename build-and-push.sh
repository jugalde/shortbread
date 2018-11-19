#!/bin/bash

docker build -t shortbread:latest .;
docker tag shortbread:latest $REGISTRY/shortbread;
docker push $REGISTRY/shortbread;
docker image remove shortbread:latest;
docker image remove $REGISTRY/shortbread;
