<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:include href="../BaseXsl/taxCalc.xsl"/>

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

<xsl:variable name="SchedC-Copy00-line07">
<xsl:value-of select="$SchedC-Copy00-line05 +
$SchedC-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line28">
<xsl:value-of select="$SchedC-Copy00-line08 +
$SchedC-Copy00-line09 +
$SchedC-Copy00-line10 +
$SchedC-Copy00-line11 +
$SchedC-Copy00-line12 +
$SchedC-Copy00-line13 +
$SchedC-Copy00-line14 +
$SchedC-Copy00-line15 +
$SchedC-Copy00-line16a +
$SchedC-Copy00-line16b +
$SchedC-Copy00-line17 +
$SchedC-Copy00-line18 +
$SchedC-Copy00-line19 +
$SchedC-Copy00-line20a +
$SchedC-Copy00-line20b +
$SchedC-Copy00-line21 +
$SchedC-Copy00-line22 +
$SchedC-Copy00-line23 +
$SchedC-Copy00-line24a +
$SchedC-Copy00-line24b +
$SchedC-Copy00-line25 +
$SchedC-Copy00-line26 +
$SchedC-Copy00-line27a +
$SchedC-Copy00-line27b"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line40">
<xsl:value-of select="$SchedC-Copy00-line35 +
$SchedC-Copy00-line36 +
$SchedC-Copy00-line37 +
$SchedC-Copy00-line38 +
$SchedC-Copy00-line39"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-linetotlO">
<xsl:value-of select="$SchedC-Copy00-lineExp1 +
$SchedC-Copy00-lineExp2 +
$SchedC-Copy00-lineExp3 +
$SchedC-Copy00-lineExp4 +
$SchedC-Copy00-lineExp5 +
$SchedC-Copy00-lineExp6 +
$SchedC-Copy00-lineExp7 +
$SchedC-Copy00-lineExp8 +
$SchedC-Copy00-lineExp9"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line15">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line15'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line15'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line15']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line17">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line17'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line17'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line17']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line18">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line18'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line18'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line18']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line19">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line19'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line19'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line19']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line20a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line20b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line20b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line21">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line21'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line21'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line21']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line22">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line22'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line22'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line22']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line23">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line23'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line23'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line23']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line24a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line24b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line24b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line25">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line25'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line25'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line25']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line26">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line26'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line26'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line26']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line27a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line27b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line27b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line30">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line30a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line30b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line30b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line35">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line35'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line35'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line35']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line36">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line36'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line36'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line36']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line37">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line37'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line37'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line37']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line38">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line38'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line38'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line38']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line39">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line39'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line39'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line39']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line41">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line41'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line41'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line41']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line44a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line44b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line44c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-line44c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp1">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp1'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp1'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp1']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp3">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp3'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp3'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp3']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp4">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp4'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp4'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp4']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp5">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp5'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp5'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp5']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp6">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp6'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp6'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp6']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp7">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp7'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp7'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp7']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp8">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp8'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp8'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp8']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp9">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp9'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp9'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedC-Copy00-lineExp9']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line03">
<xsl:value-of select="$SchedC-Copy00-line01 -  $SchedC-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line05">
<xsl:value-of select="$SchedC-Copy00-line03 -  $SchedC-Copy00-line04"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line29">
<xsl:value-of select="$SchedC-Copy00-line07 -  $SchedC-Copy00-line28"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line31">
<xsl:value-of select="$SchedC-Copy00-line29 -  $SchedC-Copy00-line30"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line42">
<xsl:value-of select="$SchedC-Copy00-line40 -  $SchedC-Copy00-line41"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line01Ck">
<xsl:value-of select="document('../Data/SchedC_Copy00_line01Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line32a">
<xsl:value-of select="document('../Data/SchedC_Copy00_line32a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line32b">
<xsl:value-of select="document('../Data/SchedC_Copy00_line32b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line33a">
<xsl:value-of select="document('../Data/SchedC_Copy00_line33a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line33b">
<xsl:value-of select="document('../Data/SchedC_Copy00_line33b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line33c">
<xsl:value-of select="document('../Data/SchedC_Copy00_line33c_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line34n">
<xsl:value-of select="document('../Data/SchedC_Copy00_line34n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line34y">
<xsl:value-of select="document('../Data/SchedC_Copy00_line34y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line43d">
<xsl:value-of select="document('../Data/SchedC_Copy00_line43d_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line43m">
<xsl:value-of select="document('../Data/SchedC_Copy00_line43m_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line43y">
<xsl:value-of select="document('../Data/SchedC_Copy00_line43y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line45n">
<xsl:value-of select="document('../Data/SchedC_Copy00_line45n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line45y">
<xsl:value-of select="document('../Data/SchedC_Copy00_line45y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line46n">
<xsl:value-of select="document('../Data/SchedC_Copy00_line46n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line46y">
<xsl:value-of select="document('../Data/SchedC_Copy00_line46y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line47an">
<xsl:value-of select="document('../Data/SchedC_Copy00_line47an_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line47ay">
<xsl:value-of select="document('../Data/SchedC_Copy00_line47ay_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line47bn">
<xsl:value-of select="document('../Data/SchedC_Copy00_line47bn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line47by">
<xsl:value-of select="document('../Data/SchedC_Copy00_line47by_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineaccru">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineaccru_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineAddr1">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineAddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineAddr2">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineAddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB1">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB2">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB3">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB4">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB5">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineB6">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineB6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineBusNm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineBusNm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-linecash">
<xsl:value-of select="document('../Data/SchedC_Copy00_linecash_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineCity">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineCity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD1">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD2">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD3">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD4">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD5">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD6">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD7">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD8">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineD9">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineD9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp1nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp1nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp2nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp2nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp3nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp3nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp4nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp4nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp5nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp5nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp6nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp6nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp7nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp7nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp8nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp8nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineExp9nm">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineExp9nm_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineGn">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineGn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineGy">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineGy_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineHx">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineHx_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineIn">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineIn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineIy">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineIy_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineJn">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineJn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineJy">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineJy_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineother">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineother_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-linePrBus">
<xsl:value-of select="document('../Data/SchedC_Copy00_linePrBus_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-linespecif">
<xsl:value-of select="document('../Data/SchedC_Copy00_linespecif_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineST">
<xsl:value-of select="document('../Data/SchedC_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-linezip">
<xsl:value-of select="document('../Data/SchedC_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

  <xsl:include href="taxCalc.xsl"/>

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
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedC-Copy00">

