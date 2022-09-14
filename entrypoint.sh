#!/bin/bash
set -e


# Change some defaults for docker if config not present.
if [ ! -f /etc/nibepi/config.json ]; then
   jq -f mods.jq node_modules/nibepi/default.json > /etc/nibepi/config.json
fi

/usr/local/bin/node $NODE_OPTIONS node_modules/node-red/red.js --userDir /data $FLOWS &

/usr/local/bin/node $NODE_OPTIONS node_modules/nibepi/server.js &

wait -n

exit $?

