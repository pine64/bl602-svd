#!/usr/bin/env bash

# SVDConv returns an exit code of 1 on warnings, which CI interprets as a failure
# We don't want it reported as a failure, so catch that case

if [ ! -f "scripts/svdconv_wrapper.sh" ]; then
  echo "This script must be run from the root of the repository"
  exit 1
fi

SVDConv soc602_reg.svd
if [ $? == 1 ]; then
    exit 0
fi