<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:variable name="FS">
    <xsl:value-of select=".//text"/>
  </xsl:variable>

  <xsl:template match="/">
    <xsl:choose>
      <xsl:when test="$FS='S'">
	<xsl:text>Your filing status is currently</xsl:text>
	<xsl:value-of select="'Single'"/>
      </xsl:when>
      <xsl:when test="$FS='MFJ'">
	<xsl:text>Your filing status is currently</xsl:text>
	<xsl:value-of select="$'Married Filing Jointly'"/>
      </xsl:when>
      <xsl:when test="$FS='MFS'">
	<xsl:text>Your filing status is currently</xsl:text>
	<xsl:value-of select="'Married Filing Separately'"/>
      </xsl:when>
      <xsl:when test="$FS='HOH'">
	<xsl:text>Your filing status is currently</xsl:text>
	<xsl:value-of select="'Head of Household'"/>
      </xsl:when>
      <xsl:when test="$FS='QW'">
	<xsl:text>Your filing status is currently</xsl:text>
	<xsl:value-of select="'Qualifying Widow(er)'"/>
      </xsl:when>
      <xsl:otherwise>
	<xsl:text>Your filing status is either not entered or corrupted.</xsl:text>
	<xsl:text>Go to Form Bkg to enter the data properly."</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
