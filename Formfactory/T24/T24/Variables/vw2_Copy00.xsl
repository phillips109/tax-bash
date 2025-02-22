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
