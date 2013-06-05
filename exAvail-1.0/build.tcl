#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../exAvail-1.0
xml2txt exAvail-1.0.xml
xml2html exAvail-1.0.xml
exit