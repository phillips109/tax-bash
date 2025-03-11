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
<xsl:when test="document('../Output/top_Copy00.xml')">
<xsl:value-of select="document('../Output/top_Copy00.xml')//copy00line03"/>
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
