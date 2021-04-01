#!/bin/bash

geth --datadir ./node02 \
	--identity "jq-n2" \
	--http \
	--http.port 8001 \
	--http.api "eth,net,web3,personal,miner,admin" \
	--http.corsdomain "*" \
	--port 30304 \
	--networkid 15 \
	--nat "any" \
	--allow-insecure-unlock
