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


<xsl:variable name="Form1040-Copy00-line01z">
<xsl:value-of select="$Form1040-Copy00-line01a +
$Form1040-Copy00-line01b +
$Form1040-Copy00-line01c +
$Form1040-Copy00-line01d +
$Form1040-Copy00-line01e +
$Form1040-Copy00-line01f +
$Form1040-Copy00-line01g +
$Form1040-Copy00-line01h"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line09">
<xsl:value-of select="$Form1040-Copy00-line01z +
$Form1040-Copy00-lineintTot +
$Form1040-Copy00-line03b +
$Form1040-Copy00-line04b +
$Form1040-Copy00-line05b +
$Form1040-Copy00-line06b +
$Form1040-Copy00-line07 +
$Form1040-Copy00-line08"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line14">
<xsl:value-of select="$Form1040-Copy00-line12 +
$Form1040-Copy00-line13"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line16">
<xsl:value-of select="$Form1040-Copy00-line16a +
$Form1040-Copy00-line8814 +
$Form1040-Copy00-line4972 +
$Form1040-Copy00-line962 +
$Form1040-Copy00-lineECR +
$Form1040-Copy00-line1291TAX +
$Form1040-Copy00-lineForm8978 +
$Form1040-Copy00-line965 +
$Form1040-Copy00-line965INC"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line18">
<xsl:value-of select="$Form1040-Copy00-line16 +
$Form1040-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line21">
<xsl:value-of select="$Form1040-Copy00-line19 +
$Form1040-Copy00-line20"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line24">
<xsl:value-of select="$Form1040-Copy00-line22 +
$Form1040-Copy00-line23"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25b">
<xsl:value-of select="$Form1040-Copy00-line1099rtax01 +
$Form1040-Copy00-line1099rtax02 +
$Form1040-Copy00-line1099rtax03 +
$Form1040-Copy00-line1099rtax04 +
$Form1040-Copy00-line1099rtax05 +
$Form1040-Copy00-line1099rtax06 +
$Form1040-Copy00-line1099rtax07 +
$Form1040-Copy00-line1099rtax08 +
$Form1040-Copy00-line1099rtax09 +
$Form1040-Copy00-line1099rtax10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25d">
<xsl:value-of select="$Form1040-Copy00-line25a +
$Form1040-Copy00-line25b +
$Form1040-Copy00-line25c"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line32">
<xsl:value-of select="$Form1040-Copy00-line27 +
$Form1040-Copy00-line28 +
$Form1040-Copy00-line29 +
$Form1040-Copy00-line31"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line33">
<xsl:value-of select="$Form1040-Copy00-line25d +
$Form1040-Copy00-line26 +
$Form1040-Copy00-line32"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02a">
<xsl:value-of select="$Form1040-Copy00-lineexempt01 +
$Form1040-Copy00-lineexempt02 +
$Form1040-Copy00-lineexempt03 +
$Form1040-Copy00-lineexempt04 +
$Form1040-Copy00-lineexempt05 +
$Form1040-Copy00-lineexempt06 +
$Form1040-Copy00-lineexempt07 +
$Form1040-Copy00-lineexempt08 +
$Form1040-Copy00-lineexempt09 +
$Form1040-Copy00-lineexempt10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line03a">
<xsl:value-of select="$Form1040-Copy00-linequal01 +
$Form1040-Copy00-linequal02 +
$Form1040-Copy00-linequal03 +
$Form1040-Copy00-linequal04 +
$Form1040-Copy00-linequal05 +
$Form1040-Copy00-linequal06 +
$Form1040-Copy00-linequal07 +
$Form1040-Copy00-linequal08 +
$Form1040-Copy00-linequal09 +
$Form1040-Copy00-linequal10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line37a">
<xsl:value-of select="$Form1040-Copy00-line24 +
$Form1040-Copy00-line38"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line04b">
<xsl:value-of select="$Form1040-Copy00-lineira01 +
$Form1040-Copy00-lineira02 +
$Form1040-Copy00-lineira03 +
$Form1040-Copy00-lineira04 +
$Form1040-Copy00-lineira05 +
$Form1040-Copy00-lineira06 +
$Form1040-Copy00-lineira07 +
$Form1040-Copy00-lineira08 +
$Form1040-Copy00-lineira09 +
$Form1040-Copy00-lineira10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line05b">
<xsl:value-of select="$Form1040-Copy00-linepen01 +
$Form1040-Copy00-linepen02 +
$Form1040-Copy00-linepen03 +
$Form1040-Copy00-linepen04 +
$Form1040-Copy00-linepen05 +
$Form1040-Copy00-linepen06 +
$Form1040-Copy00-linepen07 +
$Form1040-Copy00-linepen08 +
$Form1040-Copy00-linepen09 +
$Form1040-Copy00-linepen10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linec2000">
<xsl:value-of select="2000"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line26">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line27">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line36">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line38">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01a">
<xsl:choose>
<xsl:when test="document('../Output/W-2_Copy00.xml')">
<xsl:value-of select="document('../Output/W-2_Copy00.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01e">
<xsl:choose>
<xsl:when test="document('../Output/Form2441_Copy00.xml')">
<xsl:value-of select="document('../Output/Form2441_Copy00.xml')//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01f">
<xsl:choose>
<xsl:when test="document('../Output/Form8839_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8839_Copy00.xml')//copy00line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01g">
<xsl:choose>
<xsl:when test="document('../Output/Form8919_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8919_Copy00.xml')//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineintTot">
<xsl:choose>
<xsl:when test="document('../Output/SchedB_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB_Copy00.xml')//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line03b">
<xsl:choose>
<xsl:when test="document('../Output/SchedB_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB_Copy00.xml')//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06a">
<xsl:choose>
<xsl:when test="document('../Output/SST_Copy01.xml')">
<xsl:value-of select="document('../Output/SST_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06b">
<xsl:choose>
<xsl:when test="document('../Output/SST_Copy00.xml')">
<xsl:value-of select="document('../Output/SST_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line08">
<xsl:choose>
<xsl:when test="document('../Output/Sched1_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1_Copy00.xml')//copy00line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line10">
<xsl:choose>
<xsl:when test="document('../Output/Sched1_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1_Copy00.xml')//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../Output/SchedA_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedA_Copy01.xml')//copy01line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../Output/Form8995_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8995_Copy00.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line17">
<xsl:choose>
<xsl:when test="document('../Output/Sched2_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line20">
<xsl:choose>
<xsl:when test="document('../Output/Sched3_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3_Copy00.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line23">
<xsl:choose>
<xsl:when test="document('../Output/Sched2_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2_Copy00.xml')//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25a">
<xsl:choose>
<xsl:when test="document('../Output/FormW2_Copy00.xml')">
<xsl:value-of select="document('../Output/FormW2_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line28">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line29">
<xsl:choose>
<xsl:when test="document('../Output/Form8863_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line31">
<xsl:choose>
<xsl:when test="document('../Output/Sched3_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD15">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD16">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD18">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD19">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSDTW">
<xsl:choose>
<xsl:when test="document('../Output/SchedDTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDTaxWkst_Copy00.xml')//copy00line47"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineQDCG">
<xsl:choose>
<xsl:when test="document('../Output/QDCGTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGTaxWkst_Copy00.xml')//copy00line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line49524g">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line8814">
<xsl:choose>
<xsl:when test="document('../Output/Form8814_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8814_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4972">
<xsl:choose>
<xsl:when test="document('../Output/Form4972_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4972_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line962">
<xsl:choose>
<xsl:when test="document('../Output/Form1118_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1118_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineECR">
<xsl:choose>
<xsl:when test="document('../Output/Form8863_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1291TAX">
<xsl:choose>
<xsl:when test="document('../Output/Form8621_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8621_Copy00.xml')//copy00line16e"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineForm8978">
<xsl:choose>
<xsl:when test="document('../Output/Form8978_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8978_Copy00.xml')//copy00line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line965">
<xsl:choose>
<xsl:when test="document('../Output/Form965?_Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line965INC">
<xsl:choose>
<xsl:when test="document('../Output/Form965?_Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSchedJ23">
<xsl:choose>
<xsl:when test="document('../Output/SchedJ_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedJ_Copy00.xml')//copy00line23"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFEIT02a">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line02a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFEIT06">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line861521">
<xsl:choose>
<xsl:when test="document('../Output/Form8615_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8615_Copy00.xml')//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineschA17">
<xsl:choose>
<xsl:when test="document('../Output/SchedA_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedA_Copy00.xml')//copy00line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line15">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line14 >= $Form1040-Copy00-line11">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line11 - $Form1040-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line22">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line21 >= $Form1040-Copy00-line18">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line18 - $Form1040-Copy00-line21"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line34">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line24 >= $Form1040-Copy00-line33">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line33 - $Form1040-Copy00-line24"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line37">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line33 >= $Form1040-Copy00-line37a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line37a - $Form1040-Copy00-line33"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02b">
<xsl:value-of select="$Form1040-Copy00-lineintTot -  $Form1040-Copy00-line02a"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line11">
<xsl:value-of select="$Form1040-Copy00-line09 -  $Form1040-Copy00-line10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35">
<xsl:value-of select="$Form1040-Copy00-line34 -  $Form1040-Copy00-line36"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:value-of select="$Form1040-Copy00-line35 -  $Form1040-Copy00-line38"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineCalc16">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$Form1040-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$Form1040-Copy00-line15"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line2name">
<xsl:value-of select="document('../Data/Form1040_Copy00_line2name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linestMon">
<xsl:value-of select="document('../Data/Form1040_Copy00_linestMon_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linestDay">
<xsl:value-of select="document('../Data/Form1040_Copy00_linestDay_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineEndMon">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineEndMon_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineendDay">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineendDay_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineendYr">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineendYr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06cCk">
<xsl:value-of select="document('../Data/Form1040_Copy00_line06cCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line07Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35aCk">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35aCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b1">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b2">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b3">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b4">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b5">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b6">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b7">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b8">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b9">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cCkg">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cCkg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cSvg">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cSvg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d10">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d10_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d11">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d11_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d1">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d12">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d12_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d13">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d13_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d14">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d14_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d15">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d15_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d16">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d16_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d17">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d17_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d2">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d3">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d4">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d5">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d6">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d7">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d8">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d9">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39N">
<xsl:value-of select="document('../Data/Form1040_Copy00_line39N_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39Y">
<xsl:value-of select="document('../Data/Form1040_Copy00_line39Y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line421">
<xsl:value-of select="document('../Data/Form1040_Copy00_line421_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line422">
<xsl:value-of select="document('../Data/Form1040_Copy00_line422_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line423">
<xsl:value-of select="document('../Data/Form1040_Copy00_line423_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line424">
<xsl:value-of select="document('../Data/Form1040_Copy00_line424_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line425">
<xsl:value-of select="document('../Data/Form1040_Copy00_line425_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line431">
<xsl:value-of select="document('../Data/Form1040_Copy00_line431_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line432">
<xsl:value-of select="document('../Data/Form1040_Copy00_line432_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line433">
<xsl:value-of select="document('../Data/Form1040_Copy00_line433_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line434">
<xsl:value-of select="document('../Data/Form1040_Copy00_line434_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line435">
<xsl:value-of select="document('../Data/Form1040_Copy00_line435_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line436">
<xsl:value-of select="document('../Data/Form1040_Copy00_line436_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line441">
<xsl:value-of select="document('../Data/Form1040_Copy00_line441_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line442">
<xsl:value-of select="document('../Data/Form1040_Copy00_line442_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line443">
<xsl:value-of select="document('../Data/Form1040_Copy00_line443_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line444">
<xsl:value-of select="document('../Data/Form1040_Copy00_line444_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line445">
<xsl:value-of select="document('../Data/Form1040_Copy00_line445_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4972Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line4972Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line8814Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line8814Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr1">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr2">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaptNo">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaptNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecampme">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecampme_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecampS">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecampS_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linechild">
<xsl:value-of select="document('../Data/Form1040_Copy00_linechild_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSName">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSName_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecity">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedgt4">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedgt4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigN">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigY">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigY_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDname">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDphone">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFaddr">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFaddr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFCntry">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFEIN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFEIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFname">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFphone">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFprov">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFprov_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFzip">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineOther">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineOther_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePname">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePTIN">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSa58">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSblind">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdep">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSECk">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSECk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSiUali">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSiUali_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSocc">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineST">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTemail">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTemail_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTocc">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTphone">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYa58">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYblind">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineyoudep">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineyoudep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linezip">
<xsl:value-of select="document('../Data/Form1040_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linex00">
<xsl:value-of select="document('../Data/Form1040_Copy00_linex00_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a01">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy01_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy01_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a02">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy02_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy02_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a03">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy03_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy03_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a04">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy04_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy04_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a05">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy05_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy05_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a06">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy06_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy06_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a07">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy07_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy07_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a08">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy08_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy08_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a09">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy09_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy09_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a10">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy10_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy10_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSFNIa">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSLNa">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoFa">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoLa">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoMa">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineScA18ck">
<xsl:choose>
<xsl:when test="document('../Data/SchedA_Copy00_line18ck_text.xml')">
<xsl:value-of select="document('../Data/SchedA_Copy00_line18ck_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira01">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a01 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira02">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a02 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira03">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a03 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira04">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a04 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira05">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a05 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira06">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a06 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira07">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a07 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira08">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a08 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira09">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a09 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner09"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira10">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a10 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen01">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a01 = ''">
<xsl:value-of select="$Form1040-Copy00-linet01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen02">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a02 = ''">
<xsl:value-of select="$Form1040-Copy00-linet02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen03">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a03 = ''">
<xsl:value-of select="$Form1040-Copy00-linet03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen04">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a04 = ''">
<xsl:value-of select="$Form1040-Copy00-linet04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen05">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a05 = ''">
<xsl:value-of select="$Form1040-Copy00-linet05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen06">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a06 = ''">
<xsl:value-of select="$Form1040-Copy00-linet06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen07">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a07 = ''">
<xsl:value-of select="$Form1040-Copy00-linet07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen08">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a08 = ''">
<xsl:value-of select="$Form1040-Copy00-linet08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen09">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a09 = ''">
<xsl:value-of select="$Form1040-Copy00-linet09"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen10">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a10 = ''">
<xsl:value-of select="$Form1040-Copy00-linet10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecount">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="4"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="1"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="1"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="1"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="1"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="2"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = ''">
<xsl:value-of select="3"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = '' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="3"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = '' and $Form1040-Copy00-lineSa58 = 'x' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="4"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="4"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line12">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineScA18ck = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineSdep = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineSiUali = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:otherwise>
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'S'">
<xsl:value-of select="13850 + (1850 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:value-of select="20800 + (1850 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="27700 + (1500 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:value-of select="27700 + (1500 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:value-of select="13850 + (1500 * $Form1040-Copy00-linecount)"/>
</xsl:when>
</xsl:choose>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line16a">
<xsl:choose>
<xsl:when test="document('../Output/Form8615-Copy00.xml')">
<xsl:value-of select="$Form1040-Copy00-line861521"/>
</xsl:when>
<xsl:when test="document('../Output/SchedJ-Copy00.xml')">
<xsl:value-of select="$Form1040-Copy00-lineSchedJ23"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFEIT02a > 0">
<xsl:value-of select="$Form1040-Copy00-lineFEIT06"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line49524g > 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD18 > 0 or $Form1040-Copy00-lineD19 > 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD15 >0 and $Form1040-Copy00-lineD16 > 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line03a > 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line07 > 0 and $Form1040-Copy00-line07Ck = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-lineCalc16"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'S'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFJ">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineHOH">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineQSS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="$Form1040-Copy00-lineSLNa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="$Form1040-Copy00-lineSFNIa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoF">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoFa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoM">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoMa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoL">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoLa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSchild">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:value-of select="$Form1040-Copy00-lineSName"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:value-of select="$Form1040-Copy00-linechild"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:value-of select="$Form1040-Copy00-linechild"/>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1040-Copy00">

<copy00line01z color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01z, '#####0')"/>
</copy00line01z>

<copy00line09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line14 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line16 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line18 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line21 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line24 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line24, '#####0')"/>
</copy00line24>

