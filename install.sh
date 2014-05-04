#!/bin/bash

SNIPPETS_DIR="~/Library/Developer/Xcode/UserData/CodeSnippets"
DST_DIR=`dirname $0`/snippets

if [ -d $SNIPPETS_DIR ]; then
    mv $SNIPPETS_DIR{,.bk}
fi

ln -s $DST_DIR $SNIPPETS_DIR
