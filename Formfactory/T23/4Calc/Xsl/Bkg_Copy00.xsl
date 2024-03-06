<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="Bkg-Copy00-lineApart">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineApart_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineFS">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineSFNI">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineSLN">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineSSSNoF">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineSSSNoL">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineSSSNoM">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineTLN">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Bkg-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Bkg-Copy00">

<copy00lineApart color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineApart"/>
    </copy00lineApart>
  

<copy00lineFS color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineSSSNoF color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoF"/>
    </copy00lineSSSNoF>
  

<copy00lineSSSNoL color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoL"/>
    </copy00lineSSSNoL>
  

<copy00lineSSSNoM color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoM"/>
    </copy00lineSSSNoM>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
