# !/bin/bash
# bash configure-eth-netstats.sh <port> <ws_secret>

# sets up a eth-net-intelligence app.json for a local ethereum network cluster of nodes
# - <port> the node port for listing
# - <ws_secret> is the eth-netstats secret

port=$1
ws_secret=$2

echo -e "["
echo -e "  {\n    \"name\"        : \"$node_name\",\n    \"cwd\"         : \".\",\n    \"script\"      : \"app.js\",\n    \"log_date_format\"   : \"YYYY-MM-DD HH:mm Z\",\n    \"merge_logs\"    : false,\n    \"watch\"       : false,\n    \"max_restarts\"       : 10,\n    \"exec_interpreter\"  : \"node\",\n    \"exec_mode\"     : \"fork_mode\",\n    \"env\":\n    {\n      \"PORT\"    : \"$port\",\n      \"WS_SECRET\"     : \"$ws_secret\",\n    }\n  }"
echo "]"
