#!/bin/bash

CUSTOM_OPTIONS=""
if [ -n "${MM2_INPUT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --inConnect ${MM2_INPUT}"
fi

if [ -n "${MM2_OUTPUT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --outConnect ${MM2_OUTPUT}"
fi

if [ -n "${RECEIVER_LATITUDE}" ] && [ -n "${RECEIVER_LONGITUDE}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --location ${RECEIVER_LATITUDE}:${RECEIVER_LONGITUDE}"
fi

if [ -n "${MM2_WEBPORT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --web ${MM2_WEBPORT}"
fi

if [ -n "${MAPS_API_KEY}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --google-key ${MAPS_API_KEY}"
fi

/usr/bin/modesmixer2 ${CUSTOM_OPTIONS}
