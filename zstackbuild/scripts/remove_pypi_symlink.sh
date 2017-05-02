#!/bin/bash
for item in `find $1`; do
    if [ -L $item ]; then
        echo "Remove symbolic for $item"
        cd `dirname $item`
        mv `readlink $item` $item
    fi
done
