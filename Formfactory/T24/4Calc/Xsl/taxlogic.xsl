<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:include href="../BaseXsl/taxCalc.xsl"/>

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


<xsl:variable name="cap-Copy00-line03a">
<xsl:value-of select="$cap-Copy00-line01 +
$cap-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line07">
<xsl:value-of select="$cap-Copy00-line04 +
$cap-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line12">
<xsl:value-of select="$cap-Copy00-line10 +
$cap-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line02a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040sd_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040sd_Copy01.xml')//copy01line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line05a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040sd_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040sd_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line06a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040sd_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040sd_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line09a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040sd_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040sd_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line10a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040sd_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040sd_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="T23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line02">
<xsl:value-of select="$cap-Copy00-line02a * $cap-Copy00-lineminus1"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line05">
<xsl:value-of select="$cap-Copy00-line05a * $cap-Copy00-lineminus1"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line09">
<xsl:value-of select="$cap-Copy00-line09a * $cap-Copy00-lineminus1"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line04">
<xsl:choose>
<xsl:when test="$cap-Copy00-line02 &gt;= $cap-Copy00-line03">
<xsl:value-of select="$cap-Copy00-line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$cap-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line08">
<xsl:choose>
<xsl:when test="$cap-Copy00-line07 >= $cap-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$cap-Copy00-line05 - $cap-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line11">
<xsl:choose>
<xsl:when test="$cap-Copy00-line05 >= $cap-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$cap-Copy00-line04 - $cap-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line13">
<xsl:choose>
<xsl:when test="$cap-Copy00-line12 >= $cap-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$cap-Copy00-line09 - $cap-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-lineminus1">
<xsl:value-of select="-1.00"/>
</xsl:variable>

<xsl:variable name="cap-Copy00-line03">
<xsl:choose>
<xsl:when test="$cap-Copy00-line03a &gt; 0">
<xsl:value-of select="$cap-Copy00-line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line06">
<xsl:choose>
<xsl:when test="$cap-Copy00-line06a &gt; 0">
<xsl:value-of select="$cap-Copy00-line06a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line10">
<xsl:choose>
<xsl:when test="$cap-Copy00-line10a &gt; 0">
<xsl:value-of select="$cap-Copy00-line10a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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
<xsl:when test="document('../Output/w2_Copy00.xml')">
<xsl:value-of select="document('../Output/w2_Copy00.xml')//copy00line01"/>
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
<xsl:when test="$Form1040-Copy00-line33 >= $Form1040-Copy00-line24">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line24 - $Form1040-Copy00-line33"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02b">
<xsl:value-of select="$Form1040-Copy00-lineintTot -  $Form1040-Copy00-line02a"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line11">
<xsl:value-of select="$Form1040-Copy00-line09 -  $Form1040-Copy00-line10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:value-of select="$Form1040-Copy00-line34 -  $Form1040-Copy00-line36"/>
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

<xsl:variable name="Form1040-Copy00-lineailS">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineailS_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaSname">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaSname_text.xml')//text"/>
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
<xsl:value-of select="3"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineYa58 = 'x' and $Form1040-Copy00-lineYblind = 'x' and $Form1040-Copy00-lineSa58 = '' and $Form1040-Copy00-lineSblind = 'x'">
<xsl:value-of select="3"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linemodIncome">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line01z &gt; 850">
<xsl:value-of select="$Form1040-Copy00-line01z + 450"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="1300"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line12">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineScA18ck = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineSiUali = 'x'">
<xsl:value-of select="$Form1040-Copy00-lineschA17"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'S'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-linemodIncome &lt; 14600">
<xsl:value-of select="$Form1040-Copy00-linemodIncome + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="14600 + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="14600 + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-linemodIncome &lt; 21900">
<xsl:value-of select="$Form1040-Copy00-linemodIncome + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="21900 + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="21900 + (1950 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-linemodIncome &lt; 29200">
<xsl:value-of select="$Form1040-Copy00-linemodIncome + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="29200 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="29200 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x' | $Form1040-Copy00-lineSdep = 'x'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-linemodIncome &lt; 29200">
<xsl:value-of select="$Form1040-Copy00-linemodIncome + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="29200 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="29200 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineyoudep = 'x'">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-linemodIncome &lt; 14600">
<xsl:value-of select="$Form1040-Copy00-linemodIncome + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="14600 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="14600 + (1550 * $Form1040-Copy00-linecount)"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
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
<xsl:when test="$Form1040-Copy00-lineFEIT02a &gt; 0">
<xsl:value-of select="$Form1040-Copy00-lineFEIT06"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line49524g &gt; 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD18 &gt; 0 or $Form1040-Copy00-lineD19 &gt; 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD15 >0 and $Form1040-Copy00-lineD16 &gt; 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line03a &gt; 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line07 &gt; 0 and $Form1040-Copy00-line07Ck = 'x'">
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


<xsl:variable name="Form1040ssa-Copy00-lineBox03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040ssa-Copy00-lineBox06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox05">
<xsl:choose>
<xsl:when test="$Form1040ssa-Copy00-lineBox04 >= $Form1040ssa-Copy00-lineBox03">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03 - $Form1040ssa-Copy00-lineBox04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d1">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d2">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d3">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d4">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d5">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d6">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d7">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03d8">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03d8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e1">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e2">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e3">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e4">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e5">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox03e7">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox03e7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d1">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d2">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d3">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d4">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d5">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d6">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d7">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04d8">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04d8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e1">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e2">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e3">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e4">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e5">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e6">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e7">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox04e8">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox04e8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox07">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox07a">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox07a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox07b">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox07b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineBox08">
<xsl:value-of select="document('../Data/Form1040ssa_Copy00_lineBox08_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040ssa-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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


<xsl:variable name="Form1099div-Copy00-line01a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line01b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line02f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line08">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line08_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line14a">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line14a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line14b">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line14b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line20yr">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line20yr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-line2TIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line2TIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-lineactNo">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineactNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-lineFATCA">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineFATCA_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepadd1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepadd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepadd2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepadd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepctry">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepnam1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepnam1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepnam2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepnam2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineraddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineraddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linerctry">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linername1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linername1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linername2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linername2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099div-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>
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


<xsl:variable name="Form1099int-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line17a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line07">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line16a">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line16a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line16b">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line16b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line20yr">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line20yr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line2TIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line2TIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineactNo">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineactNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineFATCA">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineFATCA_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepadd1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepadd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepadd2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepadd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepcnty">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepcnty_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepctry">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepnam1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepnam1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepnam2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepnam2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepRTN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepRTN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineradd1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineradd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineradd2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineradd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linercnty">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linercnty_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerctry">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linernam1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linernam1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linernam2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linernam2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>
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


<xsl:variable name="Form1099r-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line17a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08pct">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line08pct_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line12Ck">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line12Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineacctNo">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineacctNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>
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
<xsl:choose>
<xsl:when test="$Form4868-Copy00-linet0tpay >= $Form4868-Copy00-linetottax">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4868-Copy00-linetottax - $Form4868-Copy00-linet0tpay"/>
</xsl:otherwise>
</xsl:choose>
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
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05']), '#####0')"/>
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
<xsl:value-of select="$Form4952-Copy00-line04a -  $Form4952-Copy00-line04b"/>
</xsl:variable>

<xsl:variable name="Form4952-Copy00-line04f">
<xsl:value-of select="$Form4952-Copy00-line04d -  $Form4952-Copy00-line04e"/>
</xsl:variable>
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


<xsl:variable name="QDCGaTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line02 +
$QDCGaTaxWkst-Copy00-line03"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line15">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line05 +
$QDCGaTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line19">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line09 +
$QDCGaTaxWkst-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line23">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line18 +
$QDCGaTaxWkst-Copy00-line21 +
$QDCGaTaxWkst-Copy00-line22"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line02a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line15D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line16D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line10407">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Output/Bkg_Copy00.xml')">
<xsl:value-of select="document('../Output/Bkg_Copy00.xml')//copy00lineFS"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-lineFEI3">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line104015">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-lineQDCG04">
<xsl:choose>
<xsl:when test="document('../Output/QDCGTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGTaxWkst_Copy00.xml')//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line11">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-linep15">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-linep20">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line18">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line17 * $QDCGaTaxWkst-Copy00-linep15"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line21">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line20 * $QDCGaTaxWkst-Copy00-linep20"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line01 &gt;= $QDCGaTaxWkst-Copy00-line06">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line05 &gt;= $QDCGaTaxWkst-Copy00-line07">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line01 &gt;= $QDCGaTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line14">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line01 &gt;= $QDCGaTaxWkst-Copy00-line13">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line12 &gt;= $QDCGaTaxWkst-Copy00-line16">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line23 &gt;= $QDCGaTaxWkst-Copy00-line24">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line24"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line04 >= $QDCGaTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line01 - $QDCGaTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line16">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line15 >= $QDCGaTaxWkst-Copy00-line14">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line14 - $QDCGaTaxWkst-Copy00-line15"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line104015 >= $QDCGaTaxWkst-Copy00-lineQDCG04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-lineQDCG04 - $QDCGaTaxWkst-Copy00-line104015"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-linecgexcess >= $QDCGaTaxWkst-Copy00-line03a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line03a - $QDCGaTaxWkst-Copy00-linecgexcess"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-lineunusedcge">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line03a >= $QDCGaTaxWkst-Copy00-linecgexcess">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-linecgexcess - $QDCGaTaxWkst-Copy00-line03a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineunusedcge >= $QDCGaTaxWkst-Copy00-line02a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line02a - $QDCGaTaxWkst-Copy00-lineunusedcge"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line09">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line07 -  $QDCGaTaxWkst-Copy00-line08"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line12">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line10 -  $QDCGaTaxWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line20">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line10 -  $QDCGaTaxWkst-Copy00-line19"/>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line03a">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line03y = 'x'">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-line15D &lt;= 0 or QDCGaTaxWkst-Copy00-line16D &lt;= 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-line15D &lt; $QDCGaTaxWkst-Copy00-line16D">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line15D"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line16D"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line10407"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line03y">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line03n">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="89250"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="89250"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="59750"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="492300"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="276900"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="553850"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="553850"/>
</xsl:when>
<xsl:when test="$QDCGaTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="523050"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line22">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGaTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGaTaxWkst-Copy00-line05"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="QDCGaTaxWkst-Copy00-line24">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGaTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGaTaxWkst-Copy00-line01"/>
</xsl:call-template>
</xsl:variable>
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


