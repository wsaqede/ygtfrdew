#!/bin/sh
if [ ! -f UUID ]; then
  UUID="3309d7fa-8f71-42d7-af1c-147a539d6fca"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

