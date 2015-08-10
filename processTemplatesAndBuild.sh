#!/bin/bash

#process all the existing templates by replacing file name tags in the templates with the contents of the corresponding files
for dir in */ ; 
do
	cd "$dir" 
	if [ -f template.xml ]
	then
		echo "processing template in `basename $dir` directory"
		../scripts/replaceTags.sh template.xml `basename $dir`.xml
	fi
	cd ..
done

# run the xml2rfc tool to generate txt and html versions of the xml documents
scripts/build.tcl
