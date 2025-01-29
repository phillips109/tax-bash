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
</IRSForms>
</xsl:template>
</xsl:stylesheet>
