#!/bin/sh
set -eu

cat > /data/flows_cred.json <<EOF
{
  "1adf808855039352": {
    "user": "${MQTT_USERNAME}",
    "password": "${MQTT_PASSWORD}"
  }
}
EOF

exec npm start -- --userDir /data