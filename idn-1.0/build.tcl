#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../idn-1.0
xml2txt idn-1.0.xml
xml2html idn-1.0.xml
exit