<copy00line25b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line25b, '#####0')"/>
</copy00line25b>

<copy00line25d color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line25d, '#####0')"/>
</copy00line25d>

<copy00line32 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line32, '#####0')"/>
</copy00line32>

<copy00line33 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line33, '#####0')"/>
</copy00line33>

<copy00line02a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line03a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line03a, '#####0')"/>
</copy00line03a>

<copy00line37a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line37a, '#####0')"/>
</copy00line37a>

<copy00line04b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line04b, '#####0')"/>
</copy00line04b>

<copy00line05b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line05b, '#####0')"/>
</copy00line05b>

<copy00linec2000 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linec2000, '#####0')"/>
</copy00linec2000>

<copy00line01b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01b, '#####0')"/>
</copy00line01b>

<copy00line01c color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01c, '#####0')"/>
</copy00line01c>

<copy00line01d color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01d, '#####0')"/>
</copy00line01d>

<copy00line01h color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01h, '#####0')"/>
</copy00line01h>

<copy00line01i color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01i, '#####0')"/>
</copy00line01i>

<copy00line25c color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line25c, '#####0')"/>
</copy00line25c>

<copy00line26 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line26, '#####0')"/>
</copy00line26>

<copy00line27 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line27, '#####0')"/>
</copy00line27>

<copy00line36 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line36, '#####0')"/>
</copy00line36>

