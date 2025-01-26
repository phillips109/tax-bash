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
