
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
