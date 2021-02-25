#!/bin/bash

# imports  

export HF_CONFIG=/home/mohamadlocal/fabric-samples/config/
export HF_BIN=/home/mohamadlocal/fabric-samples/bin/

export PATH=$HF_BIN:$PATH
export FABRIC_CFG_PATH=${PWD}
export VERBOSE=false


  # now run the script that creates a channel. This script uses configtxgen once
  # more to create the channel creation transaction and the anchor peer updates.
  # configtx.yaml is mounted in the cli container, which allows us to use it to
  # create the channel artifacts
  scripts/createChannel.sh mychannel
