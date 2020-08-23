#!/bin/bash

CUSTOM_OPTIONS=""
if [ -n "${MM2_INPUT}" ]; then
	for i in $MM2_INPUT
	do
	   CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --inConnect ${i}"
	done
fi

if [ -n "${MM2_OUTPUT}" ]; then
	for i in $MM2_OUTPUT
	do
	   CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --outConnect ${i}"
	done
fi

if [ -n "${MM2_INPUT_SERVER}" ]; then
	for i in $MM2_INPUT_SERVER
	do
	   CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --inServer ${i} --inServerUdp ${i}"
	done
fi

if [ -n "${MM2_OUTPUT_SERVER}" ]; then
	for i in $MM2_OUTPUT_SERVER
	do
	   CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --outServer ${i}"
	done
fi

if [ -n "${RECEIVER_LATITUDE}" ] && [ -n "${RECEIVER_LONGITUDE}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --location ${RECEIVER_LATITUDE}:${RECEIVER_LONGITUDE}"
fi

if [ -n "${MM2_WEBPORT}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --web ${MM2_WEBPORT}"
fi

if [ -n "${MM2_WEBAUTH}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --web-auth ${MM2_WEBAUTH}"
fi

if [ -n "${MAPS_API_KEY}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --google-key ${MAPS_API_KEY}"
fi

if [ -n "${MM2_AIRCRAFT_DB}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --db ${MM2_AIRCRAFT_DB}"
fi

if [ -n "${MM2_ROUTES_DB}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --frdb ${MM2_ROUTES_DB}"
fi

if [ -n "${MM2_SILHOUETTES}" ]; then
  CUSTOM_OPTIONS="${CUSTOM_OPTIONS} --silhouettes ${MM2_SILHOUETTES}"
fi

if [ -n "${MM2_INPUT}" ] || [ -n "${MM2_INPUT_SERVER}" ]; then
  if [ -n "${MM2_OUTPUT}" ] || [ -n "${MM2_WEBPORT}" ] || [ -n "${MM2_OUTPUT_SERVER}" ]; then
    /usr/bin/modesmixer2 ${CUSTOM_OPTIONS}
    exit 1;
  else
    exit 0;
  fi
else
  exit 0;
fi

