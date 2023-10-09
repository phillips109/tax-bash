<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


<xsl:variable name="Form4952-Copy00-line03">
  <xsl:value-of select="$Form4952-Copy00-line01 +
      			$Form4952-Copy00-line02"/>
    </xsl:variable>


<xsl:variable name="Form4952-Copy00-line04h">
  <xsl:value-of select="$Form4952-Copy00-line04c +
      			$Form4952-Copy00-line04f +
      			$Form4952-Copy00-line04g"/>
    </xsl:variable>


<xsl:variable name="Form4952-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-linencg">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04e">
  <xsl:choose>
<xsl:when test="$Form4952-Copy00-line04d &gt;= $Form4952-Copy00-linencg">
<xsl:value-of select="$Form4952-Copy00-linencg"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line04d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line08">
  <xsl:choose>
<xsl:when test="$Form4952-Copy00-line03 &gt;= $Form4952-Copy00-line06">
<xsl:value-of select="$Form4952-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line06">
  <xsl:choose>
  <xsl:when test="$Form4952-Copy00-line05 >= $Form4952-Copy00-line04h">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line04h - $Form4952-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form4952-Copy00-line07">
  <xsl:choose>
  <xsl:when test="$Form4952-Copy00-line06 >= $Form4952-Copy00-line03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line03 - $Form4952-Copy00-line06"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form4952-Copy00-line04c">
  <xsl:value-of select="format-number($Form4952-Copy00-line04a - 
			$Form4952-Copy00-line04b,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04f">
  <xsl:value-of select="format-number($Form4952-Copy00-line04d - 
			$Form4952-Copy00-line04e,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-lineSFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineSLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form4952-Copy00">

<copy00line03 color="green">
  <xsl:value-of select="format-number($Form4952-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04h color="green">
  <xsl:value-of select="format-number($Form4952-Copy00-line04h, '#####0')"/>
  </copy00line04h>


<copy00line01 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line04a color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04a, '#####0')"/>
  </copy00line04a>


<copy00line04b color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04b, '#####0')"/>
  </copy00line04b>


<copy00line04d color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04d, '#####0')"/>
  </copy00line04d>


<copy00line04g color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04g, '#####0')"/>
  </copy00line04g>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00linencg color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-linencg, '#####0')"/>
  </copy00linencg>


<copy00line04e color="blue">
  <xsl:value-of select="format-number($Form4952-Copy00-line04e, '#####0')"/>
  </copy00line04e>


<copy00line08 color="blue">
  <xsl:value-of select="format-number($Form4952-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line06 color="cyan">
  <xsl:value-of select="format-number($Form4952-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="cyan">
  <xsl:value-of select="format-number($Form4952-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line04c color="purple">
  <xsl:value-of select="format-number($Form4952-Copy00-line04c, '#####0')"/>
  </copy00line04c>


<copy00line04f color="purple">
  <xsl:value-of select="format-number($Form4952-Copy00-line04f, '#####0')"/>
  </copy00line04f>


<copy00lineSFNI color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