<xsl:variable name="QDCGTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line02 +
$QDCGTaxWkst-Copy00-line03"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line15">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line05 +
$QDCGTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line19">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line09 +
$QDCGTaxWkst-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line23">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line18 +
$QDCGTaxWkst-Copy00-line21 +
$QDCGTaxWkst-Copy00-line22"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line15D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line16D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line10407">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Output/Bkg_Copy00.xml')">
<xsl:value-of select="document('../Output/Bkg_Copy00.xml')//copy00lineFS"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-lineFEI3">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line104015">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line11">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-linep15">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-linep20">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line18">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line17 * $QDCGTaxWkst-Copy00-linep15"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line21">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line20 * $QDCGTaxWkst-Copy00-linep20"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line06">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line05 &gt;= $QDCGTaxWkst-Copy00-line07">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line14">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line13">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line12 &gt;= $QDCGTaxWkst-Copy00-line16">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line23 &gt;= $QDCGTaxWkst-Copy00-line24">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line24"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line04 >= $QDCGTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01 - $QDCGTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line16">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line15 >= $QDCGTaxWkst-Copy00-line14">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line14 - $QDCGTaxWkst-Copy00-line15"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line104015 >= $QDCGTaxWkst-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line04 - $QDCGTaxWkst-Copy00-line104015"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-lineunusedcge">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line03 >= $QDCGTaxWkst-Copy00-linecgexcess">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-linecgexcess - $QDCGTaxWkst-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line09">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line07 -  $QDCGTaxWkst-Copy00-line08"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line12">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line10 -  $QDCGTaxWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line20">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line10 -  $QDCGTaxWkst-Copy00-line19"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="$QDCGTaxWkst-Copy00-lineFEI3"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line104015"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line03y = 'x'">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line15D &lt;= 0 or QDCGTaxWkst-Copy00-line16D &lt;= 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-line15D &lt; $QDCGTaxWkst-Copy00-line16D">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line15D"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line16D"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line10407"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03y">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03n">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="89250"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="80250"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="59750"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="492300"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="276900"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="5553850"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="5553850"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="523050"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line22">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGTaxWkst-Copy00-line05"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line24">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:call-template>
</xsl:variable>
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


<xsl:variable name="Sched1-Copy00-line09">
<xsl:value-of select="$Sched1-Copy00-line08a +
$Sched1-Copy00-line08b +
$Sched1-Copy00-line08c +
$Sched1-Copy00-line08d +
$Sched1-Copy00-line08e +
$Sched1-Copy00-line08f +
$Sched1-Copy00-line08g +
$Sched1-Copy00-line08h +
$Sched1-Copy00-line08i +
$Sched1-Copy00-line08j +
$Sched1-Copy00-line08k +
$Sched1-Copy00-line08l +
$Sched1-Copy00-line08m +
$Sched1-Copy00-line08n +
$Sched1-Copy00-line08o +
$Sched1-Copy00-line08p +
$Sched1-Copy00-line08q +
$Sched1-Copy00-line08r +
$Sched1-Copy00-line08s +
$Sched1-Copy00-line08t +
$Sched1-Copy00-line08u +
$Sched1-Copy00-line08v +
$Sched1-Copy00-line08z"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line10">
<xsl:value-of select="$Sched1-Copy00-line01 +
$Sched1-Copy00-line02a +
$Sched1-Copy00-line03 +
$Sched1-Copy00-line04 +
$Sched1-Copy00-line05 +
$Sched1-Copy00-line06 +
$Sched1-Copy00-line07 +
$Sched1-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line25">
<xsl:value-of select="$Sched1-Copy00-line24a +
$Sched1-Copy00-line24b +
$Sched1-Copy00-line24c +
$Sched1-Copy00-line24d +
$Sched1-Copy00-line24e +
$Sched1-Copy00-line24f +
$Sched1-Copy00-line24g +
$Sched1-Copy00-line24h +
$Sched1-Copy00-line24i +
$Sched1-Copy00-line24j +
$Sched1-Copy00-line24k +
$Sched1-Copy00-line24z"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line26">
<xsl:value-of select="$Sched1-Copy00-line11 +
$Sched1-Copy00-line12 +
$Sched1-Copy00-line13 +
$Sched1-Copy00-line14 +
$Sched1-Copy00-line15 +
$Sched1-Copy00-line16 +
$Sched1-Copy00-line17 +
$Sched1-Copy00-line18 +
$Sched1-Copy00-line19a +
$Sched1-Copy00-line20 +
$Sched1-Copy00-line21 +
$Sched1-Copy00-line23 +
$Sched1-Copy00-line25"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line1099K">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08j">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08k">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08l">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08m">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08n">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08o">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08p">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08q">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08r">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08s">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08t">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08u">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08v">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line16">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line17">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line18">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line20">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line21">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line23">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24k">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line15">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24j">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line02b">
<xsl:value-of select="document('../Data/Sched1_Copy00_line02b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08za">
<xsl:value-of select="document('../Data/Sched1_Copy00_line08za_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08zb">
<xsl:value-of select="document('../Data/Sched1_Copy00_line08zb_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19b1">
<xsl:value-of select="document('../Data/Sched1_Copy00_line19b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19b2">
<xsl:value-of select="document('../Data/Sched1_Copy00_line19b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24za">
<xsl:value-of select="document('../Data/Sched1_Copy00_line24za_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24zb">
<xsl:value-of select="document('../Data/Sched1_Copy00_line24zb_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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


<xsl:variable name="Sched3-Copy00-line07">
<xsl:value-of select="$Sched3-Copy00-line06a +
$Sched3-Copy00-line06b +
$Sched3-Copy00-line06c +
$Sched3-Copy00-line06d +
$Sched3-Copy00-line06f +
$Sched3-Copy00-line06g +
$Sched3-Copy00-line06h +
$Sched3-Copy00-line06i +
$Sched3-Copy00-line06j +
$Sched3-Copy00-line06k +
$Sched3-Copy00-line06l +
$Sched3-Copy00-line06m +
$Sched3-Copy00-line06z"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line08">
<xsl:value-of select="$Sched3-Copy00-line01 +
$Sched3-Copy00-line02 +
$Sched3-Copy00-line03 +
$Sched3-Copy00-line04 +
$Sched3-Copy00-line05a +
$Sched3-Copy00-line05b +
$Sched3-Copy00-line07"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line14">
<xsl:value-of select="$Sched3-Copy00-line13a +
$Sched3-Copy00-line13b +
$Sched3-Copy00-line13c +
$Sched3-Copy00-line13d +
$Sched3-Copy00-line13z"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line15">
<xsl:value-of select="$Sched3-Copy00-line09 +
$Sched3-Copy00-line10 +
$Sched3-Copy00-line11 +
$Sched3-Copy00-line12 +
$Sched3-Copy00-line14"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line05a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line05b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line05b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06j">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06j'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06j'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06j']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06k">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06k'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06k'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06k']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06l">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06l'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06l'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06l']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06m">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06m'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06m'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06m']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line06line">
<xsl:value-of select="document('../Data/Sched3_Copy00_line06line_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-line13zline">
<xsl:value-of select="document('../Data/Sched3_Copy00_line13zline_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineTSSNol">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNol_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNol_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched3-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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

<xsl:variable name="SchedA-Copy00-lineminus1">
<xsl:value-of select="-1"/>
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

<xsl:variable name="SchedA-Copy00-line11a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedA-Copy00-line11a']), '#####0')"/>
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

<xsl:variable name="SchedA-Copy00-line11">
<xsl:value-of select="$SchedA-Copy00-line11a * $SchedA-Copy00-lineminus1"/>
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


<xsl:variable name="SchedB-Copy00-line02">
<xsl:value-of select="$SchedB-Copy00-line01ad +
$SchedB-Copy00-line01bd +
$SchedB-Copy00-line01cd +
$SchedB-Copy00-line01dd +
$SchedB-Copy00-line01ed +
$SchedB-Copy00-line01fd +
$SchedB-Copy00-line01gd +
$SchedB-Copy00-line01hd +
$SchedB-Copy00-line01id +
$SchedB-Copy00-line01jd +
$SchedB-Copy00-line01kd +
$SchedB-Copy00-line01ld +
$SchedB-Copy00-line01md +
$SchedB-Copy00-line01nd"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line06">
<xsl:value-of select="$SchedB-Copy00-line05ad +
$SchedB-Copy00-line05bd +
$SchedB-Copy00-line05cd +
$SchedB-Copy00-line05dd +
$SchedB-Copy00-line05ed +
$SchedB-Copy00-line05fd +
$SchedB-Copy00-line05gd +
$SchedB-Copy00-line05hd +
$SchedB-Copy00-line05id +
$SchedB-Copy00-line05jd +
$SchedB-Copy00-line05kd +
$SchedB-Copy00-line05ld +
$SchedB-Copy00-line05md +
$SchedB-Copy00-line05nd"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineexempt">
<xsl:value-of select="$SchedB-Copy00-line01aint +
$SchedB-Copy00-line01bint +
$SchedB-Copy00-line01cint +
$SchedB-Copy00-line01dint +
$SchedB-Copy00-line01eint +
$SchedB-Copy00-line01fint +
$SchedB-Copy00-line01gint +
$SchedB-Copy00-line01hint +
$SchedB-Copy00-line01iint +
$SchedB-Copy00-line01jint +
$SchedB-Copy00-line01kint +
$SchedB-Copy00-line01lint +
$SchedB-Copy00-line01mint +
$SchedB-Copy00-line01nint"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-linequal">
<xsl:value-of select="$SchedB-Copy00-line05adiv +
$SchedB-Copy00-line05bdiv +
$SchedB-Copy00-line05cdiv +
$SchedB-Copy00-line05ddiv +
$SchedB-Copy00-line05ediv +
$SchedB-Copy00-line05fdiv +
$SchedB-Copy00-line05gdiv +
$SchedB-Copy00-line05hdiv +
$SchedB-Copy00-line05idiv +
$SchedB-Copy00-line05jdiv +
$SchedB-Copy00-line05kdiv +
$SchedB-Copy00-line05ldiv +
$SchedB-Copy00-line05mdiv +
$SchedB-Copy00-line05ndiv"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy11line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy12line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy13line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy14line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form8815_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8815_Copy01.xml')//copy0100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy11line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy12line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy13line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy14line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01aint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01eint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01iint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy11line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy12line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy13line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy14line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05adiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ddiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ediv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05idiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy11line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ldiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy12line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy13line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ndiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy14line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line04">
<xsl:value-of select="$SchedB-Copy00-line02 -  $SchedB-Copy00-line03"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a1n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a1n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a1y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a1y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a2n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a2n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a2y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a2y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07b">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line08n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line08n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line08y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line08y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01at">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy01_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy01_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy02_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy02_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy03_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy03_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy04_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy04_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy05_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy05_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy06_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy06_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy07_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy07_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy08_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy08_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy09_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy09_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy10_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy10_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy11_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy11_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy12_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy12_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy13_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy13_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy14_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy14_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05at">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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

<xsl:variable name="SchedC-Copy00-line48">
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

<xsl:variable name="SchedC-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/SchedC_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedC_Copy00.xml')//copy00line42"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line27a">
<xsl:choose>
<xsl:when test="document('../Output/SchedC_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedC_Copy00.xml')//copy00line48"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedC-Copy00-line27b">
<xsl:choose>
<xsl:when test="document('../Output/Form7205_Copy00.xml')">
<xsl:value-of select="document('../Output/Form7205_Copy00.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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


