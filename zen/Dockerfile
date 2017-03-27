FROM skilldlabs/frontend:latest

MAINTAINER Andy Postnikov

ARG EXTRA_PACKAGES

ENV NPM_PACKAGES "bower \
  breakpoint-sass \
  browser-sync \
  chroma-sass \
  del \
  eslint \
  event-stream \
  gulp-autoprefixer \
  gulp-eslint \
  gulp-if \
  gulp-load-plugins \
  gulp-rename \
  gulp-replace \
  gulp-sass-lint \
  gulp-size \
  gulp-sourcemaps \
  gulp.spritesmith \
  kss \
  node-sass-import-once \
  sass-lint \
  support-for \
  typey \
  zen-grids"

RUN apk add --no-cache git \
    && npm install -g $EXTRA_PACKAGES $NPM_PACKAGES

COPY docker-entrypoint.sh /usr/bin/
