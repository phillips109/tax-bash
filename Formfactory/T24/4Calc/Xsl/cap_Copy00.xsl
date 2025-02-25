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
<xsl:when test="document('../../T23/Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/Form1040_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line02a">
<xsl:choose>
<xsl:when test="document('../../T23/Output/SchedD_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/SchedD_Copy01.xml')//copy01line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line05a">
<xsl:choose>
<xsl:when test="document('../../T23/Output/SchedD_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/SchedD_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line06a">
<xsl:choose>
<xsl:when test="document('../../T23/Output/SchedD_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/SchedD_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line09a">
<xsl:choose>
<xsl:when test="document('../../T23/Output/SchedD_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/SchedD_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="cap-Copy00-line10a">
<xsl:choose>
<xsl:when test="document('../../T23/Output/SchedD_Copy01.xml')">
<xsl:value-of select="document('../../T23/Output/SchedD_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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
</IRSForms>
</xsl:template>
</xsl:stylesheet>
