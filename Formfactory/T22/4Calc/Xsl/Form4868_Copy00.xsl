<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="Form4868-Copy00-lineamtpd">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linet0tpay">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linetottax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linebal">
<xsl:value-of select="format-number($Form4868-Copy00-linetottax -  $Form4868-Copy00-linet0tpay, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-line1040NR">
<xsl:value-of select="document('../Data/Form4868_Copy00_line1040NR_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaddr1">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaddr2">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaway">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaway_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linecity">
<xsl:value-of select="document('../Data/Form4868_Copy00_linecity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineST">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linezip">
<xsl:value-of select="document('../Data/Form4868_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form4868-Copy00">

<copy00lineamtpd color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-lineamtpd, '#####0')"/>
  </copy00lineamtpd>


<copy00linet0tpay color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-linet0tpay, '#####0')"/>
  </copy00linet0tpay>


<copy00linetottax color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-linetottax, '#####0')"/>
  </copy00linetottax>


<copy00linebal color="purple">
  <xsl:value-of select="format-number($Form4868-Copy00-linebal, '#####0')"/>
  </copy00linebal>


<copy00line1040NR color="blue">
    <xsl:value-of select="$Form4868-Copy00-line1040NR"/>
    </copy00line1040NR>
  

<copy00lineaddr1 color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaddr1"/>
    </copy00lineaddr1>
  

<copy00lineaddr2 color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaddr2"/>
    </copy00lineaddr2>
  

<copy00lineaway color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaway"/>
    </copy00lineaway>
  

<copy00linecity color="blue">
    <xsl:value-of select="$Form4868-Copy00-linecity"/>
    </copy00linecity>
  

<copy00lineST color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineST"/>
    </copy00lineST>
  

<copy00linezip color="blue">
    <xsl:value-of select="$Form4868-Copy00-linezip"/>
    </copy00linezip>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineSSSNoF color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoF"/>
    </copy00lineSSSNoF>
  

<copy00lineSSSNoL color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoL"/>
    </copy00lineSSSNoL>
  

<copy00lineSSSNoM color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoM"/>
    </copy00lineSSSNoM>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
