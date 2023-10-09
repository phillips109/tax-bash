<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:act="http://www.gnucash.org/XML/act"
                xmlns:trn="http://www.gnucash.org/XML/trn"
		xmlns:ts="http://www.gnucash.org/XML/ts"
		xmlns:split="http://www.gnucash.org/XML/split">

  
  <xsl:output method="text"
	      encoding="us-ascii"/>

  <xsl:template match="account">
    <xsl:text></xsl:text>
    <xsl:apply-templates/>
  </xsl:template>
    
    
  <xsl:template match="//transaction">
    <xsl:value-of select="substring(.//ts:date, 6, 5)"/>
    <text> !</text>
    <xsl:value-of select=".//trn:description"/>
    <xsl:text> !</xsl:text>
    <xsl:value-of select=".//split:dollarvalue * -1"/>
    <text> !</text>
    <xsl:value-of select="ancestor::account/act:name"/>
  </xsl:template>
  
</xsl:stylesheet>
		