<xsl:variable name="SchedDaTaxWkst-Copy00-line10">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line06 +
$SchedDaTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line11">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line118 +
$SchedDaTaxWkst-Copy00-line119"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line28a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line21 +
$SchedDaTaxWkst-Copy00-line22"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line32a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line24 +
$SchedDaTaxWkst-Copy00-line30"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line36a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line10 +
$SchedDaTaxWkst-Copy00-line21"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line41a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line21 +
$SchedDaTaxWkst-Copy00-line22 +
$SchedDaTaxWkst-Copy00-line30 +
$SchedDaTaxWkst-Copy00-line33 +
$SchedDaTaxWkst-Copy00-line39"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line45">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line31 +
$SchedDaTaxWkst-Copy00-line34 +
$SchedDaTaxWkst-Copy00-line40 +
$SchedDaTaxWkst-Copy00-line43 +
$SchedDaTaxWkst-Copy00-line44"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line215">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line220">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line225">
<xsl:value-of select="0.25"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line228">
<xsl:value-of select="0.28"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="2000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="3000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04c"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="4000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-lineSchedDT10">
<xsl:choose>
<xsl:when test="document('../Output/SchedDTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDTaxWkst_Copy00.xml')//copy00line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line115">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line116">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line118">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line119">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line104015">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line31a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line30 * $SchedDaTaxWkst-Copy00-line215"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line34a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line33 * $SchedDaTaxWkst-Copy00-line220"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line40a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line39 * $SchedDaTaxWkst-Copy00-line225"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line43a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line42 * $SchedDaTaxWkst-Copy00-line228"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line21">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line18 &gt;= $SchedDaTaxWkst-Copy00-line20">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line20"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line115 &gt;= $SchedDaTaxWkst-Copy00-line116">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line116"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line115"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line03 &gt;= $SchedDaTaxWkst-Copy00-line04">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line12">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line09 &gt;= $SchedDaTaxWkst-Copy00-line11">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line16">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 &gt;= $SchedDaTaxWkst-Copy00-line15">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line14 &gt;= $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line19">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 &gt;= $SchedDaTaxWkst-Copy00-line19a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line19a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line20">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line14 &gt;= $SchedDaTaxWkst-Copy00-line19">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line23a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 &gt;= $SchedDaTaxWkst-Copy00-line13">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line27a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 &gt;= $SchedDaTaxWkst-Copy00-line26">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line30a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line25 &gt;= $SchedDaTaxWkst-Copy00-line29">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line25"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line35a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line09 &gt;= $SchedDaTaxWkst-Copy00-line119">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line119"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line47">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line45 &gt;= $SchedDaTaxWkst-Copy00-line46">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line46"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line45"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line04 >= $SchedDaTaxWkst-Copy00-line03">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line03 - $SchedDaTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line06a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line05 >= $SchedDaTaxWkst-Copy00-line02">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line02 - $SchedDaTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line09a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line08 >= $SchedDaTaxWkst-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line07 - $SchedDaTaxWkst-Copy00-line08"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line14">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line13 >= $SchedDaTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01 - $SchedDaTaxWkst-Copy00-line13"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line18">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line10 >= $SchedDaTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01 - $SchedDaTaxWkst-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line25a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line24 >= $SchedDaTaxWkst-Copy00-line23">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line23 - $SchedDaTaxWkst-Copy00-line24"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line29a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line28 >= $SchedDaTaxWkst-Copy00-line27">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line27 - $SchedDaTaxWkst-Copy00-line28"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line38a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line37 >= $SchedDaTaxWkst-Copy00-line36">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line36 - $SchedDaTaxWkst-Copy00-line37"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line39a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line38 >= $SchedDaTaxWkst-Copy00-line35">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line35 - $SchedDaTaxWkst-Copy00-line38"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line104015 >= $SchedDaTaxWkst-Copy00-lineSchedDT10">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-lineSchedDT10 - $SchedDaTaxWkst-Copy00-line104015"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-linecgexcess >= $SchedDaTaxWkst-Copy00-line09a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line09a - $SchedDaTaxWkst-Copy00-linecgexcess"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-lineunusedcge">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line09a >= $SchedDaTaxWkst-Copy00-linecgexcess">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-linecgexcess - $SchedDaTaxWkst-Copy00-line09a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineunusedcge >= $SchedDaTaxWkst-Copy00-line06a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line06a - $SchedDaTaxWkst-Copy00-lineunusedcge"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line13">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line10 -  $SchedDaTaxWkst-Copy00-line12"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line22">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line17 >= $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line16 - $SchedDaTaxWkst-Copy00-line17"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line33a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line23 -  $SchedDaTaxWkst-Copy00-line32"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line42a">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01 -  $SchedDaTaxWkst-Copy00-line41"/>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line15">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'S'   or $SchedDaTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="44625"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDaTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="89250"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="59750"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line19a">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'S'   or $SchedDaTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="182100"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDaTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="364200"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="182100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line23">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line23a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line24">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line22"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line25a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line26">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="492300"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="276900"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDaTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="553850"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="523050"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line27">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line27a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line28">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line28a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line29">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line29a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line30">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line30a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line31">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line31a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line32">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line32a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line33">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line33a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line34">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line34a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line35">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line35a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line36">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line36a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line37">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line38">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line38a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line39">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line39a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line40">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line40a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line41">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line41a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line42">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line42a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line43">
<xsl:choose>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line01 = $SchedDaTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDaTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDaTaxWkst-Copy00-line43a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line44">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDaTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$SchedDaTaxWkst-Copy00-line21"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="SchedDaTaxWkst-Copy00-line46">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDaTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$SchedDaTaxWkst-Copy00-line01"/>
</xsl:call-template>
</xsl:variable>
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

<xsl:variable name="SchedD-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14']), '#####0')"/>
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
<xsl:value-of select="$SchedD-Copy00-line18d - linecgexcess"/>
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
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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

<xsl:variable name="SchedDTaxWkst-Copy00-line104015">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
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

<xsl:variable name="SchedDTaxWkst-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line104015 >= $SchedDTaxWkst-Copy00-line10">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line10 - $SchedDTaxWkst-Copy00-line104015"/>
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
<xsl:value-of select="276900"/>
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


<xsl:variable name="SST-Copy00-line05">
<xsl:value-of select="$SST-Copy00-line02 +
$SST-Copy00-line03 +
$SST-Copy00-line04"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line06">
<xsl:value-of select="$SST-Copy00-line11s1 +
$SST-Copy00-line12s1 +
$SST-Copy00-line13s1 +
$SST-Copy00-line14s1 +
$SST-Copy00-line15s1 +
$SST-Copy00-line16s1 +
$SST-Copy00-line17s1 +
$SST-Copy00-line18s1 +
$SST-Copy00-line19as1 +
$SST-Copy00-line20s1 +
$SST-Copy00-line23s1 +
$SST-Copy00-line25s1"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line03">
<xsl:value-of select="$SST-Copy00-line01z1040 +
$SST-Copy00-line02b1040 +
$SST-Copy00-line03b1040 +
$SST-Copy00-line04b1040 +
$SST-Copy00-line05b1040 +
$SST-Copy00-line071040 +
$SST-Copy00-line081040"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line50">
<xsl:value-of select="0.50"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line85">
<xsl:value-of select="0.85"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line00">
<xsl:value-of select="0.00"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040ssa_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040ssa_Copy01.xml')//copy01lineBox05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="1000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line01z1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line01z"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line02b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line03b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line03b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line04b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line04b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line05b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line05b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line071040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line081040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line12"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line13s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line114"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line15s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line16s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line17s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line19as1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line19a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line20s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line20"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line23s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line23"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line25s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-lineApart">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineApart_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineApart_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line02">
<xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line50"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09 &gt;= $SST-Copy00-line10">
<xsl:value-of select="$SST-Copy00-line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line02 &gt;= $SST-Copy00-line13">
<xsl:value-of select="$SST-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line16 &gt;= $SST-Copy00-line17">
<xsl:value-of select="$SST-Copy00-line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line10 >= $SST-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09 - $SST-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line07">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &lt; $SST-Copy00-line05">
<xsl:value-of select="$SST-Copy00-line05 - $SST-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line08">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="32000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line09">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &lt; $SST-Copy00-line07">
<xsl:value-of select="$SST-Copy00-line07 - $SST-Copy00-line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line10">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="12000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="9000"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line13">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12 * $SST-Copy00-line50"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line15">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line11 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11 * $SST-Copy00-line85"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line16">
<xsl:choose>
<xsl:when test="SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="$SST-Copy00-line07 * $SST-Copy00-line85"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14 + $SST-Copy00-line15"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line17">
<xsl:choose>
<xsl:when test="SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line85"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line18a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line07n">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06  &lt; $SST-Copy00-line05">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line07y">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06  &lt; $SST-Copy00-line05">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line09n">
<xsl:choose>
<xsl:when test="$SST-Copy00-line08  &lt; $SST-Copy00-line07">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line09y">
<xsl:choose>
<xsl:when test="$SST-Copy00-line08  &lt; $SST-Copy00-line07">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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


<xsl:variable name="UG1250Wkst-Copy00-line06">
<xsl:value-of select="$UG1250Wkst-Copy00-line03 +
$UG1250Wkst-Copy00-line04 +
$UG1250Wkst-Copy00-line05"/>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line16">
<xsl:value-of select="$UG1250Wkst-Copy00-line16a +
$UG1250Wkst-Copy00-linecgexcess"/>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line15">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line15'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line15'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line15']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='UG1250Wkst-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line479707">
<xsl:choose>
<xsl:when test="document('../Output/Form4797_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4797_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-linecgexcess">
<xsl:choose>
<xsl:when test="document('../Output/QDCGaTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGaTaxWkst_Copy00.xml')//copy00linecgexcess"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$UG1250Wkst-Copy00-line06 &gt;= $UG1250Wkst-Copy00-line479707">
<xsl:value-of select="$UG1250Wkst-Copy00-line479707"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$UG1250Wkst-Copy00-line06"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line09">
<xsl:choose>
<xsl:when test="$UG1250Wkst-Copy00-line08 >= $UG1250Wkst-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$UG1250Wkst-Copy00-line07 - $UG1250Wkst-Copy00-line08"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line18">
<xsl:choose>
<xsl:when test="$UG1250Wkst-Copy00-line17 >= $UG1250Wkst-Copy00-line13">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$UG1250Wkst-Copy00-line13 - $UG1250Wkst-Copy00-line17"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line03">
<xsl:value-of select="$UG1250Wkst-Copy00-line01 -  $UG1250Wkst-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line17">
<xsl:choose>
<xsl:when test="UG1250Wkst-Copy01-line17a &lt; 0">
<xsl:value-of select="UG1250Wkst=Copy00-iine17 * -1"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
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


