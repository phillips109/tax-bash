<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line01 +
$CLCWkst-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07">
<xsl:value-of select="$CLCWkst-Copy00-line04 +
$CLCWkst-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12">
<xsl:value-of select="$CLCWkst-Copy00-line10 +
$CLCWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line02 &gt;= $CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line07 >= $CLCWkst-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line05 - $CLCWkst-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line05 >= $CLCWkst-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line04 - $CLCWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line12 >= $CLCWkst-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line09 - $CLCWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="CLCWkst-Copy00">

<copy00line03 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line07 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line12 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line01 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line05 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line09 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line04 color="blue">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line08 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line11 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line13 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line13, '#####0')"/>
  </copy00line13>

</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
