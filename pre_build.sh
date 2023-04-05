#!/bin/bash
set -e

. venv/bin/activate

# environment
. ./setuptokens.sh

# unzip gds files
make uncompress

# update project list and fetch designs
./tt/configure.py --update-orders --clone-all --fetch-gds --update-all

# update caravel config
./tt/configure.py --update-caravel

echo 'now run: make user_project_wrapper'