<xsl:variable name="w2-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line07'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line17a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line18a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line18b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line18b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line19b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-line19b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-line12a">
<xsl:value-of select="document('../Data/w2_Copy00_line12a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line12b">
<xsl:value-of select="document('../Data/w2_Copy00_line12b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line12c">
<xsl:value-of select="document('../Data/w2_Copy00_line12c_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line12d">
<xsl:value-of select="document('../Data/w2_Copy00_line12d_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line13a">
<xsl:value-of select="document('../Data/w2_Copy00_line13a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line13b">
<xsl:value-of select="document('../Data/w2_Copy00_line13b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line13c">
<xsl:value-of select="document('../Data/w2_Copy00_line13c_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line15b">
<xsl:value-of select="document('../Data/w2_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line15sa">
<xsl:value-of select="document('../Data/w2_Copy00_line15sa_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line20a">
<xsl:value-of select="document('../Data/w2_Copy00_line20a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-line20b">
<xsl:value-of select="document('../Data/w2_Copy00_line20b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linectrNo">
<xsl:value-of select="document('../Data/w2_Copy00_linectrNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/w2_Copy00_linepaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/w2_Copy00_linepaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepayrID">
<xsl:value-of select="document('../Data/w2_Copy00_linepayrID_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepcity">
<xsl:value-of select="document('../Data/w2_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepST">
<xsl:value-of select="document('../Data/w2_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linepzip">
<xsl:value-of select="document('../Data/w2_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/w2_Copy00_lineraddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/w2_Copy00_lineraddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linercity">
<xsl:value-of select="document('../Data/w2_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linerST">
<xsl:value-of select="document('../Data/w2_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linerzip">
<xsl:value-of select="document('../Data/w2_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/w2_Copy00_lineTFNI_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTLN">
<xsl:value-of select="document('../Data/w2_Copy00_lineTLN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/w2_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/w2_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/w2_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linetsuff">
<xsl:value-of select="document('../Data/w2_Copy00_linetsuff_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linevoid">
<xsl:value-of select="document('../Data/w2_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>
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


  <xsl:include href="taxCalc.xsl"/>

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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="28RGWkst-Copy00">
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
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="cap-Copy00">

<copy00line03a color="red">
<xsl:value-of select="format-number($cap-Copy00-line03a, '#####0')"/>
</copy00line03a>

<copy00line07 color="red">
<xsl:value-of select="format-number($cap-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line12 color="red">
<xsl:value-of select="format-number($cap-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line01 color="red">
<xsl:value-of select="format-number($cap-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02a color="red">
<xsl:value-of select="format-number($cap-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line05a color="red">
<xsl:value-of select="format-number($cap-Copy00-line05a, '#####0')"/>
</copy00line05a>

<copy00line06a color="red">
<xsl:value-of select="format-number($cap-Copy00-line06a, '#####0')"/>
</copy00line06a>

<copy00line09a color="red">
<xsl:value-of select="format-number($cap-Copy00-line09a, '#####0')"/>
</copy00line09a>

<copy00line10a color="red">
<xsl:value-of select="format-number($cap-Copy00-line10a, '#####0')"/>
</copy00line10a>

<copy00line02 color="red">
<xsl:value-of select="format-number($cap-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line05 color="red">
<xsl:value-of select="format-number($cap-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line09 color="red">
<xsl:value-of select="format-number($cap-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line04 color="red">
<xsl:value-of select="format-number($cap-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line08 color="red">
<xsl:value-of select="format-number($cap-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line11 color="red">
<xsl:value-of select="format-number($cap-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line13 color="red">
<xsl:value-of select="format-number($cap-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00lineminus1 color="red">
<xsl:value-of select="format-number($cap-Copy00-lineminus1, '#####0')"/>
</copy00lineminus1>

<copy00line03 color="red">
<xsl:value-of select="format-number($cap-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line06 color="red">
<xsl:value-of select="format-number($cap-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line10 color="red">
<xsl:value-of select="format-number($cap-Copy00-line10, '#####0')"/>
</copy00line10>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="CLCWkst-Copy00">
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

<copy00lineailS color="blue">
<xsl:value-of select="$Form1040-Copy00-lineailS"/>
</copy00lineailS>

<copy00lineaSname color="blue">
<xsl:value-of select="$Form1040-Copy00-lineaSname"/>
</copy00lineaSname>

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

<copy00linemodIncome color="red">
<xsl:value-of select="format-number($Form1040-Copy00-linemodIncome, '#####0')"/>
</copy00linemodIncome>

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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1040ssa-Copy00">

<copy00lineBox03 color="red">
<xsl:value-of select="format-number($Form1040ssa-Copy00-lineBox03, '#####0')"/>
</copy00lineBox03>

<copy00lineBox04 color="red">
<xsl:value-of select="format-number($Form1040ssa-Copy00-lineBox04, '#####0')"/>
</copy00lineBox04>

<copy00lineBox06 color="red">
<xsl:value-of select="format-number($Form1040ssa-Copy00-lineBox06, '#####0')"/>
</copy00lineBox06>

<copy00lineBox05 color="red">
<xsl:value-of select="format-number($Form1040ssa-Copy00-lineBox05, '#####0')"/>
</copy00lineBox05>

<copy00lineBox03d1 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d1"/>
</copy00lineBox03d1>

<copy00lineBox03d2 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d2"/>
</copy00lineBox03d2>

<copy00lineBox03d3 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d3"/>
</copy00lineBox03d3>

<copy00lineBox03d4 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d4"/>
</copy00lineBox03d4>

<copy00lineBox03d5 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d5"/>
</copy00lineBox03d5>

<copy00lineBox03d6 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d6"/>
</copy00lineBox03d6>

<copy00lineBox03d7 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d7"/>
</copy00lineBox03d7>

<copy00lineBox03d8 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03d8"/>
</copy00lineBox03d8>

<copy00lineBox03e1 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e1"/>
</copy00lineBox03e1>

<copy00lineBox03e2 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e2"/>
</copy00lineBox03e2>

<copy00lineBox03e3 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e3"/>
</copy00lineBox03e3>

<copy00lineBox03e4 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e4"/>
</copy00lineBox03e4>

<copy00lineBox03e5 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e5"/>
</copy00lineBox03e5>

<copy00lineBox03e7 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox03e7"/>
</copy00lineBox03e7>

<copy00lineBox04d1 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d1"/>
</copy00lineBox04d1>

<copy00lineBox04d2 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d2"/>
</copy00lineBox04d2>

<copy00lineBox04d3 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d3"/>
</copy00lineBox04d3>

<copy00lineBox04d4 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d4"/>
</copy00lineBox04d4>

<copy00lineBox04d5 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d5"/>
</copy00lineBox04d5>

<copy00lineBox04d6 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d6"/>
</copy00lineBox04d6>

<copy00lineBox04d7 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d7"/>
</copy00lineBox04d7>

<copy00lineBox04d8 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04d8"/>
</copy00lineBox04d8>

<copy00lineBox04e1 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e1"/>
</copy00lineBox04e1>

<copy00lineBox04e2 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e2"/>
</copy00lineBox04e2>

<copy00lineBox04e3 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e3"/>
</copy00lineBox04e3>

<copy00lineBox04e4 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e4"/>
</copy00lineBox04e4>

<copy00lineBox04e5 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e5"/>
</copy00lineBox04e5>

<copy00lineBox04e6 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e6"/>
</copy00lineBox04e6>

<copy00lineBox04e7 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e7"/>
</copy00lineBox04e7>

<copy00lineBox04e8 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox04e8"/>
</copy00lineBox04e8>

<copy00lineBox07 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox07"/>
</copy00lineBox07>

<copy00lineBox07a color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox07a"/>
</copy00lineBox07a>

<copy00lineBox07b color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox07b"/>
</copy00lineBox07b>

<copy00lineBox08 color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineBox08"/>
</copy00lineBox08>

<copy00lineTFNI color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$Form1040ssa-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099div-Copy00">

<copy00line01a color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line01a, '#####0')"/>
</copy00line01a>

<copy00line01b color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line01b, '#####0')"/>
</copy00line01b>

<copy00line02a color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line02b color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02b, '#####0')"/>
</copy00line02b>

<copy00line02c color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02c, '#####0')"/>
</copy00line02c>

<copy00line02d color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02d, '#####0')"/>
</copy00line02d>

<copy00line02e color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02e, '#####0')"/>
</copy00line02e>

<copy00line02f color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line02f, '#####0')"/>
</copy00line02f>

<copy00line03 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line07 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line09 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line12 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line16a color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line16a, '#####0')"/>
</copy00line16a>

<copy00line16b color="red">
<xsl:value-of select="format-number($Form1099div-Copy00-line16b, '#####0')"/>
</copy00line16b>

<copy00line08 color="blue">
<xsl:value-of select="$Form1099div-Copy00-line08"/>
</copy00line08>

<copy00line14a color="blue">
<xsl:value-of select="$Form1099div-Copy00-line14a"/>
</copy00line14a>

<copy00line14b color="blue">
<xsl:value-of select="$Form1099div-Copy00-line14b"/>
</copy00line14b>

<copy00line15a color="blue">
<xsl:value-of select="$Form1099div-Copy00-line15a"/>
</copy00line15a>

<copy00line15b color="blue">
<xsl:value-of select="$Form1099div-Copy00-line15b"/>
</copy00line15b>

<copy00line20yr color="blue">
<xsl:value-of select="$Form1099div-Copy00-line20yr"/>
</copy00line20yr>

<copy00line2TIN color="blue">
<xsl:value-of select="$Form1099div-Copy00-line2TIN"/>
</copy00line2TIN>

<copy00lineactNo color="blue">
<xsl:value-of select="$Form1099div-Copy00-lineactNo"/>
</copy00lineactNo>

<copy00linecorr color="blue">
<xsl:value-of select="$Form1099div-Copy00-linecorr"/>
</copy00linecorr>

<copy00lineFATCA color="blue">
<xsl:value-of select="$Form1099div-Copy00-lineFATCA"/>
</copy00lineFATCA>

<copy00linepadd1 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepadd1"/>
</copy00linepadd1>

<copy00linepadd2 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepadd2"/>
</copy00linepadd2>

<copy00linepcity color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepcity"/>
</copy00linepcity>

<copy00linepctry color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepctry"/>
</copy00linepctry>

<copy00linepnam1 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepnam1"/>
</copy00linepnam1>

<copy00linepnam2 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepnam2"/>
</copy00linepnam2>

<copy00linepST color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepST"/>
</copy00linepST>

<copy00lineptel color="blue">
<xsl:value-of select="$Form1099div-Copy00-lineptel"/>
</copy00lineptel>

<copy00linepTIN color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepTIN"/>
</copy00linepTIN>

<copy00linepzip color="blue">
<xsl:value-of select="$Form1099div-Copy00-linepzip"/>
</copy00linepzip>

<copy00lineraddr1 color="blue">
<xsl:value-of select="$Form1099div-Copy00-lineraddr1"/>
</copy00lineraddr1>

<copy00lineraddr2 color="blue">
<xsl:value-of select="$Form1099div-Copy00-lineraddr2"/>
</copy00lineraddr2>

<copy00linercity color="blue">
<xsl:value-of select="$Form1099div-Copy00-linercity"/>
</copy00linercity>

<copy00linerctry color="blue">
<xsl:value-of select="$Form1099div-Copy00-linerctry"/>
</copy00linerctry>

<copy00linername1 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linername1"/>
</copy00linername1>

<copy00linername2 color="blue">
<xsl:value-of select="$Form1099div-Copy00-linername2"/>
</copy00linername2>

<copy00linerST color="blue">
<xsl:value-of select="$Form1099div-Copy00-linerST"/>
</copy00linerST>

<copy00linerTIN color="blue">
<xsl:value-of select="$Form1099div-Copy00-linerTIN"/>
</copy00linerTIN>

