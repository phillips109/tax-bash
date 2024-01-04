
<xsl:variable name="CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line01 +
$CLCWkst-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07">
<xsl:value-of select="$CLCWkst-Copy00-line04 +
$CLCWkst-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12">
<xsl:value-of select="$CLCWkst-Copy00-line10 +
$CLCWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line02 &gt;= $CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line07 >= $CLCWkst-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line05 - $CLCWkst-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line05 >= $CLCWkst-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line04 - $CLCWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line12 >= $CLCWkst-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line09 - $CLCWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
