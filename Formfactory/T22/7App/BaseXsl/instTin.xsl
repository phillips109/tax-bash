<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml"
	      indent="yes"
	      omit-xml-declaration="yes"/>
  
  <xsl:param name="instructions"/>
  
  <xsl:template match="taxline">
    <taxline type="text">
      <xsl:attribute name="color">
	<xsl:value-of select="@color"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </taxline>
  </xsl:template>

  <xsl:template match="linename">
    <linename>
      <xsl:value-of select="."/>
    </linename>
  </xsl:template>

  
  <xsl:template match="instructions">
    <instructions>
      <xsl:value-of select="$instructions"/>
    </instructions>
  </xsl:template>

  <xsl:template match="IRSinstructions">
    <IRSinstructions>
      <xsl:value-of select="."/>
    </IRSinstructions>
  </xsl:template>

  <xsl:template match="notes">
    <notes>
      <xsl:value-of select="."/>
    </notes>
  </xsl:template>

  <xsl:template match="text">
    <text>
      <xsl:value-of select="."/>
    </text>
  </xsl:template>

</xsl:stylesheet>
