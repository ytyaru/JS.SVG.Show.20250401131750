#!/usr/bin/env bash
cd `dirname $0`
python svg2glif.py -t "rotate(180,128,128)" arrow-top.svg arrow-bottom.svg
# svg2glif.py: error: argument -t/--transform: Invalid transformation matrix: 'rotate(180,128,128)'