<copy00line38 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line38, '#####0')"/>
</copy00line38>

<copy00line01a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01a, '#####0')"/>
</copy00line01a>

<copy00line01e color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01e, '#####0')"/>
</copy00line01e>

<copy00line01f color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01f, '#####0')"/>
</copy00line01f>

<copy00line01g color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line01g, '#####0')"/>
</copy00line01g>

<copy00lineintTot color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineintTot, '#####0')"/>
</copy00lineintTot>

<copy00line03b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line03b, '#####0')"/>
</copy00line03b>

<copy00line06a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line06a, '#####0')"/>
</copy00line06a>

<copy00line06b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line06b, '#####0')"/>
</copy00line06b>

<copy00line07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line12 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line17 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line19 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line20 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line23 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line25a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line25a, '#####0')"/>
</copy00line25a>

<copy00line28 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line28, '#####0')"/>
</copy00line28>

<copy00line29 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line29, '#####0')"/>
</copy00line29>

<copy00line31 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line31, '#####0')"/>
</copy00line31>

<copy00line35a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line35a, '#####0')"/>
</copy00line35a>

<copy00lineD15 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineD15, '#####0')"/>
</copy00lineD15>

<copy00lineD16 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineD16, '#####0')"/>
</copy00lineD16>

<copy00lineD18 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineD18, '#####0')"/>
</copy00lineD18>

