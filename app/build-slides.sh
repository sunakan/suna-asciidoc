#!/bin/bash

set -eu

files="./docs/*.adoc"
for srcpath in $files; do
  srcfile=`basename $srcpath`
  dstpath="./dist/${srcfile//\.adoc/.html}"
  bundle exec asciidoctor-revealjs \
    --attribute revealjsdir=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.8.0 \
    --out-file $dstpath \
    $srcpath
done
