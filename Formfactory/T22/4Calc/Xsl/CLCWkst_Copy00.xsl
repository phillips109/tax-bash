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

<xsl:variable name="CLCWkst-Copy00-line07a">
<xsl:value-of select="$CLCWkst-Copy00-line04 +
$CLCWkst-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12a">
<xsl:value-of select="$CLCWkst-Copy00-line10 +
$CLCWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-linemin1">
<xsl:value-of select="-1"/>
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

<xsl:variable name="CLCWkst-Copy00-line05a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a']), '#####0')"/>
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

<xsl:variable name="CLCWkst-Copy00-line09a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-lineT2110402111">
<xsl:choose>
<xsl:when test="document('../../T21/Output/Form1040(2021)_Copy01.xml')">
<xsl:value-of select="document('../../T21/Output/Form1040(2021)_Copy01.xml')//copy01line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-lineT2110402114">
<xsl:choose>
<xsl:when test="document('../../T21/Output/Form1040(2021)_Copy01.xml')">
<xsl:value-of select="document('../../T21/Output/Form1040(2021)_Copy01.xml')//copy01line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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

<xsl:variable name="CLCWkst-Copy00-line08a">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line07 >= $CLCWkst-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line05 - $CLCWkst-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11a">
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

<xsl:variable name="CLCWkst-Copy00-line01">
<xsl:value-of select="$CLCWkst-Copy00-line10402122 -  $CLCWkst-Copy00-line10402114"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line05a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line06a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line07a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line08a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line015 &lt; 0">
<xsl:value-of select="line09a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line10a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line11a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line12a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line13a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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


<copy00line07a color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line07a, '#####0')"/>
  </copy00line07a>


<copy00line12a color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line12a, '#####0')"/>
  </copy00line12a>


<copy00linemin1 color="blue">
  <xsl:value-of select="format-number($CLCWkst-Copy00-linemin1, '#####0')"/>
  </copy00linemin1>


<copy00line01 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line05a color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line05a, '#####0')"/>
  </copy00line05a>


<copy00line06 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line09a color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line09a, '#####0')"/>
  </copy00line09a>


<copy00line10a color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10a, '#####0')"/>
  </copy00line10a>


<copy00line10402111 color="purple">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10402111, '#####0')"/>
  </copy00line10402111>


<copy00line10402114 color="purple">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10402114, '#####0')"/>
  </copy00line10402114>


<copy00line04 color="blue">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line08a color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line08a, '#####0')"/>
  </copy00line08a>


<copy00line11a color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line11a, '#####0')"/>
  </copy00line11a>


<copy00line13 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line05 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line05, 'CHOOS1')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line06, 'CHOOS1')"/>
  </copy00line06>


<copy00line07 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line07, 'CHOOS1')"/>
  </copy00line07>


<copy00line08 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line08, 'CHOOS1')"/>
  </copy00line08>


<copy00line09 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line09, 'CHOOS1')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10, 'CHOOS1')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line11, 'CHOOS1')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line12, 'CHOOS1')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line13, 'CHOOS1')"/>
  </copy00line13>

</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
