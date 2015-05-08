#!/bin/bash

source /root/.nvm/nvm.sh

if [ ! -z ${NODE_VERSION+x} ]
then
  nvm install $NODE_VERSION
  nvm alias default $NODE_VERSION
  # This line for initial install the global node module
  npm install -g bower grunt-cli nodemon
fi

# exec CMD
echo ">> exec docker CMD"
echo "$@"
"$@"
