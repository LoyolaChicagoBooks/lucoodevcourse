#!/bin/bash

DEST=../lucoodevcourse.github.io

rm -rf $DEST/*
touch $DEST/.nojekyll
mkdir -p $DEST/download
cp -a build/html/* $DEST/
cp build/latex/*.pdf $DEST/download/
cp build/epub/*.epub $DEST/download/oodev.epub

git log master --pretty=short --abbrev-commit > $DEST/COMMITS.txt

pushd $DEST
git add -A
git commit -m "Generated site for $(git log master -1 --pretty=format:%h)" && git push
popd
