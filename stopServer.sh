#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PID_FILE=${DIR}/hobbit-core.pid
if [[ -f ${PID_FILE} ]] && [[ -r ${PID_FILE} ]];then
  kill $(cat ${PID_FILE})
  rm ${PID_FILE}
fi