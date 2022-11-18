#!/usr/bin/env bash
set -e

## Build Mush
cp target/debug/mush target/debug/mush.sh
bash target/debug/mush.sh build --target dist

## Build Basic App
cd tests/fixtures/basic-app
bash ../../../target/dist/mush.sh --vv build --target debug
