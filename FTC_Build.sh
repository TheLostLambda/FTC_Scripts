#!/bin/sh

ROOT=192.168.49.1:8080

wget -qO /dev/null $ROOT/java/build/start

echo -n "Building"
while [[ $(wget -qO - $ROOT/java/build/status) == *"\"completed\": false"* ]]; do
  echo -n "."
done

if [[ $(wget -qO - $ROOT/java/build/status) == *"\"successful\": true"* ]]; then
  echo "BUILD SUCCESSFUL"
else
  echo "BUILD FAILED"
  echo $(wget -qO - $ROOT/java/build/wait)
fi
