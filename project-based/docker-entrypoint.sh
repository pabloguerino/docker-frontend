#!/bin/sh

export HOME=/tmp

rm -rf /work/node_modules
cp -rf /node_modules /work

exec "$@"
