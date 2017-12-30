#!/bin/bash

NAME=$1

if [ ! -d "/usr/share/themes/$NAME" ]; then
  echo "$NAME theme not found, you should install it first."
  exit 1
fi

#rm -rf ./build
mkdir ./build

./build-theme.sh $NAME "/usr/share/themes/$NAME/gnome-shell"
