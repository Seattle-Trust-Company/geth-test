#!/bin/bash
geth --datadir ./node01 \
	--identity "jq-n1" \
	--http \
	--http.port 8000 \
	--http.api "eth,net,web3,personal,miner,admin" \
	--http.corsdomain "*" \
	--port 30303 \
	--networkid 15 \
	--nat "any" \
	--allow-insecure-unlock
