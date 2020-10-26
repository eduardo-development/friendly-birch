#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://0784f0c0093f.ngrok.io/pull/5f96f77a9f84089ec86e4a66

# build site
npm run build

echo "stackbit-build.sh: finished build"
