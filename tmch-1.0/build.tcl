#!/usr/bin/env tclsh

cd ..
source xml2rfc.tcl
cd tmch-1.0
xml2txt tmch-1.0.xml
xml2html tmch-1.0.xml
exit
