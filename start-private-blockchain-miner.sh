sudo geth --datadir $HOME/GethData --mine --minerthreads 2 --networkid 123321 --rpc --rpcapi "admin,eth,debug,miner,net,shh,txpool,personal,web3" --rpccorsdomain "*" --port 30309 --nat "any" console 
