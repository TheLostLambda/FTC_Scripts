#!/bin/sh

ROOT=192.168.49.1:8080

echo -n "Wiping all remote files..."
wget -qO /dev/null --post-data "delete=[\"src\"]" $ROOT/java/file/delete
echo "done"
