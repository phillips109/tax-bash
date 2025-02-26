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


<xsl:variable name="SchedD-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineQOFn">
<xsl:value-of select="document('../Data/SchedD_Copy00_lineQOFn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineQOFy">
<xsl:value-of select="document('../Data/SchedD_Copy00_lineQOFy_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line3000">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line3000'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line3000'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line3000']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line1500">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line1500'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line1500'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line1500']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-linemin1">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-linemin1'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-linemin1'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-linemin1']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line07">
<xsl:value-of select="$SchedD-Copy00-line01ah +
$SchedD-Copy00-line01bh +
$SchedD-Copy00-line02h +
$SchedD-Copy00-line03h +
$SchedD-Copy00-line04 +
$SchedD-Copy00-line05 +
$SchedD-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line15">
<xsl:value-of select="$SchedD-Copy00-line08ah +
$SchedD-Copy00-line08bh +
$SchedD-Copy00-line09h +
$SchedD-Copy00-line10h +
$SchedD-Copy00-line11 +
$SchedD-Copy00-line12 +
$SchedD-Copy00-line13 +
$SchedD-Copy00-line14"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line16">
<xsl:value-of select="$SchedD-Copy00-line07 +
$SchedD-Copy00-line15"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bh">
<xsl:value-of select="$SchedD-Copy00-line01bh +
$SchedD-Copy00-line01bg"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02h">
<xsl:value-of select="$SchedD-Copy00-line02h +
$SchedD-Copy00-line02g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03h">
<xsl:value-of select="$SchedD-Copy00-line03h +
$SchedD-Copy00-line03g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bh">
<xsl:value-of select="$SchedD-Copy00-line08bh +
$SchedD-Copy00-line08bg"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09h">
<xsl:value-of select="$SchedD-Copy00-line09h +
$SchedD-Copy00-line09g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10h">
<xsl:value-of select="$SchedD-Copy00-line10h +
$SchedD-Copy00-line10g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineneg1">
<xsl:value-of select="-1.00"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ae">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01be">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bg">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form6252_Copy01.xml')">
<xsl:value-of select="document('../Output/Form6252_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line05">
<xsl:choose>
<xsl:when test="document('../Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line06">
<xsl:choose>
<xsl:when test="document('../Output/CLCWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/CLCWkst_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ae">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bd">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08be">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bg">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line11">
<xsl:choose>
<xsl:when test="document('../Output/Form4797_Copy01.xml')">
<xsl:value-of select="document('../Output/Form4797_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../Output/CGD_Copy01.xml')">
<xsl:value-of select="document('../Output/CGD_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line14">
<xsl:choose>
<xsl:when test="document('../Output/cap_Copy01.xml')">
<xsl:value-of select="document('../Output/cap_Copy01.xml')//copy01line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="-1400"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line18d">
<xsl:choose>
<xsl:when test="document('../Output/28RGWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/28RGWkst_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line19d">
<xsl:choose>
<xsl:when test="document('../Output/US1250GWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/US1250GWkst_Copy01.xml')//copy01line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20ye">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy01.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../Output/QDCGWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/QDCGWkst_Copy01.xml')//copy01line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22d">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line49525">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy01.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy01.xml')//copy01line05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="document('../Output/QDCGA_Copy01.xml')">
<xsl:value-of select="document('../Output/QDCGA_Copy01.xml')//copy01linecgexcess"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ah">
<xsl:value-of select="$SchedD-Copy00-line01ad -  $SchedD-Copy00-line01ae"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bh">
<xsl:value-of select="$SchedD-Copy00-line01bd -  $SchedD-Copy00-line01be"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02h">
<xsl:value-of select="$SchedD-Copy00-line02d -  $SchedD-Copy00-line02e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03h">
<xsl:value-of select="$SchedD-Copy00-line03d -  $SchedD-Copy00-line03e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ah">
<xsl:value-of select="$SchedD-Copy00-line08ad -  $SchedD-Copy00-line08ae"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bh">
<xsl:value-of select="$SchedD-Copy00-line08bd -  $SchedD-Copy00-line08be"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09h">
<xsl:value-of select="$SchedD-Copy00-line09d -  $SchedD-Copy00-line09e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10h">
<xsl:value-of select="$SchedD-Copy00-line10e -  $SchedD-Copy00-line10e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21b">
<xsl:value-of select="$SchedD-Copy00-line16 * $SchedD-Copy00-lineneg1"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21c">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line21a &gt;= $SchedD-Copy00-line21b">
<xsl:value-of select="$SchedD-Copy00-line21b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedD-Copy00-line21a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line18">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line16 &lt; 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0 and $SchedD-Copy00-line15 &gt; 0">
<xsl:value-of select="$SchedD-Copy00-line18d - $SchedD-Copy00-linecgexcess"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line19">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line16 &lt; 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0 and $SchedD-Copy00-line15 &gt; 0">
<xsl:value-of select="$SchedD-Copy00-line19d"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line16 &lt; 0">
<xsl:value-of select="$SchedD-Copy00-line21c * $SchedD-Copy00-lineneg1"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21a">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-lineFS = 'MFS'">
<xsl:value-of select="1500"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="3000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line17y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line15 &gt; 0 and $SchedD-Copy00-line16 &gt; 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line17n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line15 &gt; 0 and $SchedD-Copy00-line16 &gt; 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'X'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 = 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line15 &lt;= 0 and $SchedD-Copy00-line16 &lt;= 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line18 = 0 and $SchedD-Copy00-line19 = 0 and $SchedD-Copy00-line49525 = 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 = 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line15 &lt;= 0 and $SchedD-Copy00-line16 &lt;= 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line18 > 0 or $SchedD-Copy00-line19 > 0 or $SchedD-Copy00-line49525 > 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line20y = 'x' or $SchedD-Copy00-line20n = 'x'">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line22d > 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line20y = 'x' or $SchedD-Copy00-line20n = 'x'">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line22d &lt;= 0">
<xsl:value-of select="'x'"/>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedD-Copy00">