<copy00lineD19 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineD19, '#####0')"/>
</copy00lineD19>

<copy00lineSDTW color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineSDTW, '#####0')"/>
</copy00lineSDTW>

<copy00lineQDCG color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineQDCG, '#####0')"/>
</copy00lineQDCG>

<copy00line49524g color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line49524g, '#####0')"/>
</copy00line49524g>

<copy00line8814 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line8814, '#####0')"/>
</copy00line8814>

<copy00line4972 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line4972, '#####0')"/>
</copy00line4972>

<copy00line962 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line962, '#####0')"/>
</copy00line962>

<copy00lineECR color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineECR, '#####0')"/>
</copy00lineECR>

<copy00line1291TAX color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1291TAX, '#####0')"/>
</copy00line1291TAX>

<copy00lineForm8978 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineForm8978, '#####0')"/>
</copy00lineForm8978>

<copy00line965 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line965, '#####0')"/>
</copy00line965>

<copy00line965INC color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line965INC, '#####0')"/>
</copy00line965INC>

<copy00line1099rtax01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax01, '#####0')"/>
</copy00line1099rtax01>

<copy00line1099rtax02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax02, '#####0')"/>
</copy00line1099rtax02>

<copy00line1099rtax03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax03, '#####0')"/>
</copy00line1099rtax03>

<copy00line1099rtax04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax04, '#####0')"/>
</copy00line1099rtax04>

<copy00line1099rtax05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax05, '#####0')"/>
</copy00line1099rtax05>

<copy00line1099rtax06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax06, '#####0')"/>
</copy00line1099rtax06>

<copy00line1099rtax07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax07, '#####0')"/>
</copy00line1099rtax07>

<copy00line1099rtax08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax08, '#####0')"/>
</copy00line1099rtax08>

<copy00line1099rtax09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax09, '#####0')"/>
</copy00line1099rtax09>

<copy00line1099rtax10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line1099rtax10, '#####0')"/>
</copy00line1099rtax10>

<copy00lineexempt01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt01, '#####0')"/>
</copy00lineexempt01>

<copy00lineexempt02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt02, '#####0')"/>
</copy00lineexempt02>

<copy00lineexempt03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt03, '#####0')"/>
</copy00lineexempt03>

<copy00lineexempt04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt04, '#####0')"/>
</copy00lineexempt04>

<copy00lineexempt05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt05, '#####0')"/>
</copy00lineexempt05>

<copy00lineexempt06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt06, '#####0')"/>
</copy00lineexempt06>

<copy00lineexempt07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt07, '#####0')"/>
</copy00lineexempt07>

<copy00lineexempt08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt08, '#####0')"/>
</copy00lineexempt08>

<copy00lineexempt09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt09, '#####0')"/>
</copy00lineexempt09>

<copy00lineexempt10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineexempt10, '#####0')"/>
</copy00lineexempt10>

