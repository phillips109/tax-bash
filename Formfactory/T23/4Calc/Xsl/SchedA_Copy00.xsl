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


<xsl:variable name="SchedA-Copy00-line05d">
<xsl:value-of select="$SchedA-Copy00-line05a +
$SchedA-Copy00-line05b +
$SchedA-Copy00-line05c"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line07">
<xsl:value-of select="$SchedA-Copy00-line05e +
$SchedA-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line08e">
<xsl:value-of select="$SchedA-Copy00-line08a +
$SchedA-Copy00-line08b +
$SchedA-Copy00-line08c"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line10">
<xsl:value-of select="$SchedA-Copy00-line08e +
$SchedA-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line14">
<xsl:value-of select="$SchedA-Copy00-line11 +
$SchedA-Copy00-line12 +
$SchedA-Copy00-line13"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line17">
<xsl:value-of select="$SchedA-Copy00-line04 +
$SchedA-Copy00-line07 +
$SchedA-Copy00-line10 +
$SchedA-Copy00-line14 +
$SchedA-Copy00-line15 +
$SchedA-Copy00-line16"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line75">
<xsl:value-of select="0.075"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line05c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line08a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line08b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line08c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line08c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line15">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line15'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line15'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line15']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line16">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line16'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line16'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line16']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="200"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line03">
<xsl:value-of select="$SchedA-Copy00-line02 * $SchedA-Copy00-line75"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05e">
<xsl:choose>
<xsl:when test="$SchedA-Copy00-line05d &gt;= $SchedA-Copy00-line05q">
<xsl:value-of select="$SchedA-Copy00-line05q"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedA-Copy00-line05d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line04">
<xsl:choose>
<xsl:when test="$SchedA-Copy00-line03 >= $SchedA-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedA-Copy00-line01 - $SchedA-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05ack">
<xsl:value-of select="document('../Data/SchedA_Copy00_line05ack_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line08ck">
<xsl:value-of select="document('../Data/SchedA_Copy00_line08ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line18ck">
<xsl:value-of select="document('../Data/SchedA_Copy00_line18ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedA-Copy00-line05q">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedA-Copy00">

<copy00line05d color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05d, '#####0')"/>
</copy00line05d>

<copy00line07 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08e color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line08e, '#####0')"/>
</copy00line08e>

<copy00line10 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line14 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line17 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line75 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line75, '#####0')"/>
</copy00line75>

<copy00line01 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line05a color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05a, '#####0')"/>
</copy00line05a>

<copy00line05b color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05b, '#####0')"/>
</copy00line05b>

<copy00line05c color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05c, '#####0')"/>
</copy00line05c>

<copy00line06 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08a color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line08a, '#####0')"/>
</copy00line08a>

<copy00line08b color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line08b, '#####0')"/>
</copy00line08b>

<copy00line08c color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line08c, '#####0')"/>
</copy00line08c>

<copy00line09 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line11 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line12 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line15 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line16 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line02 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line05e color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05e, '#####0')"/>
</copy00line05e>

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05ack color="blue">
<xsl:value-of select="$SchedA-Copy00-line05ack"/>
</copy00line05ack>

<copy00line08ck color="blue">
<xsl:value-of select="$SchedA-Copy00-line08ck"/>
</copy00line08ck>

<copy00line18ck color="blue">
<xsl:value-of select="$SchedA-Copy00-line18ck"/>
</copy00line18ck>

<copy00lineSFNI color="blue">
<xsl:value-of select="$SchedA-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$SchedA-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$SchedA-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$SchedA-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$SchedA-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$SchedA-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$SchedA-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>

<copy00lineFS color="blue">
<xsl:value-of select="$SchedA-Copy00-lineFS"/>
</copy00lineFS>

<copy00line05q color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line05q, '#####0')"/>
</copy00line05q>
</Form>
</IRSForms>
</xsl:template>
</xsl:stylesheet>
