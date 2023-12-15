
<xsl:variable name="CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line01 +
$CLCWkst-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07a">
<xsl:value-of select="$CLCWkst-Copy00-line04 +
$CLCWkst-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12a">
<xsl:value-of select="$CLCWkst-Copy00-line10 +
$CLCWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-linemin1">
<xsl:value-of select="-1"/>
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

<xsl:variable name="CLCWkst-Copy00-line05a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05a']), '#####0')"/>
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

<xsl:variable name="CLCWkst-Copy00-line09a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-lineT2110402111">
<xsl:choose>
<xsl:when test="document('../../T21/Output/Form1040(2021)_Copy01.xml')">
<xsl:value-of select="document('../../T21/Output/Form1040(2021)_Copy01.xml')//copy01line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-lineT2110402114">
<xsl:choose>
<xsl:when test="document('../../T21/Output/Form1040(2021)_Copy01.xml')">
<xsl:value-of select="document('../../T21/Output/Form1040(2021)_Copy01.xml')//copy01line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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

<xsl:variable name="CLCWkst-Copy00-line08a">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line07 >= $CLCWkst-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line05 - $CLCWkst-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11a">
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

<xsl:variable name="CLCWkst-Copy00-line01">
<xsl:value-of select="$CLCWkst-Copy00-line10402122 -  $CLCWkst-Copy00-line10402114"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line05a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line06a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line07a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line07 &lt; 0">
<xsl:value-of select="line08a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line015 &lt; 0">
<xsl:value-of select="line09a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line10a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line11a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line12a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$SchedD2021-Copy01-line15 &lt; 0">
<xsl:value-of select="line13a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
