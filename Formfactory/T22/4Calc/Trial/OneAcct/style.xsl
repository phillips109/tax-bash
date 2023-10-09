<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:param name="view" select="expanded"/>
  <xsl:strip-space elements="*"/>
  <xsl:include href="rootrule.xsl"/>
  
  <xsl:attribute-set name="list-geometry">
    <xsl:attribute name="provisional-distance-between-starts">75pt</xsl:attribute>
    <xsl:attribute name="provisional-label-separation">4pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:template match="middle">
    <xsl:value-of select="text()"/>
    <xsl:text> </xsl:text>
  </xsl:template>

  <xsl:template match="suffix">
    <xsl:text>, </xsl:text>
    <xsl:value-of select="text()"/>
  </xsl:template>

    <xsl:template match="@name">
    <xsl:value-of select="."/>
    <xsl:text>, </xsl:text>
  </xsl:template>

  <xsl:template match="commander|CM|LM">
    <xsl:value-of select="given"/>
    <xsl:text> </xsl:text>
    <xsl:apply-templates select="middle"/>
    <xsl:value-of select="surname"/>
    <xsl:apply-templates select="suffix"/>
  </xsl:template>

  <xsl:template name="list-item-label">
    <fo:list-item-label end-indent="label-end()">
      <fo:block text-align="start"
		font-weight="bold">
	<xsl:text>Apollo </xsl:text>
	<xsl:value-of select="@number"/>
      </fo:block>
    </fo:list-item-label>
  </xsl:template>

  <xsl:template name="case-expanded">
    <xsl:call-template name="list-item-label"/>
    <fo:list-item-body start-indent="body-start()">
      <fo:block font-weight="bold">
	<xsl:value-of select=".//total"/>
      </fo:block>
        <xsl:value-of select="substring-before(./trn:date, ' ')"/>
        <xsl:text> </xsl:text>
	<xsl:value-of select="./trn:description">
      </fo:block>
      <fo:block>
	<xsl:text>Command Module </xsl:text>
	<xsl:apply-templates select="crew/CM/@name"/>
	<xsl:text> pilot </xsl:text>
	<xsl:apply-templates select="crew/CM"/>
      </fo:block>
      <fo:block>
	<xsl:text>Lunar Module </xsl:text>
	<xsl:apply-templates select="crew/LM/@name"/>
	<xsl:text> pilot </xsl:text>
	<xsl:apply-templates select="crew/LM"/>
      </fo:block>
      <fo:block>
	<xsl:apply-templates select="purpose"/>
      </fo:block>
    </fo:list-item-body>
  </xsl:template>

  <xsl:template name="case-collapsed">
    <xsl:call-template name="list-item-label"/>
    <fo:list-item-body start-indent="body-start()">
      <fo:block>
	<xsl:value-of select="dates"/>
      </fo:block>
    </fo:list-item-body>
  </xsl:template>

  
  <xsl:template match="mission">
    <fo:list-item>
      <xsl:choose>
	<xsl:when test="$view='expanded'">
	  <xsl:call-template name="case-expanded"/>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:call-template name="case-collapsed"/>
	</xsl:otherwise>
      </xsl:choose>
    </fo:list-item>
  </xsl:template>
  

  <!--  fo:multi-toggle is not yet implemented in Apache FOP 
     <fo:multi-switch cannot be a child of fo:list item

  <xsl:template match="mission">
    <fo:list-item>

      <xsl:call-template name="list-item-label"/>
      <fo:list-item-body start-indent="body-start()">
      <fo:multi-switch>
	<fo:multi-case case-name="collapsed"
		       starting-state="show">
	  <fo:multi-toggle switch-to="expanded">
	    <xsl:call-template name="case-collapsed"/>
	  </fo:multi-toggle>
	</fo:multi-case>
	<fo:multi-case case-name="expanded">
	  <fo:multi-toggle switch-to="collapsed">
	    <xsl:call-template name="case-expanded"/>
	  </fo:multi-toggle>
	</fo:multi-case>
      </fo:multi-switch>

      </fo:list-item-body>
    </fo:list-item>
  </xsl:template>
-->  

  <xsl:template match="apollo">
    <fo:list-block xsl:use-attribute-sets="list-geometry">
      <xsl:apply-templates/>
    </fo:list-block>
  </xsl:template>
</xsl:stylesheet>