<copy00linerzip color="blue">
<xsl:value-of select="$Form1099div-Copy00-linerzip"/>
</copy00linerzip>

<copy00linevoid color="blue">
<xsl:value-of select="$Form1099div-Copy00-linevoid"/>
</copy00linevoid>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099int-Copy00">

<copy00line01 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line09 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line12 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14 color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line17a color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line17a, '#####0')"/>
</copy00line17a>

<copy00line17b color="red">
<xsl:value-of select="format-number($Form1099int-Copy00-line17b, '#####0')"/>
</copy00line17b>

<copy00line07 color="blue">
<xsl:value-of select="$Form1099int-Copy00-line07"/>
</copy00line07>

<copy00line15a color="blue">
<xsl:value-of select="$Form1099int-Copy00-line15a"/>
</copy00line15a>

<copy00line15b color="blue">
<xsl:value-of select="$Form1099int-Copy00-line15b"/>
</copy00line15b>

<copy00line16a color="blue">
<xsl:value-of select="$Form1099int-Copy00-line16a"/>
</copy00line16a>

<copy00line16b color="blue">
<xsl:value-of select="$Form1099int-Copy00-line16b"/>
</copy00line16b>

<copy00line20yr color="blue">
<xsl:value-of select="$Form1099int-Copy00-line20yr"/>
</copy00line20yr>

<copy00line2TIN color="blue">
<xsl:value-of select="$Form1099int-Copy00-line2TIN"/>
</copy00line2TIN>

<copy00lineactNo color="blue">
<xsl:value-of select="$Form1099int-Copy00-lineactNo"/>
</copy00lineactNo>

<copy00linecorr color="blue">
<xsl:value-of select="$Form1099int-Copy00-linecorr"/>
</copy00linecorr>

<copy00lineFATCA color="blue">
<xsl:value-of select="$Form1099int-Copy00-lineFATCA"/>
</copy00lineFATCA>

<copy00linepadd1 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepadd1"/>
</copy00linepadd1>

<copy00linepadd2 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepadd2"/>
</copy00linepadd2>

<copy00linepcity color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepcity"/>
</copy00linepcity>

<copy00linepcnty color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepcnty"/>
</copy00linepcnty>

<copy00linepctry color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepctry"/>
</copy00linepctry>

<copy00linepnam1 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepnam1"/>
</copy00linepnam1>

<copy00linepnam2 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepnam2"/>
</copy00linepnam2>

<copy00linepRTN color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepRTN"/>
</copy00linepRTN>

<copy00linepST color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepST"/>
</copy00linepST>

<copy00lineptel color="blue">
<xsl:value-of select="$Form1099int-Copy00-lineptel"/>
</copy00lineptel>

<copy00linepTIN color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepTIN"/>
</copy00linepTIN>

<copy00linepzip color="blue">
<xsl:value-of select="$Form1099int-Copy00-linepzip"/>
</copy00linepzip>

<copy00lineradd1 color="blue">
<xsl:value-of select="$Form1099int-Copy00-lineradd1"/>
</copy00lineradd1>

<copy00lineradd2 color="blue">
<xsl:value-of select="$Form1099int-Copy00-lineradd2"/>
</copy00lineradd2>

<copy00linercity color="blue">
<xsl:value-of select="$Form1099int-Copy00-linercity"/>
</copy00linercity>

<copy00linercnty color="blue">
<xsl:value-of select="$Form1099int-Copy00-linercnty"/>
</copy00linercnty>

<copy00linerctry color="blue">
<xsl:value-of select="$Form1099int-Copy00-linerctry"/>
</copy00linerctry>

<copy00linernam1 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linernam1"/>
</copy00linernam1>

<copy00linernam2 color="blue">
<xsl:value-of select="$Form1099int-Copy00-linernam2"/>
</copy00linernam2>

<copy00linerST color="blue">
<xsl:value-of select="$Form1099int-Copy00-linerST"/>
</copy00linerST>

<copy00linerTIN color="blue">
<xsl:value-of select="$Form1099int-Copy00-linerTIN"/>
</copy00linerTIN>

<copy00linerzip color="blue">
<xsl:value-of select="$Form1099int-Copy00-linerzip"/>
</copy00linerzip>

<copy00linevoid color="blue">
<xsl:value-of select="$Form1099int-Copy00-linevoid"/>
</copy00linevoid>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099r-Copy00">

<copy00line01 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02a color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line03 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line09a color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line09a, '#####0')"/>
</copy00line09a>

<copy00line09b color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line09b, '#####0')"/>
</copy00line09b>

<copy00line10 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line13 color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14a color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line14a, '#####0')"/>
</copy00line14a>

<copy00line14b color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line14b, '#####0')"/>
</copy00line14b>

<copy00line16a color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line16a, '#####0')"/>
</copy00line16a>

<copy00line16b color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line16b, '#####0')"/>
</copy00line16b>

<copy00line17b color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line17b, '#####0')"/>
</copy00line17b>

<copy00line19a color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line19a, '#####0')"/>
</copy00line19a>

<copy00line19b color="red">
<xsl:value-of select="format-number($Form1099r-Copy00-line19b, '#####0')"/>
</copy00line19b>

<copy00line02b1 color="blue">
<xsl:value-of select="$Form1099r-Copy00-line02b1"/>
</copy00line02b1>

<copy00line02b2 color="blue">
<xsl:value-of select="$Form1099r-Copy00-line02b2"/>
</copy00line02b2>

<copy00line07 color="blue">
<xsl:value-of select="$Form1099r-Copy00-line07"/>
</copy00line07>

<copy00line17a color="blue">
<xsl:value-of select="$Form1099r-Copy00-line17a"/>
</copy00line17a>

<copy00line07a color="blue">
<xsl:value-of select="$Form1099r-Copy00-line07a"/>
</copy00line07a>

<copy00line08pct color="blue">
<xsl:value-of select="$Form1099r-Copy00-line08pct"/>
</copy00line08pct>

<copy00line12Ck color="blue">
<xsl:value-of select="$Form1099r-Copy00-line12Ck"/>
</copy00line12Ck>

<copy00line15a color="blue">
<xsl:value-of select="$Form1099r-Copy00-line15a"/>
</copy00line15a>

<copy00line15b color="blue">
<xsl:value-of select="$Form1099r-Copy00-line15b"/>
</copy00line15b>

<copy00line18a color="blue">
<xsl:value-of select="$Form1099r-Copy00-line18a"/>
</copy00line18a>

<copy00line18b color="blue">
<xsl:value-of select="$Form1099r-Copy00-line18b"/>
</copy00line18b>

<copy00lineacctNo color="blue">
<xsl:value-of select="$Form1099r-Copy00-lineacctNo"/>
</copy00lineacctNo>

<copy00linecorr color="blue">
<xsl:value-of select="$Form1099r-Copy00-linecorr"/>
</copy00linecorr>

<copy00linepaddr1 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepaddr1"/>
</copy00linepaddr1>

<copy00linepaddr2 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepaddr2"/>
</copy00linepaddr2>

<copy00linepcity color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepcity"/>
</copy00linepcity>

<copy00linepCntry color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepCntry"/>
</copy00linepCntry>

<copy00linepname1 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepname1"/>
</copy00linepname1>

<copy00linepname2 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepname2"/>
</copy00linepname2>

<copy00linepST color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepST"/>
</copy00linepST>

<copy00lineptel color="blue">
<xsl:value-of select="$Form1099r-Copy00-lineptel"/>
</copy00lineptel>

<copy00linepTIN color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepTIN"/>
</copy00linepTIN>

<copy00linepzip color="blue">
<xsl:value-of select="$Form1099r-Copy00-linepzip"/>
</copy00linepzip>

<copy00lineraddr1 color="blue">
<xsl:value-of select="$Form1099r-Copy00-lineraddr1"/>
</copy00lineraddr1>

<copy00lineraddr2 color="blue">
<xsl:value-of select="$Form1099r-Copy00-lineraddr2"/>
</copy00lineraddr2>

<copy00linercity color="blue">
<xsl:value-of select="$Form1099r-Copy00-linercity"/>
</copy00linercity>

<copy00linerCntry color="blue">
<xsl:value-of select="$Form1099r-Copy00-linerCntry"/>
</copy00linerCntry>

<copy00linername1 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linername1"/>
</copy00linername1>

<copy00linername2 color="blue">
<xsl:value-of select="$Form1099r-Copy00-linername2"/>
</copy00linername2>

<copy00linerST color="blue">
<xsl:value-of select="$Form1099r-Copy00-linerST"/>
</copy00linerST>

<copy00linerTIN color="blue">
<xsl:value-of select="$Form1099r-Copy00-linerTIN"/>
</copy00linerTIN>

<copy00linerzip color="blue">
<xsl:value-of select="$Form1099r-Copy00-linerzip"/>
</copy00linerzip>

<copy00linevoid color="blue">
<xsl:value-of select="$Form1099r-Copy00-linevoid"/>
</copy00linevoid>
</Form>
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

<copy00linebal color="red">
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
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form4952-Copy00">

<copy00line03 color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04h color="red">
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

<copy00line04e color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line04e, '#####0')"/>
</copy00line04e>

<copy00line04g color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line04g, '#####0')"/>
</copy00line04g>

<copy00line05 color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line08 color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line06 color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line07 color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line04c color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line04c, '#####0')"/>
</copy00line04c>

<copy00line04f color="red">
<xsl:value-of select="format-number($Form4952-Copy00-line04f, '#####0')"/>
</copy00line04f>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="QDCGaTaxWkst-Copy00">

<copy00line04 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line15 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line19 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line23 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line01 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02a color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line15D color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line15D, '#####0')"/>
</copy00line15D>

<copy00line16D color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line16D, '#####0')"/>
</copy00line16D>

<copy00line10407 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line10407, '#####0')"/>
</copy00line10407>

<copy00lineFS color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-lineFS, '#####0')"/>
</copy00lineFS>

<copy00lineFEI3 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-lineFEI3, '#####0')"/>
</copy00lineFEI3>

<copy00line104015 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line104015, '#####0')"/>
</copy00line104015>

<copy00lineQDCG04 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-lineQDCG04, '#####0')"/>
</copy00lineQDCG04>

<copy00line11 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00linep15 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-linep15, '#####0')"/>
</copy00linep15>

<copy00linep20 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-linep20, '#####0')"/>
</copy00linep20>

<copy00line18 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line21 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line07 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line10 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line14 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line17 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line25 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line25, '#####0')"/>
</copy00line25>

<copy00line05 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line16 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00line03 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00lineunusedcge color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-lineunusedcge, '#####0')"/>
</copy00lineunusedcge>

<copy00line02 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line09 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line12 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line20 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line03a color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line03a, '#####0')"/>
</copy00line03a>

<copy00line03y color="blue">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line03y"/>
</copy00line03y>

<copy00line03n color="blue">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line03n"/>
</copy00line03n>

<copy00line06 color="blue">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line06"/>
</copy00line06>

<copy00line13 color="blue">
<xsl:value-of select="$QDCGaTaxWkst-Copy00-line13"/>
</copy00line13>

<copy00line22 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line22, '#####0')"/>
</copy00line22>

