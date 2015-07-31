#!/bin/bash

for dir in */ ; 
do
	cd "$dir" 
	if [ -f template.xml ]
	then
		echo "processing template in `basename $dir` directory"
		../replaceTags.sh template.xml `basename $dir`.xml
	fi
	cd ..
done

build.tcl