<copy00linequal01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal01, '#####0')"/>
</copy00linequal01>

<copy00linequal02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal02, '#####0')"/>
</copy00linequal02>

<copy00linequal03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal03, '#####0')"/>
</copy00linequal03>

<copy00linequal04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal04, '#####0')"/>
</copy00linequal04>

<copy00linequal05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal05, '#####0')"/>
</copy00linequal05>

<copy00linequal06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal06, '#####0')"/>
</copy00linequal06>

<copy00linequal07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal07, '#####0')"/>
</copy00linequal07>

<copy00linequal08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal08, '#####0')"/>
</copy00linequal08>

<copy00linequal09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal09, '#####0')"/>
</copy00linequal09>

<copy00linequal10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linequal10, '#####0')"/>
</copy00linequal10>

<copy00liner01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner01, '#####0')"/>
</copy00liner01>

<copy00liner02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner02, '#####0')"/>
</copy00liner02>

<copy00liner03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner03, '#####0')"/>
</copy00liner03>

<copy00liner04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner04, '#####0')"/>
</copy00liner04>

<copy00liner05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner05, '#####0')"/>
</copy00liner05>

<copy00liner06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner06, '#####0')"/>
</copy00liner06>

<copy00liner07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner07, '#####0')"/>
</copy00liner07>

<copy00liner08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner08, '#####0')"/>
</copy00liner08>

<copy00liner09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner09, '#####0')"/>
</copy00liner09>

<copy00liner10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-liner10, '#####0')"/>
</copy00liner10>

<copy00linet01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet01, '#####0')"/>
</copy00linet01>

<copy00linet02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet02, '#####0')"/>
</copy00linet02>

<copy00linet03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet03, '#####0')"/>
</copy00linet03>

<copy00linet04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet04, '#####0')"/>
</copy00linet04>

<copy00linet05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet05, '#####0')"/>
</copy00linet05>

<copy00linet06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet06, '#####0')"/>
</copy00linet06>

<copy00linet07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet07, '#####0')"/>
</copy00linet07>

<copy00linet08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet08, '#####0')"/>
</copy00linet08>

<copy00linet09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet09, '#####0')"/>
</copy00linet09>

<copy00linet10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linet10, '#####0')"/>
</copy00linet10>

<copy00linept01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept01, '#####0')"/>
</copy00linept01>

<copy00linept02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept02, '#####0')"/>
</copy00linept02>

<copy00linept03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept03, '#####0')"/>
</copy00linept03>

<copy00linept04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept04, '#####0')"/>
</copy00linept04>

<copy00linept05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept05, '#####0')"/>
</copy00linept05>

<copy00linept06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept06, '#####0')"/>
</copy00linept06>

<copy00linept07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept07, '#####0')"/>
</copy00linept07>

<copy00linept08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept08, '#####0')"/>
</copy00linept08>

<copy00linept09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept09, '#####0')"/>
</copy00linept09>

<copy00linept10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linept10, '#####0')"/>
</copy00linept10>

<copy00lineSchedJ23 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineSchedJ23, '#####0')"/>
</copy00lineSchedJ23>

<copy00lineFEIT02a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineFEIT02a, '#####0')"/>
</copy00lineFEIT02a>

<copy00lineFEIT06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineFEIT06, '#####0')"/>
</copy00lineFEIT06>

<copy00line861521 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line861521, '#####0')"/>
</copy00line861521>

<copy00lineschA17 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineschA17, '#####0')"/>
</copy00lineschA17>

<copy00line15 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line22 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line22, '#####0')"/>
</copy00line22>

<copy00line34 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line34, '#####0')"/>
</copy00line34>

<copy00line37 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line37, '#####0')"/>
</copy00line37>

<copy00line02b color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line02b, '#####0')"/>
</copy00line02b>

<copy00line11 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line35 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line35, '#####0')"/>
</copy00line35>

<copy00line35a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line35a, '#####0')"/>
</copy00line35a>

<copy00lineCalc16 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineCalc16, '#####0')"/>
</copy00lineCalc16>

<copy00line2name color="blue">
<xsl:value-of select="$Form1040-Copy00-line2name"/>
</copy00line2name>

<copy00linestMon color="blue">
<xsl:value-of select="$Form1040-Copy00-linestMon"/>
</copy00linestMon>

<copy00linestDay color="blue">
<xsl:value-of select="$Form1040-Copy00-linestDay"/>
</copy00linestDay>

<copy00lineEndMon color="blue">
<xsl:value-of select="$Form1040-Copy00-lineEndMon"/>
</copy00lineEndMon>

<copy00lineendDay color="blue">
<xsl:value-of select="$Form1040-Copy00-lineendDay"/>
</copy00lineendDay>

<copy00lineendYr color="blue">
<xsl:value-of select="$Form1040-Copy00-lineendYr"/>
</copy00lineendYr>

<copy00line06cCk color="blue">
<xsl:value-of select="$Form1040-Copy00-line06cCk"/>
</copy00line06cCk>

<copy00line07Ck color="blue">
<xsl:value-of select="$Form1040-Copy00-line07Ck"/>
</copy00line07Ck>

<copy00line35aCk color="blue">
<xsl:value-of select="$Form1040-Copy00-line35aCk"/>
</copy00line35aCk>

<copy00line35b1 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b1"/>
</copy00line35b1>

<copy00line35b2 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b2"/>
</copy00line35b2>

<copy00line35b3 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b3"/>
</copy00line35b3>

