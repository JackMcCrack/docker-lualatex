#!/bin/bash

for TEXFILE in ${1:-$(ls -1 *.tex)}
do
       	echo "building $TEXFILE …"
	lualatex --interaction=batchmode --output-directory=output/ $TEXFILE
	echo ""
       	echo "done $TEXFILE"
done
