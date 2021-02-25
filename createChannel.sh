#!/bin/bash

# imports  

export PATH=${PWD}/../fabric-samples/bin:$PATH
export FABRIC_CFG_PATH=${PWD}
export VERBOSE=false

# function createChannel() {
#   # Bring up the network if it is not already up.

#   if [ ! -d "organizations/peerOrganizations" ]; then
#     infoln "Bringing up network"
#     networkUp
#   fi

  # now run the script that creates a channel. This script uses configtxgen once
  # more to create the channel creation transaction and the anchor peer updates.
  # configtx.yaml is mounted in the cli container, which allows us to use it to
  # create the channel artifacts
  scripts/createChannel.sh mychannel
# }