<copy00line35b4 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b4"/>
</copy00line35b4>

<copy00line35b5 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b5"/>
</copy00line35b5>

<copy00line35b6 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b6"/>
</copy00line35b6>

<copy00line35b7 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b7"/>
</copy00line35b7>

<copy00line35b8 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b8"/>
</copy00line35b8>

<copy00line35b9 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35b9"/>
</copy00line35b9>

<copy00line35cCkg color="blue">
<xsl:value-of select="$Form1040-Copy00-line35cCkg"/>
</copy00line35cCkg>

<copy00line35cSvg color="blue">
<xsl:value-of select="$Form1040-Copy00-line35cSvg"/>
</copy00line35cSvg>

<copy00line35d10 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d10"/>
</copy00line35d10>

<copy00line35d11 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d11"/>
</copy00line35d11>

<copy00line35d1 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d1"/>
</copy00line35d1>

<copy00line35d12 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d12"/>
</copy00line35d12>

<copy00line35d13 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d13"/>
</copy00line35d13>

<copy00line35d14 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d14"/>
</copy00line35d14>

<copy00line35d15 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d15"/>
</copy00line35d15>

<copy00line35d16 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d16"/>
</copy00line35d16>

<copy00line35d17 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d17"/>
</copy00line35d17>

<copy00line35d2 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d2"/>
</copy00line35d2>

<copy00line35d3 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d3"/>
</copy00line35d3>

<copy00line35d4 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d4"/>
</copy00line35d4>

<copy00line35d5 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d5"/>
</copy00line35d5>

<copy00line35d6 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d6"/>
</copy00line35d6>

<copy00line35d7 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d7"/>
</copy00line35d7>

<copy00line35d8 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d8"/>
</copy00line35d8>

<copy00line35d9 color="blue">
<xsl:value-of select="$Form1040-Copy00-line35d9"/>
</copy00line35d9>

<copy00line39N color="blue">
<xsl:value-of select="$Form1040-Copy00-line39N"/>
</copy00line39N>

<copy00line39Y color="blue">
<xsl:value-of select="$Form1040-Copy00-line39Y"/>
</copy00line39Y>

<copy00line421 color="blue">
<xsl:value-of select="$Form1040-Copy00-line421"/>
</copy00line421>

<copy00line422 color="blue">
<xsl:value-of select="$Form1040-Copy00-line422"/>
</copy00line422>

<copy00line423 color="blue">
<xsl:value-of select="$Form1040-Copy00-line423"/>
</copy00line423>

<copy00line424 color="blue">
<xsl:value-of select="$Form1040-Copy00-line424"/>
</copy00line424>

<copy00line425 color="blue">
<xsl:value-of select="$Form1040-Copy00-line425"/>
</copy00line425>

<copy00line431 color="blue">
<xsl:value-of select="$Form1040-Copy00-line431"/>
</copy00line431>

<copy00line432 color="blue">
<xsl:value-of select="$Form1040-Copy00-line432"/>
</copy00line432>

<copy00line433 color="blue">
<xsl:value-of select="$Form1040-Copy00-line433"/>
</copy00line433>

<copy00line434 color="blue">
<xsl:value-of select="$Form1040-Copy00-line434"/>
</copy00line434>

<copy00line435 color="blue">
<xsl:value-of select="$Form1040-Copy00-line435"/>
</copy00line435>

<copy00line436 color="blue">
<xsl:value-of select="$Form1040-Copy00-line436"/>
</copy00line436>

<copy00line441 color="blue">
<xsl:value-of select="$Form1040-Copy00-line441"/>
</copy00line441>

<copy00line442 color="blue">
<xsl:value-of select="$Form1040-Copy00-line442"/>
</copy00line442>

<copy00line443 color="blue">
<xsl:value-of select="$Form1040-Copy00-line443"/>
</copy00line443>

<copy00line444 color="blue">
<xsl:value-of select="$Form1040-Copy00-line444"/>
</copy00line444>

<copy00line445 color="blue">
<xsl:value-of select="$Form1040-Copy00-line445"/>
</copy00line445>

<copy00line4972Ck color="blue">
<xsl:value-of select="$Form1040-Copy00-line4972Ck"/>
</copy00line4972Ck>

<copy00line8814Ck color="blue">
<xsl:value-of select="$Form1040-Copy00-line8814Ck"/>
</copy00line8814Ck>

<copy00lineaddr1 color="blue">
<xsl:value-of select="$Form1040-Copy00-lineaddr1"/>
</copy00lineaddr1>

<copy00lineaddr2 color="blue">
<xsl:value-of select="$Form1040-Copy00-lineaddr2"/>
</copy00lineaddr2>

<copy00lineaptNo color="blue">
<xsl:value-of select="$Form1040-Copy00-lineaptNo"/>
</copy00lineaptNo>

<copy00linecampme color="blue">
<xsl:value-of select="$Form1040-Copy00-linecampme"/>
</copy00linecampme>

<copy00linecampS color="blue">
<xsl:value-of select="$Form1040-Copy00-linecampS"/>
</copy00linecampS>

<copy00linechild color="blue">
<xsl:value-of select="$Form1040-Copy00-linechild"/>
</copy00linechild>

<copy00lineSName color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSName"/>
</copy00lineSName>

<copy00linecity color="blue">
<xsl:value-of select="$Form1040-Copy00-linecity"/>
</copy00linecity>

<copy00lined1cod color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1cod"/>
</copy00lined1cod>

<copy00lined1CTC color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1CTC"/>
</copy00lined1CTC>

