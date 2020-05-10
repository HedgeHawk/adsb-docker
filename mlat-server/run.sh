#!/bin/bash

if [ -n "${MLAT_INPUT}" ] && [ -n "${MLAT_OUTPUT}" ]; then
  /mlat-server/mlat-server --work-dir=/mlat-server/workdir --client-listen ${MLAT_INPUT} --basestation-listen ${MLAT_OUTPUT}
  exit 1;
fi

exit 0;
