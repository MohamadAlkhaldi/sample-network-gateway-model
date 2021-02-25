
### 1. Generate crypto materials and artifacts and start containers
At sample-network-gateway-model, run:

> ./start.sh

### 2. Create channel
At sample-network-gateway-model, run:

> ./createChannel.sh -c mychannel

### 3. Deploy smart contract
At sample-network-gateway-model, run:
> ./deploycc.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go

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


### To stop containers and remove artifacts
At sample-network-gateway-model, run:
> ./stop.sh