<copy00line24 color="red">
<xsl:value-of select="format-number($QDCGaTaxWkst-Copy00-line24, '#####0')"/>
</copy00line24>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="QDCGTaxWkst-Copy00">

<copy00line04 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line15 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line19 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line23 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line02 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line15D color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line15D, '#####0')"/>
</copy00line15D>

<copy00line16D color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line16D, '#####0')"/>
</copy00line16D>

<copy00line10407 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line10407, '#####0')"/>
</copy00line10407>

<copy00lineFS color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-lineFS, '#####0')"/>
</copy00lineFS>

<copy00lineFEI3 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-lineFEI3, '#####0')"/>
</copy00lineFEI3>

<copy00line104015 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line104015, '#####0')"/>
</copy00line104015>

<copy00line11 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00linep15 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-linep15, '#####0')"/>
</copy00linep15>

<copy00linep20 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-linep20, '#####0')"/>
</copy00linep20>

<copy00line18 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line21 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line07 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line10 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line14 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line17 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line25 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line25, '#####0')"/>
</copy00line25>

<copy00line05 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line16 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00lineunusedcge color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-lineunusedcge, '#####0')"/>
</copy00lineunusedcge>

<copy00line09 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line12 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line20 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line01 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line03 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line03y color="blue">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line03y"/>
</copy00line03y>

<copy00line03n color="blue">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line03n"/>
</copy00line03n>

<copy00line06 color="blue">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line06"/>
</copy00line06>

<copy00line13 color="blue">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line13"/>
</copy00line13>

<copy00line22 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line22, '#####0')"/>
</copy00line22>

<copy00line24 color="red">
<xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line24, '#####0')"/>
</copy00line24>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched1-Copy00">

<copy00line09 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line25 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line25, '#####0')"/>
</copy00line25>

<copy00line26 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line26, '#####0')"/>
</copy00line26>

<copy00line1099K color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line1099K, '#####0')"/>
</copy00line1099K>

<copy00line01 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line07 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08a, '#####0')"/>
</copy00line08a>

<copy00line08b color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08b, '#####0')"/>
</copy00line08b>

<copy00line08c color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08c, '#####0')"/>
</copy00line08c>

<copy00line08g color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08g, '#####0')"/>
</copy00line08g>

<copy00line08h color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08h, '#####0')"/>
</copy00line08h>

<copy00line08i color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08i, '#####0')"/>
</copy00line08i>

<copy00line08j color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08j, '#####0')"/>
</copy00line08j>

<copy00line08k color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08k, '#####0')"/>
</copy00line08k>

<copy00line08l color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08l, '#####0')"/>
</copy00line08l>

<copy00line08m color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08m, '#####0')"/>
</copy00line08m>

<copy00line08n color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08n, '#####0')"/>
</copy00line08n>

<copy00line08o color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08o, '#####0')"/>
</copy00line08o>

<copy00line08p color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08p, '#####0')"/>
</copy00line08p>

<copy00line08q color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08q, '#####0')"/>
</copy00line08q>

<copy00line08r color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08r, '#####0')"/>
</copy00line08r>

<copy00line08s color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08s, '#####0')"/>
</copy00line08s>

<copy00line08t color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08t, '#####0')"/>
</copy00line08t>

<copy00line08u color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08u, '#####0')"/>
</copy00line08u>

<copy00line08v color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08v, '#####0')"/>
</copy00line08v>

<copy00line08z color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08z, '#####0')"/>
</copy00line08z>

<copy00line11 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line16 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line17 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line18 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line19a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line19a, '#####0')"/>
</copy00line19a>

<copy00line20 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line21 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line23 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line24a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24a, '#####0')"/>
</copy00line24a>

<copy00line24b color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24b, '#####0')"/>
</copy00line24b>

<copy00line24c color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24c, '#####0')"/>
</copy00line24c>

<copy00line24d color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24d, '#####0')"/>
</copy00line24d>

<copy00line24e color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24e, '#####0')"/>
</copy00line24e>

<copy00line24f color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24f, '#####0')"/>
</copy00line24f>

<copy00line24g color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24g, '#####0')"/>
</copy00line24g>

<copy00line24h color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24h, '#####0')"/>
</copy00line24h>

<copy00line24i color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24i, '#####0')"/>
</copy00line24i>

<copy00line24k color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24k, '#####0')"/>
</copy00line24k>

<copy00line24z color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24z, '#####0')"/>
</copy00line24z>

<copy00line03 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08d color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08d, '#####0')"/>
</copy00line08d>

<copy00line08e color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08e, '#####0')"/>
</copy00line08e>

<copy00line08f color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08f, '#####0')"/>
</copy00line08f>

<copy00line12 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line15 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line24j color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24j, '#####0')"/>
</copy00line24j>

<copy00line02b color="blue">
<xsl:value-of select="$Sched1-Copy00-line02b"/>
</copy00line02b>

<copy00line08za color="blue">
<xsl:value-of select="$Sched1-Copy00-line08za"/>
</copy00line08za>

<copy00line08zb color="blue">
<xsl:value-of select="$Sched1-Copy00-line08zb"/>
</copy00line08zb>

<copy00line19b1 color="blue">
<xsl:value-of select="$Sched1-Copy00-line19b1"/>
</copy00line19b1>

<copy00line19b2 color="blue">
<xsl:value-of select="$Sched1-Copy00-line19b2"/>
</copy00line19b2>

<copy00line24za color="blue">
<xsl:value-of select="$Sched1-Copy00-line24za"/>
</copy00line24za>

<copy00line24zb color="blue">
<xsl:value-of select="$Sched1-Copy00-line24zb"/>
</copy00line24zb>

<copy00lineSFNI color="blue">
<xsl:value-of select="$Sched1-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$Sched1-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched2-Copy00">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched3-Copy00">

<copy00line07 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line14 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line15 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line06z color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06z, '#####0')"/>
</copy00line06z>

<copy00line11 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line13b color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line13b, '#####0')"/>
</copy00line13b>

<copy00line13z color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line13z, '#####0')"/>
</copy00line13z>

<copy00line01 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05a color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line05a, '#####0')"/>
</copy00line05a>

<copy00line05b color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line05b, '#####0')"/>
</copy00line05b>

<copy00line06a color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06a, '#####0')"/>
</copy00line06a>

<copy00line06b color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06b, '#####0')"/>
</copy00line06b>

<copy00line06c color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06c, '#####0')"/>
</copy00line06c>

<copy00line06d color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06d, '#####0')"/>
</copy00line06d>

<copy00line06f color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06f, '#####0')"/>
</copy00line06f>

<copy00line06g color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06g, '#####0')"/>
</copy00line06g>

<copy00line06h color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06h, '#####0')"/>
</copy00line06h>

<copy00line06i color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06i, '#####0')"/>
</copy00line06i>

<copy00line06j color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06j, '#####0')"/>
</copy00line06j>

<copy00line06k color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06k, '#####0')"/>
</copy00line06k>

<copy00line06l color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06l, '#####0')"/>
</copy00line06l>

<copy00line06m color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line06m, '#####0')"/>
</copy00line06m>

<copy00line09 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line12 color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13a color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line13a, '#####0')"/>
</copy00line13a>

<copy00line13c color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line13c, '#####0')"/>
</copy00line13c>

<copy00line13d color="red">
<xsl:value-of select="format-number($Sched3-Copy00-line13d, '#####0')"/>
</copy00line13d>

<copy00line06line color="blue">
<xsl:value-of select="$Sched3-Copy00-line06line"/>
</copy00line06line>

<copy00line13zline color="blue">
<xsl:value-of select="$Sched3-Copy00-line13zline"/>
</copy00line13zline>

<copy00lineSFNI color="blue">
<xsl:value-of select="$Sched3-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$Sched3-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$Sched3-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$Sched3-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$Sched3-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNol color="blue">
<xsl:value-of select="$Sched3-Copy00-lineTSSNol"/>
</copy00lineTSSNol>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$Sched3-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>
</Form>
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

<copy00lineminus1 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-lineminus1, '#####0')"/>
</copy00lineminus1>

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

<copy00line11a color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line11a, '#####0')"/>
</copy00line11a>

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

<copy00line11 color="red">
<xsl:value-of select="format-number($SchedA-Copy00-line11, '#####0')"/>
</copy00line11>

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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedB-Copy00">

<copy00line02 color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line06 color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00lineexempt color="red">
<xsl:value-of select="format-number($SchedB-Copy00-lineexempt, '#####0')"/>
</copy00lineexempt>

<copy00linequal color="red">
<xsl:value-of select="format-number($SchedB-Copy00-linequal, '#####0')"/>
</copy00linequal>

<copy00line01ad color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01ad, '#####0')"/>
</copy00line01ad>

<copy00line01bd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01bd, '#####0')"/>
</copy00line01bd>

<copy00line01cd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01cd, '#####0')"/>
</copy00line01cd>

<copy00line01dd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01dd, '#####0')"/>
</copy00line01dd>

<copy00line01ed color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01ed, '#####0')"/>
</copy00line01ed>

<copy00line01fd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01fd, '#####0')"/>
</copy00line01fd>

<copy00line01gd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01gd, '#####0')"/>
</copy00line01gd>

<copy00line01hd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01hd, '#####0')"/>
</copy00line01hd>

<copy00line01id color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01id, '#####0')"/>
</copy00line01id>

<copy00line01jd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01jd, '#####0')"/>
</copy00line01jd>

<copy00line01kd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01kd, '#####0')"/>
</copy00line01kd>

<copy00line01ld color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01ld, '#####0')"/>
</copy00line01ld>

<copy00line01md color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01md, '#####0')"/>
</copy00line01md>

<copy00line01nd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01nd, '#####0')"/>
</copy00line01nd>

<copy00line03 color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line05ad color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ad, '#####0')"/>
</copy00line05ad>

<copy00line05bd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05bd, '#####0')"/>
</copy00line05bd>

<copy00line05cd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05cd, '#####0')"/>
</copy00line05cd>

<copy00line05dd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05dd, '#####0')"/>
</copy00line05dd>

<copy00line05ed color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ed, '#####0')"/>
</copy00line05ed>

<copy00line05fd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05fd, '#####0')"/>
</copy00line05fd>

<copy00line05gd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05gd, '#####0')"/>
</copy00line05gd>

<copy00line05hd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05hd, '#####0')"/>
</copy00line05hd>

<copy00line05id color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05id, '#####0')"/>
</copy00line05id>

<copy00line05jd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05jd, '#####0')"/>
</copy00line05jd>

<copy00line05kd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05kd, '#####0')"/>
</copy00line05kd>

<copy00line05ld color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ld, '#####0')"/>
</copy00line05ld>

<copy00line05md color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05md, '#####0')"/>
</copy00line05md>

<copy00line05nd color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05nd, '#####0')"/>
</copy00line05nd>

<copy00line01aint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01aint, '#####0')"/>
</copy00line01aint>

<copy00line01bint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01bint, '#####0')"/>
</copy00line01bint>

<copy00line01cint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01cint, '#####0')"/>
</copy00line01cint>

<copy00line01dint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01dint, '#####0')"/>
</copy00line01dint>

<copy00line01eint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01eint, '#####0')"/>
</copy00line01eint>

