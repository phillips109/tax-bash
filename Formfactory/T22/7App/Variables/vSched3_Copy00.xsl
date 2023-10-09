

<xsl:variable name="Sched3-Copy00-line07">
  <xsl:value-of select="$Sched3-Copy00-line06a +
      			$Sched3-Copy00-line06b +
      			$Sched3-Copy00-line06c +
      			$Sched3-Copy00-line06d +
      			$Sched3-Copy00-line06e +
      			$Sched3-Copy00-line06f +
      			$Sched3-Copy00-line06g +
      			$Sched3-Copy00-line06h +
      			$Sched3-Copy00-line06i +
      			$Sched3-Copy00-line06j +
      			$Sched3-Copy00-line06k +
      			$Sched3-Copy00-line06l +
      			$Sched3-Copy00-line06z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line08">
  <xsl:value-of select="$Sched3-Copy00-line01 +
      			$Sched3-Copy00-line02 +
      			$Sched3-Copy00-line03 +
      			$Sched3-Copy00-line04 +
      			$Sched3-Copy00-line05 +
      			$Sched3-Copy00-line07"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line14">
  <xsl:value-of select="$Sched3-Copy00-line13a +
      			$Sched3-Copy00-line13b +
      			$Sched3-Copy00-line13d +
      			$Sched3-Copy00-line13f +
      			$Sched3-Copy00-line13h +
      			$Sched3-Copy00-line13z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line15">
  <xsl:value-of select="$Sched3-Copy00-line09 +
      			$Sched3-Copy00-line10 +
      			$Sched3-Copy00-line11 +
      			$Sched3-Copy00-line12 +
      			$Sched3-Copy00-line14"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line06z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line01">
  <xsl:choose><xsl:when test="document('../Output/Form1116_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1116_Copy00.xml')//copy00line35"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="108"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line02">
  <xsl:choose><xsl:when test="document('../Output/Form2441_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2441_Copy00.xml')//copy00line11"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line03">
  <xsl:choose><xsl:when test="document('../Output/Form8863_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line19"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form8880_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8880_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line05">
  <xsl:choose><xsl:when test="document('../Output/Form5695_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form5695_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06a">
  <xsl:choose><xsl:when test="document('../Output/Form3800_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form3800_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06b">
  <xsl:choose><xsl:when test="document('../Output/Form8801_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8801_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06c">
  <xsl:choose><xsl:when test="document('../Output/Form8839_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8839_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06d">
  <xsl:choose><xsl:when test="document('../Output/SchedR_Copy00.xml')">
    <xsl:value-of select="document('../Output/SchedR_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06e">
  <xsl:choose><xsl:when test="document('../Output/Form8910_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8910_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06f">
  <xsl:choose><xsl:when test="document('../Output/Form8936_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8936_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06g">
  <xsl:choose><xsl:when test="document('../Output/Form8396_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8396_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06h">
  <xsl:choose><xsl:when test="document('../Output/Form8859_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8859_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06i">
  <xsl:choose><xsl:when test="document('../Output/Form8834_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8834_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06j">
  <xsl:choose><xsl:when test="document('../Output/Form8911_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8911_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06k">
  <xsl:choose><xsl:when test="document('../Output/Form8912_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8912_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06l">
  <xsl:choose><xsl:when test="document('../Output/Form8978_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8978_Copy00.xml')//copy00line14"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line09">
  <xsl:choose><xsl:when test="document('../Output/Form8962_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8962_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
  <xsl:choose><xsl:when test="document('../Output/Form4138_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form4138_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line13a">
  <xsl:choose><xsl:when test="document('../Output/Form2439_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2439_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline2">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTLN">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline1">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline1_text.xml')//text"/>
    </xsl:variable>

