#!/bin/sh

ROOT=192.168.49.1:8080
BOUNDARY="???"

TREE=$(find ./$1 -name *.java)

for VAL in $TREE; do
  echo -n "Pushing $VAL..."
  FILE=$(basename $VAL)
  HEADER="--$BOUNDARY\nContent-Disposition: form-data; name=\"file\"; filename=\"$FILE\"\nContent-Type: text/x-java\n"
  FOOTER="\n--$BOUNDARY--"
  DATA=$(echo -e "$HEADER\n$(cat $VAL)\n$FOOTER")
  wget -qO /dev/null --header "Content-Type: multipart/form-data; boundary=$BOUNDARY" --post-data="$DATA" $ROOT/java/file/upload
  echo "done"
done
