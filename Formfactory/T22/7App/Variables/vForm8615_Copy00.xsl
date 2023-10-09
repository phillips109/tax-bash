

<xsl:variable name="Form8615-Copy00-line08">
  <xsl:value-of select="$Form8615-Copy00-line05 +
      			$Form8615-Copy00-line06 +
      			$Form8615-Copy00-line07"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-line12a">
  <xsl:value-of select="$Form8615-Copy00-line05 +
      			$Form8615-Copy00-line07"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-line16">
  <xsl:value-of select="$Form8615-Copy00-line13 +
      			$Form8615-Copy00-line15"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineHOH">
<xsl:choose>
<xsl:when test="$Form8615-Copy00-lineFS = 'HOH'">
<xsl:value-of select=""x""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form8615-Copy00-lineMFJ">
<xsl:choose>
<xsl:when test="$Form8615-Copy00-lineFS = 'MFJ'">
<xsl:value-of select=""x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form8615-Copy00-lineMFS">
<xsl:choose>
<xsl:when test="$Form8615-Copy00-lineFS = 'MFS'">
<xsl:value-of select=""x""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form8615-Copy00-lineQSS">
<xsl:choose>
<xsl:when test="$Form8615-Copy00-lineFS = 'QSS'">
<xsl:value-of select=""x""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form8615-Copy00-lineS">
<xsl:choose>
<xsl:when test="$Form8615-Copy00-lineFS = 'S	'">
<xsl:value-of select=""x""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form8615-Copy00-line12b">
  <xsl:choose>
  <xsl:when test="$Form8615-Copy00-line12a = 0"> 
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form8615-Copy00-line05 div $Form8615-Copy00-line12a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form8615-Copy00-line01'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form8615-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form8615-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form1040c_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1040c_Copy00.xml')//copy00line15"/>
    </xsl:when><xsl:otherwise><xsl:value-of select=""/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-line06">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
    </xsl:when><xsl:otherwise><xsl:value-of select=""/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-line07">
  <xsl:choose><xsl:when test="document('../Output/_Copy.xml')">
    <xsl:value-of select="document('../Output/_Copy.xml')//copy"/>
    </xsl:when><xsl:otherwise><xsl:value-of select=""/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-line10">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line16"/>
    </xsl:when><xsl:otherwise><xsl:value-of select=""/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-line13">
  <xsl:value-of select="$Form8615-Copy00-line11 * $Form8615-Copy00-line12b"/>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line05">
  <xsl:choose>
<xsl:when test="$Form8615-Copy00-line03 &gt;= $Form8615-Copy00-line04">
<xsl:value-of select="$Form8615-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form8615-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line03">
  <xsl:value-of select="format-number($Form8615-Copy00-line01 - 
			$Form8615-Copy00-line02,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line11">
  <xsl:value-of select="format-number($Form8615-Copy00-line09 - 
			$Form8615-Copy00-line10,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line14">
  <xsl:value-of select="format-number($Form8615-Copy00-line04 - 
			$Form8615-Copy00-line05,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form8615-Copy00-line09ck">
<xsl:value-of select="document('../Data/Form8615_Copy00_line09ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-line10ck">
<xsl:value-of select="document('../Data/Form8615_Copy00_line10ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-line15ck">
<xsl:value-of select="document('../Data/Form8615_Copy00_line15ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-line17ck">
<xsl:value-of select="document('../Data/Form8615_Copy00_line17ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineCFNMI">
<xsl:value-of select="document('../Data/Form8615_Copy00_lineCFNMI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineCLN">
<xsl:value-of select="document('../Data/Form8615_Copy00_lineCLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineCSSNoF">
<xsl:value-of select="document('../Data/Form8615_Copy00_lineCSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineCSSNoL">
<xsl:value-of select="document('../Data/Form8615_Copy00_lineCSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineCSSNoM">
<xsl:value-of select="document('../Data/Form8615_Copy00_lineCSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form8615-Copy00-lineFS">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form8615-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>

