#!/bin/sh

ROOT=192.168.49.1:8080
PWD=$(pwd)

TREE=$(wget -qO - $ROOT/java/file/tree)

IFS="\""
for VAL in $TREE; do
  case $VAL in (*".java"*)
    echo -n "Pulling $VAL..."
    mkdir -p $PWD$(dirname $VAL)
    wget -q $ROOT/java/file/download?f=/src/$VAL -O $PWD$VAL
    echo "done"
  ;;esac
done
