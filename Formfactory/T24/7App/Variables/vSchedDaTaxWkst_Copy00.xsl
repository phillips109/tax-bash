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
<xsl:when test="document('../Output/top_Copy00.xml')">
<xsl:value-of select="document('../Output/top_Copy00.xml')//copy00line03"/>
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
