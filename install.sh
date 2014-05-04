#!/bin/bash

SNIPPETS_DIR=~/Library/Developer/Xcode/UserData/CodeSnippets
DST_DIR=`dirname $0`/snippets

# get absolute path for symlink destination
pushd $DST_DIR > /dev/null
DST_DIR=`pwd`
popd > /dev/null

if [ -d $SNIPPETS_DIR ]; then
    mv $SNIPPETS_DIR{,.bk}
fi

ln -s $DST_DIR $SNIPPETS_DIR
