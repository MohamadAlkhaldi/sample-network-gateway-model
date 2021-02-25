### Set path to fabric binaries and config directories
At sample-network-gateway-model, 

files start.sh, createChannel.sh, deployChaincode.sh and upgradeChaincode.sh, change:
> export HF_CONFIG=/home/mohamadlocal/fabric-samples/config/
> export HF_BIN=/home/mohamadlocal/fabric-samples/bin/
to the right path

Note: config/ is where core.yaml is located


### 1. Generate crypto materials and artifacts and start containers
At sample-network-gateway-model, run:

> ./start.sh

### 2. Create channel
At sample-network-gateway-model, run:

> ./createChannel.sh

### 3. Deploy smart contract
At sample-network-gateway-model, run:
> ./deployChaincode.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go

### 4. Run test application 
At my-application, run
> go run my-application.go

Will fail at Submit Transaction: TransferAsset asset1
because chaincode was not initialized

### 5. Upgrade smart contract and add the init function name
At sample-network-gateway-model, run:
> ./upgradeChaincode.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go -ccv 1.0 -ccs 2 -cci Init

### 6. Run test application again
At my-application

> go run my-application.go

Should complete successfully


### To stop and remove containers, and remove artifacts
At sample-network-gateway-model, run:
> ./stop.sh