<copy00line07 color="green">
  <xsl:value-of select="format-number($SchedC-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line28 color="green">
  <xsl:value-of select="format-number($SchedC-Copy00-line28, '#####0')"/>
  </copy00line28>


<copy00line40 color="green">
  <xsl:value-of select="format-number($SchedC-Copy00-line40, '#####0')"/>
  </copy00line40>


<copy00linetotlO color="green">
  <xsl:value-of select="format-number($SchedC-Copy00-linetotlO, '#####0')"/>
  </copy00linetotlO>


<copy00line01 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line04 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line06 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line08 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line09 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line14 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line16a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line16a, '#####0')"/>
  </copy00line16a>


<copy00line16b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line16b, '#####0')"/>
  </copy00line16b>


<copy00line17 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line18 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line19 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line20a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line20a, '#####0')"/>
  </copy00line20a>


<copy00line20b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line20b, '#####0')"/>
  </copy00line20b>


<copy00line21 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line22 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line23 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line24a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line24a, '#####0')"/>
  </copy00line24a>


<copy00line24b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line24b, '#####0')"/>
  </copy00line24b>


<copy00line25 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line25, '#####0')"/>
  </copy00line25>


<copy00line26 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line26, '#####0')"/>
  </copy00line26>


<copy00line27a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line27a, '#####0')"/>
  </copy00line27a>


<copy00line27b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line27b, '#####0')"/>
  </copy00line27b>


<copy00line30 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line30, '#####0')"/>
  </copy00line30>


<copy00line30a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line30a, '#####0')"/>
  </copy00line30a>


<copy00line30b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line30b, '#####0')"/>
  </copy00line30b>


