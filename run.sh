#!/bin/bash

docker run \
	-e UID \
	-e GID \
	-e DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v /run/user/$UID/pulse:/run/pulse \
	-v $HOME:/home/dev \
	\
	gnome-builder
