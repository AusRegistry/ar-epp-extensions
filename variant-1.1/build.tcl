#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../variant-1.1
xml2txt variant-1.1.xml
xml2html variant-1.1.xml
exit