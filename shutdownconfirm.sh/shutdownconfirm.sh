#!/bin/bash
echo -e -n "Biztosan le akarod kapcsolni? Valakinek oda kell mennie és megnyomni a gombot!\n[y/n] "
read reply

if [ "$reply" = y -o "$reply" = Y ]
then
  $1 ${@:2}
else
  $1 -c
  echo "shutdown elhalasztva!"
fi
