#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../premium-1.0
xml2txt premium-1.0.xml
xml2html premium-1.0.xml
exit