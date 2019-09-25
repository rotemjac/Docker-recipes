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




kernel-panic-exploits
container-breakouts-privilege-escalation
poisoned-images
denial-of-service-attacks
compromising-secrets
application-level-threats
host-system-level-treats
security-by-design
setuidsetgid
controlling-cpu-usage
controlling-memory-usage
verifying-images
set-container-filesystem-to-read-only
set-a-user
do-not-use-environment-variables-to-share-secrets
use-orchestrators-secret-managers
do-not-run-containers-in-the-privileged-mode
turn-off-inter-container-communication
set-volumes-to-read-only
only-install-necessary-packages
make-sure-docker-is-up-to-date
use-vulnerability-analysis-scanners
properly-configure-your-docker-registry-access-control
security-through-obscurity
secure-and-control-your-code
use-limited-linux-capabilities
use-seccomp