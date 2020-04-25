#!/bin/bash

cat << EOF >> /etc/pfclient-config.json
{"tcp_address":"${DUMP1090_HOST}","tcp_port":"30005","select_timeout":"10","data_upload_interval":"10","connection_type":"1","aircraft_timeout":"30","data_format":"1","latitude":"${RECEIVER_LATITUDE}","longitude":"${RECEIVER_LONGITUDE}","google_maps_api_key":"${MAPS_API_KEY}","sharecode":"${PF_KEY}"}
EOF

if [ -n "${PF_KEY}" ] && [ -n "${DUMP1090_HOST}" ] && [ -n "${RECEIVER_LATITUDE}" ] && [ -n "${RECEIVER_LONGITUDE}" ]; then
  /usr/bin/pfclient -i /var/run/pfclient.pid -z /etc/pfclient-config.json
else
  exit 1;
fi

