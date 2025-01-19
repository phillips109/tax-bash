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
