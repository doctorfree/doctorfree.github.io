#!/bin/bash

SCRIPT_PATH="$(
  cd "$(dirname "$0")"
  pwd -P
)"
have_real=$(type -p realpath)
[ "${have_real}" ] && SCRIPT_PATH="$(realpath $SCRIPT_PATH)"

${SCRIPT_PATH}/pdf-mydoc.sh
${SCRIPT_PATH}/pdf-product1.sh
${SCRIPT_PATH}/pdf-product2.sh
