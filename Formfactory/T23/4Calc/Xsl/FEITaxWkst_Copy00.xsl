<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>
<!--
Copyright(C) 2023, 2024 Phillips Wedemeyer

This file is part of a program called Tax-bash
Tax-bash is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public Llicense as published by
the Free Software Foundataion, either version 3 of the License, or
(at your option) any later version.
Tax-bash is distributed in the hope that it will be useful,
but without any warranty; without event the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see >https://www.gnu.org/licenses/>.
-->


<xsl:variable name="FEITaxWkst-Copy00-line03">
<xsl:value-of select="$FEITaxWkst-Copy00-line01 +
$FEITaxWkst-Copy00-line02c"/>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line02b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='FEITaxWkst-Copy00-line02b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="100"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line49524g">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineSDTW">
<xsl:choose>
<xsl:when test="document('../Output/SchedDaTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDaTaxWkst_Copy00.xml')//copy00line47"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineQDCG">
<xsl:choose>
<xsl:when test="document('../Output/QDCGaTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGaTaxWkst_Copy00.xml')//copy00line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineD18">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineD19">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineD15">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineD16">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line10403a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line104007">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line02c">
<xsl:choose>
<xsl:when test="$FEITaxWkst-Copy00-line02b >= $FEITaxWkst-Copy00-line02a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$FEITaxWkst-Copy00-line02a - $FEITaxWkst-Copy00-line02b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$FEITaxWkst-Copy00-line05 >= $FEITaxWkst-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$FEITaxWkst-Copy00-line04 - $FEITaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="$FEITaxWkst-Copy00-line49524g > 0">
<xsl:value-of select="FEITaxWlst_Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD_Copy00.xml') and $FEITaxWkst-Copy00-lineD18 > 0 or $FEITaxWkst-Copy00-lineD19 > 0">
<xsl:value-of select="$FEITaxWkst-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD_Copy00.xml') and $FEITaxWkst-Copy00-lineD15 > 0 and $FEITaxWkst-Copy00-lineD16 > 0">
<xsl:value-of select="$FEITaxWkst-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$FEITaxWkst-Copy00-line10403a > 0">
<xsl:value-of select="$FEITaxWkst-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$FEITaxWkst-Copy00-line104007 > 0 and $FEITaxWkst-Copy00-line104007Ck = 'x'">
<xsl:value-of select="$FEITaxWkst-Copy00-lineQDCG"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$FEITaxWkst-Copy00-line04a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line04a">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$FEITaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$FEITaxWkst-Copy00-line03"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line05">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$FEITaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$FEITaxWkst-Copy00-line02c"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="FEITaxWkst-Copy00-line104007Ck">
<xsl:choose>
<xsl:when test="document('../Data/Form1040_Copy00_line07Ck_text.xml')">
<xsl:value-of select="document('../Data/Form1040_Copy00_line07Ck_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<!--

Copyright (C) 2024 Phillips Wedemeyer
This file is part of a program called Tax-bash
Tax-bash is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public Llicense as published by
the Free Software Foundataion, either version 3 of the License, or
(at your option) any later version.
Tax-bash is distributed in the hope that it will be useful,
but without any warranty; without event the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see >https://www.gnu.org/licenses/>.
-->

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="FEITaxWkst-Copy00">

<copy00line03 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line02a color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line02b color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line02b, '#####0')"/>
</copy00line02b>

<copy00line01 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line49524g color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line49524g, '#####0')"/>
</copy00line49524g>

<copy00lineSDTW color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineSDTW, '#####0')"/>
</copy00lineSDTW>

<copy00lineQDCG color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineQDCG, '#####0')"/>
</copy00lineQDCG>

<copy00lineD18 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineD18, '#####0')"/>
</copy00lineD18>

<copy00lineD19 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineD19, '#####0')"/>
</copy00lineD19>

<copy00lineD15 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineD15, '#####0')"/>
</copy00lineD15>

<copy00lineD16 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-lineD16, '#####0')"/>
</copy00lineD16>

<copy00line10403a color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line10403a, '#####0')"/>
</copy00line10403a>

<copy00line104007 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line104007, '#####0')"/>
</copy00line104007>

<copy00line02c color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line02c, '#####0')"/>
</copy00line02c>

<copy00line06 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line04 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line04a color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line04a, '#####0')"/>
</copy00line04a>

<copy00line05 color="red">
<xsl:value-of select="format-number($FEITaxWkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00lineFS color="blue">
<xsl:value-of select="$FEITaxWkst-Copy00-lineFS"/>
</copy00lineFS>

<copy00line104007Ck color="blue">
<xsl:value-of select="$FEITaxWkst-Copy00-line104007Ck"/>
</copy00line104007Ck>
</Form>
</IRSForms>
</xsl:template>
</xsl:stylesheet>
