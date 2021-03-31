#!/bin/bash

geth --datadir ./node01 init ./genesis/genesis.json
geth --datadir ./node02 init ./genesis/genesis.json
geth --datadir ./node03 init ./genesis/genesis.json
geth --datadir ./node04 init ./genesis/genesis.json

