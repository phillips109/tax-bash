#!/bin/bash
java $XALANJAVAJAR org.apache.xalan.xslt.Process

taxCalc.xsl param filingStatus="S" param lineToBeTaxed="100500"
