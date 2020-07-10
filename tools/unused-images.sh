#!/bin/bash

for f in $(find static/images -type f | sed 's%static/images/%%')
do
    if ! grep -RIlq "$f" .
    then
        echo "static/images/$f"
    fi
done
