#!/bin/sh

# prevent conflicts with existing
rm -rf node_modules

/usr/bin/npm link node-sass-glob webpack $EXTRA_PACKAGES $NPM_PACKAGES

exec "$@"
