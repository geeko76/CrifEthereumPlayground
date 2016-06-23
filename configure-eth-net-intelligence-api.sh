# !/bin/bash
# bash configure-eth-netstats.sh <node_name> <ws_server> <ws_secret>

# sets up a eth-net-intelligence app.json for a local ethereum network cluster of nodes
# - <node_name> the node name as will appear in the listing
# - <ws_server> is the eth-netstats server
# - <ws_secret> is the eth-netstats secret

node_name=$1
ws_server=$2
ws_secret=$3

echo -e "["
echo -e "  {\n    \"name\"        : \"$node_name\",\n    \"cwd\"         : \".\",\n    \"script\"      : \"app.js\",\n    \"log_date_format\"   : \"YYYY-MM-DD HH:mm Z\",\n    \"merge_logs\"    : false,\n    \"watch\"       : false,\n    \"max_restarts\"       : 10,\n    \"exec_interpreter\"  : \"node\",\n    \"exec_mode\"     : \"fork_mode\",\n    \"env\":\n    {\n      \"NODE_ENV\"    : \"production\",\n      \"RPC_HOST\"    : \"localhost\",\n      \"RPC_PORT\"    : \"8545\",\n      \"LISTENING_PORT\"    : \"30309\",\n      \"INSTANCE_NAME\"   : \"$node_name\",\n      \"WS_SERVER\"     : \"$ws_server\",\n      \"WS_SECRET\"     : \"$ws_secret\",\n      \"VERBOSITY\"     : 2,\n    }\n  }"
echo "]"