<copy00line35 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line35, '#####0')"/>
  </copy00line35>


<copy00line36 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line36, '#####0')"/>
  </copy00line36>


<copy00line37 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line37, '#####0')"/>
  </copy00line37>


<copy00line38 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line38, '#####0')"/>
  </copy00line38>


<copy00line39 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line39, '#####0')"/>
  </copy00line39>


<copy00line41 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line41, '#####0')"/>
  </copy00line41>


<copy00line44a color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line44a, '#####0')"/>
  </copy00line44a>


<copy00line44b color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line44b, '#####0')"/>
  </copy00line44b>


<copy00line44c color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-line44c, '#####0')"/>
  </copy00line44c>


<copy00lineExp1 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp1, '#####0')"/>
  </copy00lineExp1>


<copy00lineExp2 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp2, '#####0')"/>
  </copy00lineExp2>


<copy00lineExp3 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp3, '#####0')"/>
  </copy00lineExp3>


<copy00lineExp4 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp4, '#####0')"/>
  </copy00lineExp4>


<copy00lineExp5 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp5, '#####0')"/>
  </copy00lineExp5>


<copy00lineExp6 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp6, '#####0')"/>
  </copy00lineExp6>


<copy00lineExp7 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp7, '#####0')"/>
  </copy00lineExp7>


<copy00lineExp8 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp8, '#####0')"/>
  </copy00lineExp8>


