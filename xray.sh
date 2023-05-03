#!/bin/sh
if [ ! -f UUID ]; then
  UUID="af952e0e-ca59-4839-b0aa-2bee3c86c9a9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

