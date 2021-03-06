#!/bin/bash

set -e
./checkout-ossim.sh
docker run --rm -i \
  -v "${PWD}/build-scripts/:/build-scripts/" \
  -v "${PWD}/ossim-repos:/work" \
  -v "${PWD}/output:/output" \
  "${BUILDER_IMAGE:=ossim-builder-minimal-ubuntu:local}"