<copy00lineExp9 color="red">
  <xsl:value-of select="format-number($SchedC-Copy00-lineExp9, '#####0')"/>
  </copy00lineExp9>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($SchedC-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line05 color="purple">
  <xsl:value-of select="format-number($SchedC-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line29 color="purple">
  <xsl:value-of select="format-number($SchedC-Copy00-line29, '#####0')"/>
  </copy00line29>


<copy00line31 color="purple">
  <xsl:value-of select="format-number($SchedC-Copy00-line31, '#####0')"/>
  </copy00line31>


<copy00line42 color="purple">
  <xsl:value-of select="format-number($SchedC-Copy00-line42, '#####0')"/>
  </copy00line42>


<copy00line01Ck color="blue">
    <xsl:value-of select="$SchedC-Copy00-line01Ck"/>
    </copy00line01Ck>
  

<copy00line32a color="blue">
    <xsl:value-of select="$SchedC-Copy00-line32a"/>
    </copy00line32a>
  

<copy00line32b color="blue">
    <xsl:value-of select="$SchedC-Copy00-line32b"/>
    </copy00line32b>
  

<copy00line33a color="blue">
    <xsl:value-of select="$SchedC-Copy00-line33a"/>
    </copy00line33a>
  

<copy00line33b color="blue">
    <xsl:value-of select="$SchedC-Copy00-line33b"/>
    </copy00line33b>
  

<copy00line33c color="blue">
    <xsl:value-of select="$SchedC-Copy00-line33c"/>
    </copy00line33c>
  

<copy00line34n color="blue">
    <xsl:value-of select="$SchedC-Copy00-line34n"/>
    </copy00line34n>
  

<copy00line34y color="blue">
    <xsl:value-of select="$SchedC-Copy00-line34y"/>
    </copy00line34y>
  

<copy00line43d color="blue">
    <xsl:value-of select="$SchedC-Copy00-line43d"/>
    </copy00line43d>
  

<copy00line43m color="blue">
    <xsl:value-of select="$SchedC-Copy00-line43m"/>
    </copy00line43m>
  

<copy00line43y color="blue">
    <xsl:value-of select="$SchedC-Copy00-line43y"/>
    </copy00line43y>
  

<copy00line45n color="blue">
    <xsl:value-of select="$SchedC-Copy00-line45n"/>
    </copy00line45n>
  

<copy00line45y color="blue">
    <xsl:value-of select="$SchedC-Copy00-line45y"/>
    </copy00line45y>
  

<copy00line46n color="blue">
    <xsl:value-of select="$SchedC-Copy00-line46n"/>
    </copy00line46n>
  

<copy00line46y color="blue">
    <xsl:value-of select="$SchedC-Copy00-line46y"/>
    </copy00line46y>
  

<copy00line47an color="blue">
    <xsl:value-of select="$SchedC-Copy00-line47an"/>
    </copy00line47an>
  

<copy00line47ay color="blue">
    <xsl:value-of select="$SchedC-Copy00-line47ay"/>
    </copy00line47ay>
  

<copy00line47bn color="blue">
    <xsl:value-of select="$SchedC-Copy00-line47bn"/>
    </copy00line47bn>
  

<copy00line47by color="blue">
    <xsl:value-of select="$SchedC-Copy00-line47by"/>
    </copy00line47by>
  

<copy00lineaccru color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineaccru"/>
    </copy00lineaccru>
  

<copy00lineAddr1 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineAddr1"/>
    </copy00lineAddr1>
  

<copy00lineAddr2 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineAddr2"/>
    </copy00lineAddr2>
  

<copy00lineB1 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB1"/>
    </copy00lineB1>
  

<copy00lineB2 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB2"/>
    </copy00lineB2>
  

<copy00lineB3 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB3"/>
    </copy00lineB3>
  

<copy00lineB4 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB4"/>
    </copy00lineB4>
  

<copy00lineB5 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB5"/>
    </copy00lineB5>
  

<copy00lineB6 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineB6"/>
    </copy00lineB6>
  

<copy00lineBusNm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineBusNm"/>
    </copy00lineBusNm>
  

<copy00linecash color="blue">
    <xsl:value-of select="$SchedC-Copy00-linecash"/>
    </copy00linecash>
  

<copy00lineCity color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineCity"/>
    </copy00lineCity>
  

<copy00lineD1 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD1"/>
    </copy00lineD1>
  

<copy00lineD2 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD2"/>
    </copy00lineD2>
  

<copy00lineD3 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD3"/>
    </copy00lineD3>
  

<copy00lineD4 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD4"/>
    </copy00lineD4>
  

<copy00lineD5 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD5"/>
    </copy00lineD5>
  

<copy00lineD6 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD6"/>
    </copy00lineD6>
  

<copy00lineD7 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD7"/>
    </copy00lineD7>
  

<copy00lineD8 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD8"/>
    </copy00lineD8>
  

<copy00lineD9 color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineD9"/>
    </copy00lineD9>
  

<copy00lineExp1nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp1nm"/>
    </copy00lineExp1nm>
  

<copy00lineExp2nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp2nm"/>
    </copy00lineExp2nm>
  

<copy00lineExp3nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp3nm"/>
    </copy00lineExp3nm>
  

<copy00lineExp4nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp4nm"/>
    </copy00lineExp4nm>
  

<copy00lineExp5nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp5nm"/>
    </copy00lineExp5nm>
  

<copy00lineExp6nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp6nm"/>
    </copy00lineExp6nm>
  

<copy00lineExp7nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp7nm"/>
    </copy00lineExp7nm>
  

<copy00lineExp8nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp8nm"/>
    </copy00lineExp8nm>
  

<copy00lineExp9nm color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineExp9nm"/>
    </copy00lineExp9nm>
  

<copy00lineGn color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineGn"/>
    </copy00lineGn>
  

<copy00lineGy color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineGy"/>
    </copy00lineGy>
  

<copy00lineHx color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineHx"/>
    </copy00lineHx>
  

<copy00lineIn color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineIn"/>
    </copy00lineIn>
  

<copy00lineIy color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineIy"/>
    </copy00lineIy>
  

<copy00lineJn color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineJn"/>
    </copy00lineJn>
  

<copy00lineJy color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineJy"/>
    </copy00lineJy>
  

<copy00lineother color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineother"/>
    </copy00lineother>
  

<copy00linePrBus color="blue">
    <xsl:value-of select="$SchedC-Copy00-linePrBus"/>
    </copy00linePrBus>
  

<copy00linespecif color="blue">
    <xsl:value-of select="$SchedC-Copy00-linespecif"/>
    </copy00linespecif>
  

<copy00lineST color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineST"/>
    </copy00lineST>
  

<copy00linezip color="blue">
    <xsl:value-of select="$SchedC-Copy00-linezip"/>
    </copy00linezip>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$SchedC-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
