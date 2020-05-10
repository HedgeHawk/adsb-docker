#!/bin/bash

if [ -n "${RECEIVER_LATITUDE}" ] && [ -n "${RECEIVER_LONGITUDE}" ] && [ -n "${RECEIVER_ALTITUDE}" ] && [ -n "${DUMP1090_HOST}" ] && [ -n "${MLAT_SERVER}" ] && [ -n "${MLAT_USER}" ] && [ -n "${MLAT_BACKFEED_PORT}" ]; then
  /mlat-client/mlat-client --input-type beast --no-udp --lat ${RECEIVER_LATITUDE} --lon ${RECEIVER_LONGITUDE} --alt ${RECEIVER_ALTITUDE} --input-connect ${DUMP1090_HOST}:30005 --server ${MLAT_SERVER} --user ${MLAT_USER} --results beast,listen,${MLAT_BACKFEED_PORT}
else
	exit 0;
fi

exit 1;
