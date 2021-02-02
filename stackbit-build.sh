#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js public https://localhost:8092/init.js 6019418fd3f4ca82bfecfc92

echo "stackbit-build.sh: finished build"
