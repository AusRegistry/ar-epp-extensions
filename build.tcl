#!/usr/bin/tclsh

source xml2rfc.tcl
set documents [exec find . -maxdepth 1 -type d -name "*-?.?" | cut -c3- ]
foreach {document} $documents {
   cd $document
   puts "processing $document to txt"
   xml2txt $document.xml
   file rename -force $document.txt ../../ausregistry.github.com/epp-ext-doc/$document.txt
   puts "processing $document to html"
   xml2html $document.xml
   file rename -force $document.html ../../ausregistry.github.com/epp-ext-doc/$document.html
   cd ..
}
exit