<copy00line01fint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01fint, '#####0')"/>
</copy00line01fint>

<copy00line01gint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01gint, '#####0')"/>
</copy00line01gint>

<copy00line01hint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01hint, '#####0')"/>
</copy00line01hint>

<copy00line01iint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01iint, '#####0')"/>
</copy00line01iint>

<copy00line01jint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01jint, '#####0')"/>
</copy00line01jint>

<copy00line01kint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01kint, '#####0')"/>
</copy00line01kint>

<copy00line01lint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01lint, '#####0')"/>
</copy00line01lint>

<copy00line01mint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01mint, '#####0')"/>
</copy00line01mint>

<copy00line01nint color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line01nint, '#####0')"/>
</copy00line01nint>

<copy00line05adiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05adiv, '#####0')"/>
</copy00line05adiv>

<copy00line05bdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05bdiv, '#####0')"/>
</copy00line05bdiv>

<copy00line05cdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05cdiv, '#####0')"/>
</copy00line05cdiv>

<copy00line05ddiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ddiv, '#####0')"/>
</copy00line05ddiv>

<copy00line05ediv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ediv, '#####0')"/>
</copy00line05ediv>

<copy00line05fdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05fdiv, '#####0')"/>
</copy00line05fdiv>

<copy00line05gdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05gdiv, '#####0')"/>
</copy00line05gdiv>

<copy00line05hdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05hdiv, '#####0')"/>
</copy00line05hdiv>

<copy00line05idiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05idiv, '#####0')"/>
</copy00line05idiv>

<copy00line05jdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05jdiv, '#####0')"/>
</copy00line05jdiv>

<copy00line05kdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05kdiv, '#####0')"/>
</copy00line05kdiv>

<copy00line05ldiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ldiv, '#####0')"/>
</copy00line05ldiv>

<copy00line05mdiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05mdiv, '#####0')"/>
</copy00line05mdiv>

<copy00line05ndiv color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line05ndiv, '#####0')"/>
</copy00line05ndiv>

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedB-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line07a1n color="blue">
<xsl:value-of select="$SchedB-Copy00-line07a1n"/>
</copy00line07a1n>

<copy00line07a1y color="blue">
<xsl:value-of select="$SchedB-Copy00-line07a1y"/>
</copy00line07a1y>

<copy00line07a2n color="blue">
<xsl:value-of select="$SchedB-Copy00-line07a2n"/>
</copy00line07a2n>

<copy00line07a2y color="blue">
<xsl:value-of select="$SchedB-Copy00-line07a2y"/>
</copy00line07a2y>

<copy00line07b color="blue">
<xsl:value-of select="$SchedB-Copy00-line07b"/>
</copy00line07b>

<copy00line08n color="blue">
<xsl:value-of select="$SchedB-Copy00-line08n"/>
</copy00line08n>

<copy00line08y color="blue">
<xsl:value-of select="$SchedB-Copy00-line08y"/>
</copy00line08y>

<copy00line01at color="blue">
<xsl:value-of select="$SchedB-Copy00-line01at"/>
</copy00line01at>

<copy00line01bt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01bt"/>
</copy00line01bt>

<copy00line01ct color="blue">
<xsl:value-of select="$SchedB-Copy00-line01ct"/>
</copy00line01ct>

<copy00line01dt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01dt"/>
</copy00line01dt>

<copy00line01et color="blue">
<xsl:value-of select="$SchedB-Copy00-line01et"/>
</copy00line01et>

<copy00line01ft color="blue">
<xsl:value-of select="$SchedB-Copy00-line01ft"/>
</copy00line01ft>

<copy00line01gt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01gt"/>
</copy00line01gt>

<copy00line01ht color="blue">
<xsl:value-of select="$SchedB-Copy00-line01ht"/>
</copy00line01ht>

<copy00line01it color="blue">
<xsl:value-of select="$SchedB-Copy00-line01it"/>
</copy00line01it>

<copy00line01jt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01jt"/>
</copy00line01jt>

<copy00line01kt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01kt"/>
</copy00line01kt>

<copy00line01lt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01lt"/>
</copy00line01lt>

<copy00line01mt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01mt"/>
</copy00line01mt>

<copy00line01nt color="blue">
<xsl:value-of select="$SchedB-Copy00-line01nt"/>
</copy00line01nt>

<copy00line05at color="blue">
<xsl:value-of select="$SchedB-Copy00-line05at"/>
</copy00line05at>

<copy00line05bt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05bt"/>
</copy00line05bt>

<copy00line05ct color="blue">
<xsl:value-of select="$SchedB-Copy00-line05ct"/>
</copy00line05ct>

<copy00line05dt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05dt"/>
</copy00line05dt>

<copy00line05et color="blue">
<xsl:value-of select="$SchedB-Copy00-line05et"/>
</copy00line05et>

<copy00line05ft color="blue">
<xsl:value-of select="$SchedB-Copy00-line05ft"/>
</copy00line05ft>

<copy00line05gt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05gt"/>
</copy00line05gt>

<copy00line05ht color="blue">
<xsl:value-of select="$SchedB-Copy00-line05ht"/>
</copy00line05ht>

<copy00line05it color="blue">
<xsl:value-of select="$SchedB-Copy00-line05it"/>
</copy00line05it>

<copy00line05jt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05jt"/>
</copy00line05jt>

<copy00line05kt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05kt"/>
</copy00line05kt>

<copy00line05lt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05lt"/>
</copy00line05lt>

<copy00line05mt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05mt"/>
</copy00line05mt>

<copy00line05nt color="blue">
<xsl:value-of select="$SchedB-Copy00-line05nt"/>
</copy00line05nt>

<copy00lineSFNI color="blue">
<xsl:value-of select="$SchedB-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$SchedB-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$SchedB-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$SchedB-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$SchedB-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$SchedB-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$SchedB-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedC-Copy00">

<copy00line07 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line28 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line28, '#####0')"/>
</copy00line28>

<copy00line40 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line40, '#####0')"/>
</copy00line40>

<copy00line48 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line48, '#####0')"/>
</copy00line48>

<copy00line01 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line02, '#####0')"/>
</copy00line02>

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

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line27a color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line27a, '#####0')"/>
</copy00line27a>

<copy00line27b color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line27b, '#####0')"/>
</copy00line27b>

<copy00line03 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line05 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line29 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line29, '#####0')"/>
</copy00line29>

<copy00line31 color="red">
<xsl:value-of select="format-number($SchedC-Copy00-line31, '#####0')"/>
</copy00line31>

<copy00line42 color="red">
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
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedDaTaxWkst-Copy00">

<copy00line10 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line28a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line28a, '#####0')"/>
</copy00line28a>

<copy00line32a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line32a, '#####0')"/>
</copy00line32a>

<copy00line36a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line36a, '#####0')"/>
</copy00line36a>

<copy00line41a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line41a, '#####0')"/>
</copy00line41a>

<copy00line45 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line45, '#####0')"/>
</copy00line45>

<copy00line215 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line215, '#####0')"/>
</copy00line215>

<copy00line220 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line220, '#####0')"/>
</copy00line220>

<copy00line225 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line225, '#####0')"/>
</copy00line225>

<copy00line228 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line228, '#####0')"/>
</copy00line228>

<copy00line01 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00lineSchedDT10 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-lineSchedDT10, '#####0')"/>
</copy00lineSchedDT10>

<copy00line115 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line115, '#####0')"/>
</copy00line115>

<copy00line116 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line116, '#####0')"/>
</copy00line116>

<copy00line118 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line118, '#####0')"/>
</copy00line118>

<copy00line119 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line119, '#####0')"/>
</copy00line119>

<copy00line104015 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line104015, '#####0')"/>
</copy00line104015>

<copy00lineFS color="blue">
<xsl:value-of select="$SchedDaTaxWkst-Copy00-lineFS"/>
</copy00lineFS>

<copy00line31a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line31a, '#####0')"/>
</copy00line31a>

<copy00line34a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line34a, '#####0')"/>
</copy00line34a>

<copy00line40a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line40a, '#####0')"/>
</copy00line40a>

<copy00line43a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line43a, '#####0')"/>
</copy00line43a>

<copy00line21 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line07 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line12 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line16 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line17 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line19 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line20 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line23a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line23a, '#####0')"/>
</copy00line23a>

<copy00line27a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line27a, '#####0')"/>
</copy00line27a>

<copy00line30a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line30a, '#####0')"/>
</copy00line30a>

<copy00line35a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line35a, '#####0')"/>
</copy00line35a>

<copy00line47 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line47, '#####0')"/>
</copy00line47>

<copy00line05 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line06a, '#####0')"/>
</copy00line06a>

<copy00line09a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line09a, '#####0')"/>
</copy00line09a>

<copy00line14 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line18 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line25a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line25a, '#####0')"/>
</copy00line25a>

<copy00line29a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line29a, '#####0')"/>
</copy00line29a>

<copy00line38a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line38a, '#####0')"/>
</copy00line38a>

<copy00line39a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line39a, '#####0')"/>
</copy00line39a>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00line09 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00lineunusedcge color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-lineunusedcge, '#####0')"/>
</copy00lineunusedcge>

<copy00line06 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line13 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line22 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line22, '#####0')"/>
</copy00line22>

<copy00line33a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line33a, '#####0')"/>
</copy00line33a>

<copy00line42a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line42a, '#####0')"/>
</copy00line42a>

<copy00line15 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line19a color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line19a, '#####0')"/>
</copy00line19a>

<copy00line23 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line24 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line24, '#####0')"/>
</copy00line24>

<copy00line25 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line25, '#####0')"/>
</copy00line25>

<copy00line26 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line26, '#####0')"/>
</copy00line26>

<copy00line27 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line27, '#####0')"/>
</copy00line27>

<copy00line28 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line28, '#####0')"/>
</copy00line28>

<copy00line29 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line29, '#####0')"/>
</copy00line29>

<copy00line30 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line30, '#####0')"/>
</copy00line30>

<copy00line31 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line31, '#####0')"/>
</copy00line31>

<copy00line32 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line32, '#####0')"/>
</copy00line32>

<copy00line33 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line33, '#####0')"/>
</copy00line33>

<copy00line34 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line34, '#####0')"/>
</copy00line34>

<copy00line35 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line35, '#####0')"/>
</copy00line35>

<copy00line36 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line36, '#####0')"/>
</copy00line36>

<copy00line37 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line37, '#####0')"/>
</copy00line37>

<copy00line38 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line38, '#####0')"/>
</copy00line38>

<copy00line39 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line39, '#####0')"/>
</copy00line39>

<copy00line40 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line40, '#####0')"/>
</copy00line40>

<copy00line41 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line41, '#####0')"/>
</copy00line41>

<copy00line42 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line42, '#####0')"/>
</copy00line42>

<copy00line43 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line43, '#####0')"/>
</copy00line43>

<copy00line44 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line44, '#####0')"/>
</copy00line44>

<copy00line46 color="red">
<xsl:value-of select="format-number($SchedDaTaxWkst-Copy00-line46, '#####0')"/>
</copy00line46>
</Form>
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

<copy00line14 color="red">
<xsl:value-of select="format-number($SchedD-Copy00-line14, '#####0')"/>
</copy00line14>

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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedDTaxWkst-Copy00">

