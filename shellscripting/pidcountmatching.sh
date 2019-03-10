#!/bin/bash
# This script displays the PIDs and count of matching processes.
PROC_NAME="${1}"
server_name="${2}"
user_name="${3}"
PIDS=$(ssh ${user_name}@${server_name} pidof ${PROC_NAME})

COUNT=$(echo $PIDS | wc -w)
if [[ "${COUNT}" -gt 0 ]]
then
  echo "PROCESS NAME: ${PROC_NAME}"
  echo "COUNT: ${COUNT}"
  echo "PID(S): ${PIDS}"
else
  echo "No processes named ${PROC_NAME} found." >&2
  exit 1
fi
