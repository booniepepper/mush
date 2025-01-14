#!/usr/bin/env bash
set -e

echo "==> Build: mush"
cp target/dist/mush target/dist/mush.sh
bash target/dist/mush.sh -vv build

echo "==> Test: install command"
cd tests/fixtures/complex-app
bash ../../../target/dist/mush.sh install
complex-app --version