<copy00lineSFNI color="blue">
<xsl:value-of select="$SchedD-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$SchedD-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$SchedD-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$SchedD-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$SchedD-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$SchedD-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$SchedD-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>

<copy00lineFS color="blue">
<xsl:value-of select="$SchedD-Copy00-lineFS"/>
</copy00lineFS>

<copy00lineQOFn color="blue">
<xsl:value-of select="$SchedD-Copy00-lineQOFn"/>
</copy00lineQOFn>

<copy00lineQOFy color="blue">
<xsl:value-of select="$SchedD-Copy00-lineQOFy"/>
</copy00lineQOFy>

<copy00line3000 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line3000, '#####0')"/>
</copy00line3000>

<copy00line1500 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line1500, '#####0')"/>
</copy00line1500>

<copy00linemin1 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-linemin1, '#####0')"/>
</copy00linemin1>

<copy00line07 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line15 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line16 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line01bh color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01bh, '#####0')"/>
</copy00line01bh>

<copy00line02h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line02h, '#####0')"/>
</copy00line02h>

<copy00line03h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line03h, '#####0')"/>
</copy00line03h>

<copy00line08bh color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08bh, '#####0')"/>
</copy00line08bh>

<copy00line09h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line09h, '#####0')"/>
</copy00line09h>

<copy00line10h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line10h, '#####0')"/>
</copy00line10h>

<copy00lineneg1 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-lineneg1, '#####0')"/>
</copy00lineneg1>

<copy00line01ad color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01ad, '#####0')"/>
</copy00line01ad>

<copy00line01ae color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01ae, '#####0')"/>
</copy00line01ae>

<copy00line01bd color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01bd, '#####0')"/>
</copy00line01bd>

<copy00line01be color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01be, '#####0')"/>
</copy00line01be>

<copy00line01bg color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01bg, '#####0')"/>
</copy00line01bg>

<copy00line02d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line02d, '#####0')"/>
</copy00line02d>

<copy00line02e color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line02e, '#####0')"/>
</copy00line02e>

<copy00line02g color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line02g, '#####0')"/>
</copy00line02g>

<copy00line03d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line03d, '#####0')"/>
</copy00line03d>

<copy00line03e color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line03e, '#####0')"/>
</copy00line03e>

<copy00line03g color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line03g, '#####0')"/>
</copy00line03g>

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08ad color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08ad, '#####0')"/>
</copy00line08ad>

<copy00line08ae color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08ae, '#####0')"/>
</copy00line08ae>

<copy00line08bd color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08bd, '#####0')"/>
</copy00line08bd>

<copy00line08be color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08be, '#####0')"/>
</copy00line08be>

<copy00line08bg color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08bg, '#####0')"/>
</copy00line08bg>

<copy00line09d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line09d, '#####0')"/>
</copy00line09d>

<copy00line09e color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line09e, '#####0')"/>
</copy00line09e>

<copy00line09g color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line09g, '#####0')"/>
</copy00line09g>

<copy00line10d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line10d, '#####0')"/>
</copy00line10d>

<copy00line10e color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line10e, '#####0')"/>
</copy00line10e>

<copy00line10g color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line10g, '#####0')"/>
</copy00line10g>

<copy00line11 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line12 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line18d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line18d, '#####0')"/>
</copy00line18d>

<copy00line19d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line19d, '#####0')"/>
</copy00line19d>

<copy00line20ye color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line20ye, '#####0')"/>
</copy00line20ye>

<copy00line19 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line22d color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line22d, '#####0')"/>
</copy00line22d>

<copy00line49525 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line49525, '#####0')"/>
</copy00line49525>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($SchedD-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00line01ah color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01ah, '#####0')"/>
</copy00line01ah>

<copy00line01bh color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line01bh, '#####0')"/>
</copy00line01bh>

<copy00line02h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line02h, '#####0')"/>
</copy00line02h>

<copy00line03h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line03h, '#####0')"/>
</copy00line03h>

<copy00line08ah color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08ah, '#####0')"/>
</copy00line08ah>

<copy00line08bh color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line08bh, '#####0')"/>
</copy00line08bh>

<copy00line09h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line09h, '#####0')"/>
</copy00line09h>

<copy00line10h color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line10h, '#####0')"/>
</copy00line10h>

<copy00line21b color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line21b, '#####0')"/>
</copy00line21b>

<copy00line21c color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line21c, '#####0')"/>
</copy00line21c>

<copy00line18 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line19 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line21 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line21a color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line21a, '#####0')"/>
</copy00line21a>

<copy00line17y color="blue">
<xsl:value-of select="$SchedD-Copy00-line17y"/>
</copy00line17y>

<copy00line17n color="blue">
<xsl:value-of select="$SchedD-Copy00-line17n"/>
</copy00line17n>

<copy00line20y color="blue">
<xsl:value-of select="$SchedD-Copy00-line20y"/>
</copy00line20y>

<copy00line20n color="blue">
<xsl:value-of select="$SchedD-Copy00-line20n"/>
</copy00line20n>

<copy00line22y color="blue">
<xsl:value-of select="$SchedD-Copy00-line22y"/>
</copy00line22y>

<copy00line22n color="blue">
<xsl:value-of select="$SchedD-Copy00-line22n"/>
</copy00line22n>
</Form>
</IRSForms>
</xsl:template>
</xsl:stylesheet>
