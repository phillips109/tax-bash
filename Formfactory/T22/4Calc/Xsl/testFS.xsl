<?xsl version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		version="1.0">
  <xsl:template name="testFS">
    <xsl:choose>
      <xsl:when test="document('../Data/Form1040_Copy00_lineFS_text.xml')">
	<valule-of select="The file Form1040_Copy00_lineFS_text.xml exists."/>
	<xsl:call-template name="readFS"/>
      </xsl:when>
      <xsl:otherwise>
	<xsl:call-template name="createFSFile"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="readFS">
    <xsl:choose>
      <xsl:when test="$document('../Data/Form1040_Copy_lineFS_text.xml')//text='S'">
	<xsl:value-of select="Filing Status is set to Single(S)."/>
      </xsl:when>
      <xsl:when test="$document('../Data/Form1040_Copy_lineFS_text.xml')//text='MFJ'">
	<xsl:value-of select="Filing Status is set to Married Filing Jointly(MFJ)."/>
      </xsl:when>
      <xsl:when test="$document('../Data/Form1040_Copy_lineFS_text.xml')//text='MFS'">
	<xsl:value-of select="Filing Status is set to Married Fiing Separately(MFS)."/>
      </xsl:when>
      <xsl:when test="$document('../Data/Form1040_Copy_lineFS_text.xml')//text='HOH'">
	<xsl:value-of select="Filing Status is set to Head of Household(HOH)."/>
      </xsl:when>
      <xsl:when test="$document('../Data/Form1040_Copy_lineFS_text.xml')//text='QW'">
	<xsl:value-of select="Filing Status is set to Qualifying Widow(er)(QW)."/>
      </xsl:when>
      <xsl:otherwise>
	<xsl:value-of select="The text element in ../Data/Form1040_Copy00_lineFS_text.xml is either not set or corrupted."/>
	<xsl:call-template name="setFS"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
