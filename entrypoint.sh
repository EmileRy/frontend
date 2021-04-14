#!/bin/sh

ROOT_DIR=/usr/src/app

echo "Replacing env constants in JS"
for file in $ROOT_DIR/src/common/config.*.js*;
do
  echo "Processing $file ...";

  sed -i 's|VUE_APP_SERVER_URL|'${VUE_APP_SERVER_URL}'|g' $file

done
