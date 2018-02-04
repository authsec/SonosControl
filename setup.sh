#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Give Stream URL as 1st argument e.g. (Raspi icecast URL):"
  echo "$0 http://192.168.1.84:8000/rapi.mp3.m3u"
fi

STREAM_URL="${1}"

sed -e "s@XXX_STREAM_URL_XXX@${STREAM_URL}@g" loadList.cmd.template > loadList.cmd

echo "[Setup complete]"
