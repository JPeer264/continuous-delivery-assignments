#!/bin/bash

set -e -x

pushd git-repository/concourse
  bundle install
  rspec
  brakeman
popd
