#!/bin/bash

top_n=${1:-5}

du -h static/images/* | sort -rh | head "-$top_n"
