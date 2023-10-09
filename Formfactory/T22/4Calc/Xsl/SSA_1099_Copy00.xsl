<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


<xsl:variable name="SSA_1099-Copy00-lineBox03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox05">
  <xsl:choose>
  <xsl:when test="$SSA_1099-Copy00-lineBox04 >= $SSA_1099-Copy00-lineBox03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SSA_1099-Copy00-lineBox03 - $SSA_1099-Copy00-lineBox04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SSA_1099-Copy00-lineBox03d1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07a">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07a_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07b">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07b_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox08">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox08_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SSA_1099-Copy00">

<copy00lineBox03 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox03, '#####0')"/>
  </copy00lineBox03>


<copy00lineBox04 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox04, '#####0')"/>
  </copy00lineBox04>


<copy00lineBox06 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox06, '#####0')"/>
  </copy00lineBox06>


<copy00lineBox05 color="cyan">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox05, '#####0')"/>
  </copy00lineBox05>


<copy00lineBox03d1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d1"/>
    </copy00lineBox03d1>
  

<copy00lineBox03d2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d2"/>
    </copy00lineBox03d2>
  

<copy00lineBox03d3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d3"/>
    </copy00lineBox03d3>
  

<copy00lineBox03d4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d4"/>
    </copy00lineBox03d4>
  

<copy00lineBox03d5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d5"/>
    </copy00lineBox03d5>
  

<copy00lineBox03d6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d6"/>
    </copy00lineBox03d6>
  

<copy00lineBox03d7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d7"/>
    </copy00lineBox03d7>
  

<copy00lineBox03d8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d8"/>
    </copy00lineBox03d8>
  

<copy00lineBox03e1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e1"/>
    </copy00lineBox03e1>
  

<copy00lineBox03e2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e2"/>
    </copy00lineBox03e2>
  

<copy00lineBox03e3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e3"/>
    </copy00lineBox03e3>
  

<copy00lineBox03e4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e4"/>
    </copy00lineBox03e4>
  

<copy00lineBox03e5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e5"/>
    </copy00lineBox03e5>
  

<copy00lineBox03e6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e6"/>
    </copy00lineBox03e6>
  

<copy00lineBox03e7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e7"/>
    </copy00lineBox03e7>
  

<copy00lineBox03e8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e8"/>
    </copy00lineBox03e8>
  

<copy00lineBox04d1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d1"/>
    </copy00lineBox04d1>
  

<copy00lineBox04d2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d2"/>
    </copy00lineBox04d2>
  

<copy00lineBox04d3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d3"/>
    </copy00lineBox04d3>
  

<copy00lineBox04d4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d4"/>
    </copy00lineBox04d4>
  

<copy00lineBox04d5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d5"/>
    </copy00lineBox04d5>
  

<copy00lineBox04d6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d6"/>
    </copy00lineBox04d6>
  

<copy00lineBox04d7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d7"/>
    </copy00lineBox04d7>
  

<copy00lineBox04d8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d8"/>
    </copy00lineBox04d8>
  

<copy00lineBox04e1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e1"/>
    </copy00lineBox04e1>
  

<copy00lineBox04e2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e2"/>
    </copy00lineBox04e2>
  

<copy00lineBox04e3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e3"/>
    </copy00lineBox04e3>
  

<copy00lineBox04e4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e4"/>
    </copy00lineBox04e4>
  

<copy00lineBox04e5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e5"/>
    </copy00lineBox04e5>
  

<copy00lineBox04e6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e6"/>
    </copy00lineBox04e6>
  

<copy00lineBox04e7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e7"/>
    </copy00lineBox04e7>
  

<copy00lineBox04e8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e8"/>
    </copy00lineBox04e8>
  

<copy00lineBox07 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07"/>
    </copy00lineBox07>
  

<copy00lineBox07a color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07a"/>
    </copy00lineBox07a>
  

<copy00lineBox07b color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07b"/>
    </copy00lineBox07b>
  

<copy00lineBox08 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox08"/>
    </copy00lineBox08>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
