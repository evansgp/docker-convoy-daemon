#!/usr/bin/env sh

DOCKER_PLUGINS=/etc/docker/plugins

[ ! -d $DOCKER_PLUGINS ] && mkdir -p $DOCKER_PLUGINS
[ ! -f $DOCKER_PLUGINS/convoy.spec ] && echo "unix:///var/run/convoy/convoy.sock" > $DOCKER_PLUGINS/convoy.spec

convoy $@
