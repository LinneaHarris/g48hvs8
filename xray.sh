#!/bin/sh
if [ ! -f UUID ]; then
  UUID="2e077ff6-f463-4921-b452-13351f7447bd"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

