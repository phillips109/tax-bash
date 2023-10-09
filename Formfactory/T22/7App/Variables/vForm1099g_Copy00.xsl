

<xsl:variable name="Form1099g-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line11c1">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line11c2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line08ck">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line08ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10a1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10a1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10a2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10a2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10b1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10b1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10b2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10b2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineacctNo">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineacctNo_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepaddr1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepaddr2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepcity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepname">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepname_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineptel_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineraddr1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineraddr2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linercity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linername">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linername_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineTIN2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineTIN2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineyr">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineyr_text.xml')//text"/>
    </xsl:variable>