<copy00lined1LN color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1LN"/>
</copy00lined1LN>

<copy00lined1name color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1name"/>
</copy00lined1name>

<copy00lined1name color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1name"/>
</copy00lined1name>

<copy00lined1rel color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1rel"/>
</copy00lined1rel>

<copy00lined1SF color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1SF"/>
</copy00lined1SF>

<copy00lined1SL color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1SL"/>
</copy00lined1SL>

<copy00lined1SM color="blue">
<xsl:value-of select="$Form1040-Copy00-lined1SM"/>
</copy00lined1SM>

<copy00lined2cod color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2cod"/>
</copy00lined2cod>

<copy00lined2CTC color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2CTC"/>
</copy00lined2CTC>

<copy00lined2LN color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2LN"/>
</copy00lined2LN>

<copy00lined2name color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2name"/>
</copy00lined2name>

<copy00lined2rel color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2rel"/>
</copy00lined2rel>

<copy00lined2SF color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2SF"/>
</copy00lined2SF>

<copy00lined2SL color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2SL"/>
</copy00lined2SL>

<copy00lined2SM color="blue">
<xsl:value-of select="$Form1040-Copy00-lined2SM"/>
</copy00lined2SM>

<copy00lined3cod color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3cod"/>
</copy00lined3cod>

<copy00lined3CTC color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3CTC"/>
</copy00lined3CTC>

<copy00lined3LN color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3LN"/>
</copy00lined3LN>

<copy00lined3name color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3name"/>
</copy00lined3name>

<copy00lined3rel color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3rel"/>
</copy00lined3rel>

<copy00lined3SF color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3SF"/>
</copy00lined3SF>

<copy00lined3SL color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3SL"/>
</copy00lined3SL>

<copy00lined3SM color="blue">
<xsl:value-of select="$Form1040-Copy00-lined3SM"/>
</copy00lined3SM>

<copy00lined4cod color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4cod"/>
</copy00lined4cod>

<copy00lined4CTC color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4CTC"/>
</copy00lined4CTC>

<copy00lined4LN color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4LN"/>
</copy00lined4LN>

<copy00lined4name color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4name"/>
</copy00lined4name>

<copy00lined4rel color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4rel"/>
</copy00lined4rel>

<copy00lined4SF color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4SF"/>
</copy00lined4SF>

<copy00lined4SL color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4SL"/>
</copy00lined4SL>

<copy00lined4SM color="blue">
<xsl:value-of select="$Form1040-Copy00-lined4SM"/>
</copy00lined4SM>

<copy00lined5cod color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5cod"/>
</copy00lined5cod>

<copy00lined5CTC color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5CTC"/>
</copy00lined5CTC>

<copy00lined5LN color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5LN"/>
</copy00lined5LN>

<copy00lined5rel color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5rel"/>
</copy00lined5rel>

<copy00lined5SF color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5SF"/>
</copy00lined5SF>

<copy00lined5SL color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5SL"/>
</copy00lined5SL>

<copy00lined5SM color="blue">
<xsl:value-of select="$Form1040-Copy00-lined5SM"/>
</copy00lined5SM>

<copy00linedgt4 color="blue">
<xsl:value-of select="$Form1040-Copy00-linedgt4"/>
</copy00linedgt4>

<copy00linedigN color="blue">
<xsl:value-of select="$Form1040-Copy00-linedigN"/>
</copy00linedigN>

<copy00linedigY color="blue">
<xsl:value-of select="$Form1040-Copy00-linedigY"/>
</copy00linedigY>

<copy00lineDname color="blue">
<xsl:value-of select="$Form1040-Copy00-lineDname"/>
</copy00lineDname>

<copy00lineDphone color="blue">
<xsl:value-of select="$Form1040-Copy00-lineDphone"/>
</copy00lineDphone>

<copy00lineFaddr color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFaddr"/>
</copy00lineFaddr>

<copy00lineFCntry color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFCntry"/>
</copy00lineFCntry>

<copy00lineFEIN color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFEIN"/>
</copy00lineFEIN>

<copy00lineFname color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFname"/>
</copy00lineFname>

<copy00lineFphone color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFphone"/>
</copy00lineFphone>

<copy00lineFprov color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFprov"/>
</copy00lineFprov>

<copy00lineFzip color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFzip"/>
</copy00lineFzip>

<copy00lineOther color="blue">
<xsl:value-of select="$Form1040-Copy00-lineOther"/>
</copy00lineOther>

<copy00linePdate color="blue">
<xsl:value-of select="$Form1040-Copy00-linePdate"/>
</copy00linePdate>

<copy00linePname color="blue">
<xsl:value-of select="$Form1040-Copy00-linePname"/>
</copy00linePname>

<copy00linePTIN color="blue">
<xsl:value-of select="$Form1040-Copy00-linePTIN"/>
</copy00linePTIN>

<copy00lineSa58 color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSa58"/>
</copy00lineSa58>

<copy00lineSblind color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSblind"/>
</copy00lineSblind>

<copy00lineSdate color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSdate"/>
</copy00lineSdate>

<copy00lineSdep color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSdep"/>
</copy00lineSdep>

<copy00lineSECk color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSECk"/>
</copy00lineSECk>

<copy00lineSiUali color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSiUali"/>
</copy00lineSiUali>

<copy00lineSocc color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSocc"/>
</copy00lineSocc>

<copy00lineST color="blue">
<xsl:value-of select="$Form1040-Copy00-lineST"/>
</copy00lineST>

