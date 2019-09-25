#!/usr/bin/env bash

##### Variables #####
PORT=8080 #Or $1 if you pass it from command line
TEMPLATE_DIR=$(pwd)/mysite.template
TEMPLATE_REMOTE_DIR=/etc/nginx/conf.d/mysite.template
IMAGE_NAME=nginx:alpine

echo "Starting nginx on port: $PORT ..."

##### The docker command #####
docker run -p $PORT:$PORT --env PORT=$PORT -v \
$TEMPLATE_DIR:$TEMPLATE_REMOTE_DIR $IMAGE_NAME \
/bin/sh -c "envsubst < $TEMPLATE_REMOTE_DIR > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"




