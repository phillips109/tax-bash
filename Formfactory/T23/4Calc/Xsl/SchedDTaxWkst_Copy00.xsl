<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="SchedDTaxWkst-Copy00-line10">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line06 +
$SchedDTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line11">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line118 +
$SchedDTaxWkst-Copy00-line119"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line28a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line21 +
$SchedDTaxWkst-Copy00-line22"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line32a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line24 +
$SchedDTaxWkst-Copy00-line30"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line36a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line10 +
$SchedDTaxWkst-Copy00-line21"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line41a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line21 +
$SchedDTaxWkst-Copy00-line22 +
$SchedDTaxWkst-Copy00-line30 +
$SchedDTaxWkst-Copy00-line33 +
$SchedDTaxWkst-Copy00-line39"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line45">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line31 +
$SchedDTaxWkst-Copy00-line34 +
$SchedDTaxWkst-Copy00-line40 +
$SchedDTaxWkst-Copy00-line43 +
$SchedDTaxWkst-Copy00-line44"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line215">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line220">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line225">
<xsl:value-of select="0.25"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line228">
<xsl:value-of select="0.28"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="252620"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="2000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="3000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04c"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="4000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line115">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line116">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line118">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line119">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line31a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line30 * $SchedDTaxWkst-Copy00-line215"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line34a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33 * $SchedDTaxWkst-Copy00-line220"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line40a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39 * $SchedDTaxWkst-Copy00-line225"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line43a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42 * $SchedDTaxWkst-Copy00-line228"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line21">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line18 &gt;= $SchedDTaxWkst-Copy00-line20">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line20"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line115 &gt;= $SchedDTaxWkst-Copy00-line116">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line116"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line115"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line03 &gt;= $SchedDTaxWkst-Copy00-line04">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line12">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line09 &gt;= $SchedDTaxWkst-Copy00-line11">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line16">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line15">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line14 &gt;= $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line19">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line19a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line20">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line14 &gt;= $SchedDTaxWkst-Copy00-line19">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line23a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line13">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line27a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line26">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line30a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line25 &gt;= $SchedDTaxWkst-Copy00-line29">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line25"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line35a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line09 &gt;= $SchedDTaxWkst-Copy00-line119">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line119"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line47">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line45 &gt;= $SchedDTaxWkst-Copy00-line46">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line46"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line45"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line04 >= $SchedDTaxWkst-Copy00-line03">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line03 - $SchedDTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line05 >= $SchedDTaxWkst-Copy00-line02">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line02 - $SchedDTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line08 >= $SchedDTaxWkst-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line07 - $SchedDTaxWkst-Copy00-line08"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line14">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line13 >= $SchedDTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 - $SchedDTaxWkst-Copy00-line13"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line18">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line10 >= $SchedDTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 - $SchedDTaxWkst-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line25a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line24 >= $SchedDTaxWkst-Copy00-line23">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23 - $SchedDTaxWkst-Copy00-line24"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line29a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line28 >= $SchedDTaxWkst-Copy00-line27">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line27 - $SchedDTaxWkst-Copy00-line28"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line38a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line37 >= $SchedDTaxWkst-Copy00-line36">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36 - $SchedDTaxWkst-Copy00-line37"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line39a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line38 >= $SchedDTaxWkst-Copy00-line35">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35 - $SchedDTaxWkst-Copy00-line38"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line13">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line10 -  $SchedDTaxWkst-Copy00-line12"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line22">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line16 -  $SchedDTaxWkst-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line33a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23 -  $SchedDTaxWkst-Copy00-line32"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line42a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 -  $SchedDTaxWkst-Copy00-line41"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line15">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'   or $SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="89250"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="59750"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line19a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'   or $SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="182100"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="364200"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="182100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line23">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line24">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line22"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line25a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line26">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="492300"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="2769000"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="553850"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="523050"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line27">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line27a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line28">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line28a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line29">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line29a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line30">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line30a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line31">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line31a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line32">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line32a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line33">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line34">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line34a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line35">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line36">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line37">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line38">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line38a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line39">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line40">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line40a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line41">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line41a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line42">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line43">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line43a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line44">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$SchedDTaxWkst-Copy00-line21"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line46">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:call-template>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedDTaxWkst-Copy00">

