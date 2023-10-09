#!/bin/bash

#java $XALANJAVAJAR org.apache.xalan.xslt.Process -in charity.xml -xsl acct2Awk.xsl -out charity.awk

#sed -f rm4in.sed charity.awk > charity.tmp0

#awk -f noheader.awk charity.tmp0 > charity.tmp1

#sort charity.tmp1 > charity.tmp2

#awk -f setdesc.awk charity.tmp2 > charity.tmp3

#sort charity.tmp3 > charity.tmp4

awk -f fprint.awk charity.tmp4 > charity.tmp5

awk -f fprint2.awk charity.tmp5 > charity.tmp6

emacs charity.tmp6

#sort charity.tmp6 > charity.tmp7

#awk -f back2xsl.awk  charity.tmp7 > charity.tmp8 act=charity

#emacs charity.tmp8
