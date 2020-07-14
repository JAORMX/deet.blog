#!/bin/bash

# Requires the ImageMagick package

top_n=${1:-5}

./tools/list-big-images.sh "$top_n" | awk '{print $2}' | xargs -n1 mogrify -resize 50%
