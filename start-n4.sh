#!/bin/bash

geth --datadir ./node04 \
	--identity "pb-n4" \
	--http \
	--http.port 8003 \
	--http.api "eth,net,web3,personal,miner,admin" \
	--http.corsdomain "*" \
	--port 30306 \
	--networkid 15 \
	--nat "any"
