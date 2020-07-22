#!/bin/bash

for TEXFILE in `ls -1 *.tex`
do 
	lualatex --interaction=batchmode --output-directory=output/ $TEXFILE
done
