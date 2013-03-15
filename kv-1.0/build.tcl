#!/usr/bin/env tclsh

cd ../xml2rfc-1.36
source xml2rfc.tcl
cd ../kv-1.0
xml2txt kv-1.0.xml
xml2html kv-1.0.xml
exit