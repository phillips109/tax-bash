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
