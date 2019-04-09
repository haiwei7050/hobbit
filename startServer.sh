#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PID_FILE=${DIR}/hobbit-core.pid
URL='http://localhost:8080/user/1'
START_SERVER=''
SAVE_PID="";

verify(){
  isOk=0;
  if $(curl ${URL} > /dev/null 2>&1);then isOk=1;fi;
  return ${isOk};
}
waitServerUp(){
 while verify ;do :;done
}

if [[ -f ${PID_FILE} ]];then
  exit 0
fi
mvn spring-boot:run > /dev/null 2>&1 &
echo $! > ${PID_FILE}
waitServerUp