#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d19ab859-f648-4ed4-80a8-25fb3dd31ab2"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting 9ffdc8a7-d3f1-4176-862b-625662c5e4f9with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

