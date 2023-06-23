#!/bin/bash


# setup
which 403-bypass.sh || echo "PATH to 403 bypass:" ; read
PATH=$PATH:$REPLY

which 403-bypass.sh || echo "Nope." ; exit 2

for i in `cat files.txt`
do
## things
done

