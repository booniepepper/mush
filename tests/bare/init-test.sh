#!/usr/bin/env bash
set -e

cp target/dist/mush target/dist/mush.sh
bash target/dist/mush.sh -vv build

mkdir -p tests/tmp/init-test
cd tests/tmp/init-test
rm -fr Manifest.toml

bash ../../../target/dist/mush.sh -vv init

cat Manifest.toml
