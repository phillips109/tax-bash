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

<xsl:variable name="UG1250Wkst-Copy00-line16">
<xsl:value-of select="$UG1250Wkst-Copy00-lineSchedD14 +
$UG1250Wkst-Copy00-lineK1box11D +
$UG1250Wkst-Copy00-linecgexcess"/>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line17a">
<xsl:value-of select="$UG1250Wkst-Copy00-line14 +
$UG1250Wkst-Copy00-line15 +
$UG1250Wkst-Copy00-line16"/>
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

<xsl:variable name="UG1250Wkst-Copy00-lineSchedD07">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-lineSchedD14">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="dummy"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-lineK1box11D">
<xsl:choose>
<xsl:when test="document('../Output/SchedK1_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedK1_Copy00.xml')//copy00linebox11D"/>
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

<xsl:variable name="UG1250Wkst-Copy00-line15">
<xsl:choose>
<xsl:when test="$UG1250Wkst-Copy00-lineSchedD07 &lt; 0">
<xsl:value-of select="$UG1250Wkst-Copy00-lineSchedD07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="UG1250Wkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$UG1250Wkst-Copy00-line17a &lt; 0">
<xsl:value-of select="$UG1250Wkst-Copy00-line17a * -1"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
