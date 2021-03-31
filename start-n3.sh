#!/bin/bash

geth --datadir ./node03 \
	--identity "jq-n3" \
	--http \
	--http.port 8002 \
	--http.api "eth,net,web3,personal,miner,admin" \
	--http.corsdomain "*" \
	--port 30305 \
	--networkid 15 \
	--nat "any"
