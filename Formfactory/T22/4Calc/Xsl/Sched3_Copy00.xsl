<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


<xsl:variable name="Sched3-Copy00-line07">
  <xsl:value-of select="$Sched3-Copy00-line06a +
      			$Sched3-Copy00-line06b +
      			$Sched3-Copy00-line06c +
      			$Sched3-Copy00-line06d +
      			$Sched3-Copy00-line06e +
      			$Sched3-Copy00-line06f +
      			$Sched3-Copy00-line06g +
      			$Sched3-Copy00-line06h +
      			$Sched3-Copy00-line06i +
      			$Sched3-Copy00-line06j +
      			$Sched3-Copy00-line06k +
      			$Sched3-Copy00-line06l +
      			$Sched3-Copy00-line06z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line08">
  <xsl:value-of select="$Sched3-Copy00-line01 +
      			$Sched3-Copy00-line02 +
      			$Sched3-Copy00-line03 +
      			$Sched3-Copy00-line04 +
      			$Sched3-Copy00-line05 +
      			$Sched3-Copy00-line07"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line14">
  <xsl:value-of select="$Sched3-Copy00-line13a +
      			$Sched3-Copy00-line13b +
      			$Sched3-Copy00-line13d +
      			$Sched3-Copy00-line13f +
      			$Sched3-Copy00-line13h +
      			$Sched3-Copy00-line13z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line15">
  <xsl:value-of select="$Sched3-Copy00-line09 +
      			$Sched3-Copy00-line10 +
      			$Sched3-Copy00-line11 +
      			$Sched3-Copy00-line12 +
      			$Sched3-Copy00-line14"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line06z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line01">
  <xsl:choose><xsl:when test="document('../Output/Form1116_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1116_Copy00.xml')//copy00line35"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="108"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line02">
  <xsl:choose><xsl:when test="document('../Output/Form2441_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2441_Copy00.xml')//copy00line11"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line03">
  <xsl:choose><xsl:when test="document('../Output/Form8863_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line19"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form8880_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8880_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line05">
  <xsl:choose><xsl:when test="document('../Output/Form5695_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form5695_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06a">
  <xsl:choose><xsl:when test="document('../Output/Form3800_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form3800_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06b">
  <xsl:choose><xsl:when test="document('../Output/Form8801_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8801_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06c">
  <xsl:choose><xsl:when test="document('../Output/Form8839_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8839_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06d">
  <xsl:choose><xsl:when test="document('../Output/SchedR_Copy00.xml')">
    <xsl:value-of select="document('../Output/SchedR_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06e">
  <xsl:choose><xsl:when test="document('../Output/Form8910_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8910_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06f">
  <xsl:choose><xsl:when test="document('../Output/Form8936_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8936_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06g">
  <xsl:choose><xsl:when test="document('../Output/Form8396_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8396_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06h">
  <xsl:choose><xsl:when test="document('../Output/Form8859_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8859_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06i">
  <xsl:choose><xsl:when test="document('../Output/Form8834_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8834_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06j">
  <xsl:choose><xsl:when test="document('../Output/Form8911_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8911_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06k">
  <xsl:choose><xsl:when test="document('../Output/Form8912_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8912_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06l">
  <xsl:choose><xsl:when test="document('../Output/Form8978_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8978_Copy00.xml')//copy00line14"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line09">
  <xsl:choose><xsl:when test="document('../Output/Form8962_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8962_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
  <xsl:choose><xsl:when test="document('../Output/Form4138_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form4138_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line13a">
  <xsl:choose><xsl:when test="document('../Output/Form2439_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2439_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline2">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTLN">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline1">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline1_text.xml')//text"/>
    </xsl:variable>


<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched3-Copy00">

<copy00line07 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line14 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line15 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line06z color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line06z, '#####0')"/>
  </copy00line06z>


<copy00line10 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13b color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13b, '#####0')"/>
  </copy00line13b>


<copy00line13c color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13c, '#####0')"/>
  </copy00line13c>


<copy00line13d color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13d, '#####0')"/>
  </copy00line13d>


<copy00line13e color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13e, '#####0')"/>
  </copy00line13e>


<copy00line13f color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13f, '#####0')"/>
  </copy00line13f>


<copy00line13g color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13g, '#####0')"/>
  </copy00line13g>


<copy00line13h color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13h, '#####0')"/>
  </copy00line13h>


<copy00line13z color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13z, '#####0')"/>
  </copy00line13z>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06a color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06a, '#####0')"/>
  </copy00line06a>


<copy00line06b color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06b, '#####0')"/>
  </copy00line06b>


<copy00line06c color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06c, '#####0')"/>
  </copy00line06c>


<copy00line06d color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06d, '#####0')"/>
  </copy00line06d>


<copy00line06e color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06e, '#####0')"/>
  </copy00line06e>


<copy00line06f color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06f, '#####0')"/>
  </copy00line06f>


<copy00line06g color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06g, '#####0')"/>
  </copy00line06g>


<copy00line06h color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06h, '#####0')"/>
  </copy00line06h>


<copy00line06i color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06i, '#####0')"/>
  </copy00line06i>


<copy00line06j color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06j, '#####0')"/>
  </copy00line06j>


<copy00line06k color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06k, '#####0')"/>
  </copy00line06k>


<copy00line06l color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06l, '#####0')"/>
  </copy00line06l>


<copy00line09 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line12 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13a color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line13a, '#####0')"/>
  </copy00line13a>


<copy00linezline2 color="blue">
    <xsl:value-of select="$Sched3-Copy00-linezline2"/>
    </copy00linezline2>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  

<copy00linezline1 color="blue">
    <xsl:value-of select="$Sched3-Copy00-linezline1"/>
    </copy00linezline1>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
