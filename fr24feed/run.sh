#!/bin/bash

cat << EOF >> /etc/fr24feed.ini
receiver="beast-tcp"
fr24key="${FR24_KEY}"
host="${DUMP1090_HOST}:30005"
bs="no"
raw="no"
logmode="0"
logpath="/var/log/fr24feed"
mlat="yes"
mlat-without-gps="yes"
EOF

if [ -n "${FR24_KEY}" ] && [ -n "${DUMP1090_HOST}" ]; then
  /usr/bin/fr24feed --key=${FR24_KEY} --host=${DUMP1090_HOST}:30005 --receiver=beast-tcp
  exit 1;
else
  exit 0;
fi
