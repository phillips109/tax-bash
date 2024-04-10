
<xsl:variable name="Form1099r-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line17a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08pct">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line08pct_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line12Ck">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line12Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineacctNo">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineacctNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>
