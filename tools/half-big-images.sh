#!/bin/bash
find static/images -type f -size +3M | grep -v carrying-deet.png | xargs -n1 mogrify -resize 50%
