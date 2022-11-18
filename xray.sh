#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8511e638-6a43-47d3-bc3a-32bbf1d67175"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

