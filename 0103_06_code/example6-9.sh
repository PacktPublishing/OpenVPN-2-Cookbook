#!/bin/sh
if [ "$script_type" = "up" ]
then
  touch /tmp/example6-9.tempfile
fi
if [ "$1" = "--down" ]
then
  rm /tmp/example6-9.tempfile
fi
