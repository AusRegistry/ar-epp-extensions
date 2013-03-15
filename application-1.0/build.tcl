#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../application-1.0
xml2txt application-1.0.xml
xml2html application-1.0.xml
exit