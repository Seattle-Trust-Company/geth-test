# geth-test

## Description
An example of how to use geth to create a local Ethereum network and deploy a smart contract.

## To Run
If this is your first run, we need to initialize each node with the genesis block. Run:
```console
$ ./init.sh
```

Now, for each node (in separate terminals), we need to initialize our ports and setup our internet connection.
```console
-- Node 01
$ ./start-n1.sh

-- Node 02
$ ./start-n2.sh

-- Node 03
$ ./start-n3.sh

-- Node 04
$ ./start-n4.sh
```

If you'd like to interact with the JS client, connect using the generated ipc.
```console
-- Node 01 -- You can attach to others if you'd like
$ geth attach ./node01/geth.ipc
```

## Connecting to Other Nodes
Now, that we are able to connect, in each JS console, run:
```console
> admin.nodeInfo.enode
```

We need to grab each enode and connect it to our running console. So, for instance, if our "main" node is node01, grab the enodes of node02, node03, and node04. Then run:
```console
-- Run this for all nodes
> admin.addPeer("<enode>")
```

We can see how many peers we have (it may take a minute or so):
```console
> admin.peers

-- or

> net.peerCount
```

## Deploying a Contract
We need to make sure at least one of our nodes (in this case, node01) is mining (using JS console):
```console
> miner.setEtherbase(eth.accounts[0])
> miner.start()
```

Now, we need to make sure to unlock our account to deploy the contract (in a transaction):
```console
> personal.unlockAccount(eth.accounts[0])
```

Perform the deployment by following the instructions on the Seattle Digital Exchange repository.

## Test Node Info
Node 01
- Address: 0x19ABe6b87285C0E93F6181c0a6A97A554b1a2D76

Node 02
- Address: 0xeaa4EFfec067e554B7f6A2472D225C70bA145060

Node 03
- Address: 0xcC0557e1eFE6Feab13bcAceA51E8045cc5F49a21

Node 04
- Address: 0x9C2D33603c485c9a1256f6Bf8419d788FF5d67b9