<copy00line10 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line28a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line28a, '#####0')"/>
</copy00line28a>

<copy00line32a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line32a, '#####0')"/>
</copy00line32a>

<copy00line36a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36a, '#####0')"/>
</copy00line36a>

<copy00line41a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41a, '#####0')"/>
</copy00line41a>

<copy00line45 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line45, '#####0')"/>
</copy00line45>

<copy00line215 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line215, '#####0')"/>
</copy00line215>

<copy00line220 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line220, '#####0')"/>
</copy00line220>

<copy00line225 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line225, '#####0')"/>
</copy00line225>

<copy00line228 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line228, '#####0')"/>
</copy00line228>

<copy00line01 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line115 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line115, '#####0')"/>
</copy00line115>

<copy00line116 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line116, '#####0')"/>
</copy00line116>

<copy00line118 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line118, '#####0')"/>
</copy00line118>

<copy00line119 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line119, '#####0')"/>
</copy00line119>

<copy00line104015 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line104015, '#####0')"/>
</copy00line104015>

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

<copy00line21 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line07 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line12 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line16 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line17 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line19 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19, '#####0')"/>
</copy00line19>

<copy00line20 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line23a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23a, '#####0')"/>
</copy00line23a>

<copy00line27a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line27a, '#####0')"/>
</copy00line27a>

<copy00line30a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line30a, '#####0')"/>
</copy00line30a>

<copy00line35a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35a, '#####0')"/>
</copy00line35a>

<copy00line47 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line47, '#####0')"/>
</copy00line47>

<copy00line05 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line09 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line14 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line18 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line25a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25a, '#####0')"/>
</copy00line25a>

<copy00line29a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line29a, '#####0')"/>
</copy00line29a>

<copy00line38a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38a, '#####0')"/>
</copy00line38a>

<copy00line39a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39a, '#####0')"/>
</copy00line39a>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00line13 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line22 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line22, '#####0')"/>
</copy00line22>

<copy00line33a color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33a, '#####0')"/>
</copy00line33a>

<copy00line42a color="red">
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

<copy00line44 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line44, '#####0')"/>
</copy00line44>

<copy00line46 color="red">
<xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line46, '#####0')"/>
</copy00line46>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedF-Copy00">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedH-Copy00">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedSE-Copy00">
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SST-Copy00">

<copy00line05 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line03 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line50 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line50, '#0.00#')"/>
  </copy00line50>


<copy00line85 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line85, '#0.00#')"/>
  </copy00line85>


<copy00line00 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line00, '#####0')"/>
  </copy00line00>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line01z1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line01z1040, '#####0')"/>
  </copy00line01z1040>


<copy00line02b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line02b1040, '#####0')"/>
  </copy00line02b1040>


<copy00line03b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line03b1040, '#####0')"/>
  </copy00line03b1040>


<copy00line04b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line04b1040, '#####0')"/>
  </copy00line04b1040>


<copy00line05b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line05b1040, '#####0')"/>
  </copy00line05b1040>


<copy00line071040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line071040, '#####0')"/>
  </copy00line071040>


<copy00line081040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line081040, '#####0')"/>
  </copy00line081040>


<copy00line11s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line11s1, '#####0')"/>
  </copy00line11s1>


<copy00line12s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line12s1, '#####0')"/>
  </copy00line12s1>


<copy00line13s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line13s1, '#####0')"/>
  </copy00line13s1>


<copy00line14s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line14s1, '#####0')"/>
  </copy00line14s1>


<copy00line15s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line15s1, '#####0')"/>
  </copy00line15s1>


<copy00line16s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line16s1, '#####0')"/>
  </copy00line16s1>


<copy00line17s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line17s1, '#####0')"/>
  </copy00line17s1>


<copy00line18s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line18s1, '#####0')"/>
  </copy00line18s1>


<copy00line19as1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line19as1, '#####0')"/>
  </copy00line19as1>


<copy00line20s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line20s1, '#####0')"/>
  </copy00line20s1>


<copy00line23s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line23s1, '#####0')"/>
  </copy00line23s1>


<copy00line25s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line25s1, '#####0')"/>
  </copy00line25s1>


<copy00lineFS color="blue">
    <xsl:value-of select="$SST-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineApart color="blue">
    <xsl:value-of select="$SST-Copy00-lineApart"/>
    </copy00lineApart>
  

<copy00line02 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line12a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line12a, '#####0')"/>
  </copy00line12a>


<copy00line14a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line14a, '#####0')"/>
  </copy00line14a>


<copy00line18a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line18a, '#####0')"/>
  </copy00line18a>


<copy00line11a color="cyan">
  <xsl:value-of select="format-number($SST-Copy00-line11a, '#####0')"/>
  </copy00line11a>


<copy00line07 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line09 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line14 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line16 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line17 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line18 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line07n color="blue">
    <xsl:value-of select="$SST-Copy00-line07n"/>
    </copy00line07n>
  

<copy00line07y color="blue">
    <xsl:value-of select="$SST-Copy00-line07y"/>
    </copy00line07y>
  

<copy00line09n color="blue">
    <xsl:value-of select="$SST-Copy00-line09n"/>
    </copy00line09n>
  

<copy00line09y color="blue">
    <xsl:value-of select="$SST-Copy00-line09y"/>
    </copy00line09y>
  
</Form><!--

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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="UG1250Wkst-Copy00">

<copy00line06 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line16 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line01 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line04 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line08 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line10 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line12 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line15 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line16a color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line16a, '#####0')"/>
</copy00line16a>

<copy00line479707 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line479707, '#####0')"/>
</copy00line479707>

<copy00linecgexcess color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-linecgexcess, '#####0')"/>
</copy00linecgexcess>

<copy00line07 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line09 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line18 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line03 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line17 color="red">
<xsl:value-of select="format-number($UG1250Wkst-Copy00-line17, '#####0')"/>
</copy00line17>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="w2-Copy00">

<copy00line01 color="red">
<xsl:value-of select="format-number($w2-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02 color="red">
<xsl:value-of select="format-number($w2-Copy00-line02, '#####0')"/>
</copy00line02>

<copy00line03 color="red">
<xsl:value-of select="format-number($w2-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($w2-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($w2-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($w2-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line07 color="red">
<xsl:value-of select="format-number($w2-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08 color="red">
<xsl:value-of select="format-number($w2-Copy00-line08, '#####0')"/>
</copy00line08>

<copy00line09 color="red">
<xsl:value-of select="format-number($w2-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($w2-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line11 color="red">
<xsl:value-of select="format-number($w2-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line14 color="red">
<xsl:value-of select="format-number($w2-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line16a color="red">
<xsl:value-of select="format-number($w2-Copy00-line16a, '#####0')"/>
</copy00line16a>

<copy00line16b color="red">
<xsl:value-of select="format-number($w2-Copy00-line16b, '#####0')"/>
</copy00line16b>

<copy00line17a color="red">
<xsl:value-of select="format-number($w2-Copy00-line17a, '#####0')"/>
</copy00line17a>

<copy00line17b color="red">
<xsl:value-of select="format-number($w2-Copy00-line17b, '#####0')"/>
</copy00line17b>

<copy00line18a color="red">
<xsl:value-of select="format-number($w2-Copy00-line18a, '#####0')"/>
</copy00line18a>

<copy00line18b color="red">
<xsl:value-of select="format-number($w2-Copy00-line18b, '#####0')"/>
</copy00line18b>

<copy00line19a color="red">
<xsl:value-of select="format-number($w2-Copy00-line19a, '#####0')"/>
</copy00line19a>

<copy00line19b color="red">
<xsl:value-of select="format-number($w2-Copy00-line19b, '#####0')"/>
</copy00line19b>

<copy00line12a color="blue">
<xsl:value-of select="$w2-Copy00-line12a"/>
</copy00line12a>

<copy00line12b color="blue">
<xsl:value-of select="$w2-Copy00-line12b"/>
</copy00line12b>

<copy00line12c color="blue">
<xsl:value-of select="$w2-Copy00-line12c"/>
</copy00line12c>

<copy00line12d color="blue">
<xsl:value-of select="$w2-Copy00-line12d"/>
</copy00line12d>

<copy00line13a color="blue">
<xsl:value-of select="$w2-Copy00-line13a"/>
</copy00line13a>

<copy00line13b color="blue">
<xsl:value-of select="$w2-Copy00-line13b"/>
</copy00line13b>

<copy00line13c color="blue">
<xsl:value-of select="$w2-Copy00-line13c"/>
</copy00line13c>

<copy00line15b color="blue">
<xsl:value-of select="$w2-Copy00-line15b"/>
</copy00line15b>

<copy00line15sa color="blue">
<xsl:value-of select="$w2-Copy00-line15sa"/>
</copy00line15sa>

<copy00line20a color="blue">
<xsl:value-of select="$w2-Copy00-line20a"/>
</copy00line20a>

<copy00line20b color="blue">
<xsl:value-of select="$w2-Copy00-line20b"/>
</copy00line20b>

<copy00linectrNo color="blue">
<xsl:value-of select="$w2-Copy00-linectrNo"/>
</copy00linectrNo>

<copy00linepaddr1 color="blue">
<xsl:value-of select="$w2-Copy00-linepaddr1"/>
</copy00linepaddr1>

<copy00linepaddr2 color="blue">
<xsl:value-of select="$w2-Copy00-linepaddr2"/>
</copy00linepaddr2>

<copy00linepayrID color="blue">
<xsl:value-of select="$w2-Copy00-linepayrID"/>
</copy00linepayrID>

<copy00linepcity color="blue">
<xsl:value-of select="$w2-Copy00-linepcity"/>
</copy00linepcity>

<copy00linepST color="blue">
<xsl:value-of select="$w2-Copy00-linepST"/>
</copy00linepST>

<copy00linepzip color="blue">
<xsl:value-of select="$w2-Copy00-linepzip"/>
</copy00linepzip>

<copy00lineraddr1 color="blue">
<xsl:value-of select="$w2-Copy00-lineraddr1"/>
</copy00lineraddr1>

<copy00lineraddr2 color="blue">
<xsl:value-of select="$w2-Copy00-lineraddr2"/>
</copy00lineraddr2>

<copy00linercity color="blue">
<xsl:value-of select="$w2-Copy00-linercity"/>
</copy00linercity>

<copy00linerST color="blue">
<xsl:value-of select="$w2-Copy00-linerST"/>
</copy00linerST>

<copy00linerzip color="blue">
<xsl:value-of select="$w2-Copy00-linerzip"/>
</copy00linerzip>

<copy00lineTFNI color="blue">
<xsl:value-of select="$w2-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$w2-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$w2-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$w2-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$w2-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>

<copy00linetsuff color="blue">
<xsl:value-of select="$w2-Copy00-linetsuff"/>
</copy00linetsuff>

<copy00linevoid color="blue">
<xsl:value-of select="$w2-Copy00-linevoid"/>
</copy00linevoid>
</Form>
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Wks-Copy00">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="WSln10-Copy00">
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="WSSchASalesTax-Copy00">
</IRSForms>
</xsl:template>
</xsl:stylesheet>
