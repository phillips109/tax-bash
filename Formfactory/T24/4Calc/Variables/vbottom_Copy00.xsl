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


<xsl:variable name="bottom-Copy00-linetop02c">
<xsl:choose>
<xsl:when test="document('../Output/top_Copy00.xml')">
<xsl:value-of select="document('../Output/top_Copy00.xml')//copy00line02c"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-linetop03">
<xsl:choose>
<xsl:when test="document('../Output/top_Copy00.xml')">
<xsl:value-of select="document('../Output/top_Copy00.xml')//copy00line02c"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line49524g">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineSDTWa">
<xsl:choose>
<xsl:when test="document('../Output/SchedDaTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDaTaxWkst_Copy00.xml')//copy00line47"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineQDCGa">
<xsl:choose>
<xsl:when test="document('../Output/QDCGaTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGaTaxWkst_Copy00.xml')//copy00line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineD18">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineD19">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineD15">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineD16">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line10403a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line104007">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line06">
<xsl:choose>
<xsl:when test="$bottom-Copy00-line05 >= $bottom-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$bottom-Copy00-line04 - $bottom-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line04">
<xsl:choose>
<xsl:when test="$bottom-Copy00-line49524g > 0">
<xsl:value-of select="$bottom-Copy00-lineSDTWa"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD_Copy00.xml') and $bottom-Copy00-lineD18 > 0 or $bottom-Copy00-lineD19 > 0">
<xsl:value-of select="$bottom-Copy00-lineSDTWa"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD_Copy00.xml') and $bottom-Copy00-lineD15 > 0 and $bottom-Copy00-lineD16 > 0">
<xsl:value-of select="$bottom-Copy00-lineQDCGa"/>
</xsl:when>
<xsl:when test="$bottom-Copy00-line10403a > 0">
<xsl:value-of select="$bottom-Copy00-lineQDCGa"/>
</xsl:when>
<xsl:when test="$bottom-Copy00-line104007 > 0 and $bottom-Copy00-line104007Ck = 'x'">
<xsl:value-of select="$bottom-Copy00-lineQDCGa"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$bottom-Copy00-line04a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line04a">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$bottom-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$bottom-Copy00-linetop03"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line05">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$bottom-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$bottom-Copy00-linetop02c"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="bottom-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="bottom-Copy00-line104007Ck">
<xsl:choose>
<xsl:when test="document('../Data/Form1040_Copy00_line07Ck_text.xml')">
<xsl:value-of select="document('../Data/Form1040_Copy00_line07Ck_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