<copy00line10 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line28a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line28a, '#####0')"/>
  </copy00line28a>


<copy00line32a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line32a, '#####0')"/>
  </copy00line32a>


<copy00line36a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36a, '#####0')"/>
  </copy00line36a>


<copy00line41a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41a, '#####0')"/>
  </copy00line41a>


<copy00line45 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line45, '#####0')"/>
  </copy00line45>


<copy00line215 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line215, '#0.00##')"/>
  </copy00line215>


<copy00line220 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line220, '#0.00##')"/>
  </copy00line220>


<copy00line225 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line225, '#0.00##')"/>
  </copy00line225>


<copy00line228 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line228, '#0.00##')"/>
  </copy00line228>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line115 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line115, '#####0')"/>
  </copy00line115>


<copy00line116 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line116, '#####0')"/>
  </copy00line116>


<copy00line118 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line118, '#####0')"/>
  </copy00line118>


<copy00line119 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line119, '#####0')"/>
  </copy00line119>


<copy00lineFS color="blue">
    <xsl:value-of select="$SchedDTaxWkst-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00line31a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line31a, '#####0')"/>
  </copy00line31a>


<copy00line34a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34a, '#####0')"/>
  </copy00line34a>


<copy00line40a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40a, '#####0')"/>
  </copy00line40a>


<copy00line43a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43a, '#####0')"/>
  </copy00line43a>


<copy00line21 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line07 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line12 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line16 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line17 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line19 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line20 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line20, '#####0')"/>
  </copy00line20>


<copy00line23a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23a, '#####0')"/>
  </copy00line23a>


<copy00line27a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line27a, '#####0')"/>
  </copy00line27a>


<copy00line30a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line30a, '#####0')"/>
  </copy00line30a>


<copy00line35a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35a, '#####0')"/>
  </copy00line35a>


<copy00line47 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line47, '#####0')"/>
  </copy00line47>


<copy00line05 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line09 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line14 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line18 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line25a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25a, '#####0')"/>
  </copy00line25a>


<copy00line29a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line29a, '#####0')"/>
  </copy00line29a>


<copy00line38a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38a, '#####0')"/>
  </copy00line38a>


<copy00line39a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39a, '#####0')"/>
  </copy00line39a>


<copy00line13 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line22 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line33a color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33a, '#####0')"/>
  </copy00line33a>


<copy00line42a color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42a, '#####0')"/>
  </copy00line42a>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line19a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19a, '#####0')"/>
  </copy00line19a>


<copy00line23 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line24 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line24, '#####0')"/>
  </copy00line24>


<copy00line25 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25, '#####0')"/>
  </copy00line25>


<copy00line26 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26, '#####0')"/>
  </copy00line26>


<copy00line27 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line27, '#####0')"/>
  </copy00line27>


<copy00line28 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line28, '#####0')"/>
  </copy00line28>


<copy00line29 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line29, '#####0')"/>
  </copy00line29>


<copy00line30 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line30, '#####0')"/>
  </copy00line30>


<copy00line31 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line31, '#####0')"/>
  </copy00line31>


<copy00line32 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line32, '#####0')"/>
  </copy00line32>


<copy00line33 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33, '#####0')"/>
  </copy00line33>


<copy00line34 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34, '#####0')"/>
  </copy00line34>


<copy00line35 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35, '#####0')"/>
  </copy00line35>


<copy00line36 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36, '#####0')"/>
  </copy00line36>


<copy00line37 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37, '#####0')"/>
  </copy00line37>


<copy00line38 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38, '#####0')"/>
  </copy00line38>


<copy00line39 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39, '#####0')"/>
  </copy00line39>


<copy00line40 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40, '#####0')"/>
  </copy00line40>


<copy00line41 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41, '#####0')"/>
  </copy00line41>


<copy00line42 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42, '#####0')"/>
  </copy00line42>


<copy00line43 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43, '#####0')"/>
  </copy00line43>


<copy00line44 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line44, '#####0')"/>
  </copy00line44>


<copy00line46 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line46, '#####0')"/>
  </copy00line46>

</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
