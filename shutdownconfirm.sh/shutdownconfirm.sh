#!/bin/bash
echo -e -n "You are about to shut this computer down! Do you really want to do that?\n[y/n] "
read reply

if [ "$reply" = y -o "$reply" = Y ]
then
  $1 ${@:2}
else
  $1 -c
  echo "Shutdown cancelled!"
fi
