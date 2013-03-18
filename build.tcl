#!/usr/bin/tclsh

source xml2rfc.tcl
set documents { application-1.0 idn-1.0 kv-1.0 premium-1.0 tmch-1.0 variant-1.1 }
foreach {document} $documents {
   cd $document
   puts "processing $document to txt"
   xml2txt $document.xml
   file rename -force $document.txt ../../ausregistry.github.com/doc/$document/$document.txt
   puts "processing $document to html"
   xml2html $document.xml
   file rename -force $document.html ../../ausregistry.github.com/doc/$document/$document.html
   cd ..
}
exit
