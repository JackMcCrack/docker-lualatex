#!/bin/bash

for TEXFILE in `ls -1 *.tex`
do
       	echo "building $TEXFILE …"
	lualatex --interaction=batchmode --output-directory=output/ $TEXFILE
done