<copy00lineTdate color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTdate"/>
</copy00lineTdate>

<copy00lineTemail color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTemail"/>
</copy00lineTemail>

<copy00lineTocc color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTocc"/>
</copy00lineTocc>

<copy00lineTphone color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTphone"/>
</copy00lineTphone>

<copy00lineYa58 color="blue">
<xsl:value-of select="$Form1040-Copy00-lineYa58"/>
</copy00lineYa58>

<copy00lineYblind color="blue">
<xsl:value-of select="$Form1040-Copy00-lineYblind"/>
</copy00lineYblind>

<copy00lineyoudep color="blue">
<xsl:value-of select="$Form1040-Copy00-lineyoudep"/>
</copy00lineyoudep>

<copy00linezip color="blue">
<xsl:value-of select="$Form1040-Copy00-linezip"/>
</copy00linezip>

<copy00linex00 color="blue">
<xsl:value-of select="$Form1040-Copy00-linex00"/>
</copy00linex00>

<copy00line07a01 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a01"/>
</copy00line07a01>

<copy00line07a02 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a02"/>
</copy00line07a02>

<copy00line07a03 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a03"/>
</copy00line07a03>

<copy00line07a04 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a04"/>
</copy00line07a04>

<copy00line07a05 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a05"/>
</copy00line07a05>

<copy00line07a06 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a06"/>
</copy00line07a06>

<copy00line07a07 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a07"/>
</copy00line07a07>

<copy00line07a08 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a08"/>
</copy00line07a08>

<copy00line07a09 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a09"/>
</copy00line07a09>

<copy00line07a10 color="blue">
<xsl:value-of select="$Form1040-Copy00-line07a10"/>
</copy00line07a10>

<copy00lineFS color="blue">
<xsl:value-of select="$Form1040-Copy00-lineFS"/>
</copy00lineFS>

<copy00lineSFNIa color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSFNIa"/>
</copy00lineSFNIa>

<copy00lineSLNa color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSLNa"/>
</copy00lineSLNa>

<copy00lineSSSNoFa color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoFa"/>
</copy00lineSSSNoFa>

<copy00lineSSSNoLa color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoLa"/>
</copy00lineSSSNoLa>

<copy00lineSSSNoMa color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoMa"/>
</copy00lineSSSNoMa>

<copy00lineTFNI color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$Form1040-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>

<copy00lineScA18ck color="blue">
<xsl:value-of select="$Form1040-Copy00-lineScA18ck"/>
</copy00lineScA18ck>

<copy00lineira01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira01, '#####0')"/>
</copy00lineira01>

<copy00lineira02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira02, '#####0')"/>
</copy00lineira02>

<copy00lineira03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira03, '#####0')"/>
</copy00lineira03>

<copy00lineira04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira04, '#####0')"/>
</copy00lineira04>

<copy00lineira05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira05, '#####0')"/>
</copy00lineira05>

<copy00lineira06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira06, '#####0')"/>
</copy00lineira06>

<copy00lineira07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira07, '#####0')"/>
</copy00lineira07>

<copy00lineira08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira08, '#####0')"/>
</copy00lineira08>

<copy00lineira09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira09, '#####0')"/>
</copy00lineira09>

<copy00lineira10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-lineira10, '#####0')"/>
</copy00lineira10>

<copy00linepen01 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen01, '#####0')"/>
</copy00linepen01>

<copy00linepen02 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen02, '#####0')"/>
</copy00linepen02>

<copy00linepen03 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen03, '#####0')"/>
</copy00linepen03>

<copy00linepen04 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen04, '#####0')"/>
</copy00linepen04>

<copy00linepen05 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen05, '#####0')"/>
</copy00linepen05>

<copy00linepen06 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen06, '#####0')"/>
</copy00linepen06>

<copy00linepen07 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen07, '#####0')"/>
</copy00linepen07>

<copy00linepen08 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen08, '#####0')"/>
</copy00linepen08>

<copy00linepen09 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen09, '#####0')"/>
</copy00linepen09>

<copy00linepen10 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linepen10, '#####0')"/>
</copy00linepen10>

<copy00linecount color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linecount, '#####0')"/>
</copy00linecount>

<copy00line12 color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line16a color="red">
<xsl:value-of select="format-number($Form1040-Copy00-line16a, '#####0')"/>
</copy00line16a>

<copy00lineS color="blue">
<xsl:value-of select="$Form1040-Copy00-lineS"/>
</copy00lineS>

<copy00lineMFJ color="blue">
<xsl:value-of select="$Form1040-Copy00-lineMFJ"/>
</copy00lineMFJ>

<copy00lineMFS color="blue">
<xsl:value-of select="$Form1040-Copy00-lineMFS"/>
</copy00lineMFS>

<copy00lineHOH color="blue">
<xsl:value-of select="$Form1040-Copy00-lineHOH"/>
</copy00lineHOH>

<copy00lineQSS color="blue">
<xsl:value-of select="$Form1040-Copy00-lineQSS"/>
</copy00lineQSS>

<copy00lineSLN color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineSFNI color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSSSNoF color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoF"/>
</copy00lineSSSNoF>

<copy00lineSSSNoM color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoM"/>
</copy00lineSSSNoM>

<copy00lineSSSNoL color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSSSNoL"/>
</copy00lineSSSNoL>

<copy00lineSchild color="blue">
<xsl:value-of select="$Form1040-Copy00-lineSchild"/>
</copy00lineSchild>
</Form>
</IRSForms>
</xsl:template>
</xsl:stylesheet>
