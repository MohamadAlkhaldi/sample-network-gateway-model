
### Generate crypto materials and artifacts and start containers

./start.sh

### Create channel

./createChannel.sh -c mychannel

### Deploy smart contract

./deploycc.sh -ccn my-chaincode -ccp ./my-chaincode/ -ccl go

### Run test application 
cd my-application
go run my-application.go
