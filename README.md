
### Generate crypto materials and artifacts and start containers
cd my-network
./start.up

### Create channel
cd my-network
./createChannel.sh -c my channel

### Deploy smart contract
cd my-network
./deploycc.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go

### Run test application 
cd my-application
go run my-application.go


./upgradeChaincode.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go -ccv 1.0 -ccs 2 -cci Init