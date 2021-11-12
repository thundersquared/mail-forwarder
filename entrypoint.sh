#!/usr/bin/env bash
set -eux

# Run startup scripts
run-parts startup.1.d

# Start Haraka
yarn start
