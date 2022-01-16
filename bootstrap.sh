#!/usr/bin/env bash

clone_if () {
	if [ -d "$2" ]; then
		echo "exists:" $2
	else
		echo "Cloning to " $2
		git clone $1 $2
	fi
}

clone_if git@github.com:ckrahe/mongo.places.git ../mongo.places/
clone_if git@github.com:ckrahe/express.places.git ../express.places/
clone_if git@github.com:ckrahe/nginx.places.git ../nginx.places/
