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

  <xsl:template match="override">
    <override>
      <xsl:value-of select="."/>
    </override>
  </xsl:template>

  <xsl:template match="accounts">
    <accounts>
      <xsl:for-each select="item">
	<item>
	  <xsl:apply-templates/>
	</item>
      </xsl:for-each>
    </accounts>
  </xsl:template>

  <xsl:template match="item">
    <xsl:value-of select="."/>
  </xsl:template>
  
</xsl:stylesheet>
