#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../price-1.0
xml2txt price-1.0.xml
xml2html price-1.0.xml
exit