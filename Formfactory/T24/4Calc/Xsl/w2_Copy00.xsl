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
</IRSForms>
</xsl:template>
</xsl:stylesheet>
