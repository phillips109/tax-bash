<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"
	      omit-xml-declaration="yes"/>

  <xsl:template match="taxline">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="linename">
  </xsl:template>

  <xsl:template match="instructions">
  </xsl:template>

  <xsl:template match="IRSInstructions">
  </xsl:template>

  <xsl:template match="notes">
  </xsl:template>

  <xsl:template match="override">
  </xsl:template>

  <xsl:template match="accounts">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="item">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="license">
  </xsl:template>
    
</xsl:stylesheet>
  
