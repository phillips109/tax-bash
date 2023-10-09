

<xsl:variable name="SchedDTaxWkst-Copy00-line10">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line06 +
      			$SchedDTaxWkst-Copy00-line09"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line11">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line118 +
      			$SchedDTaxWkst-Copy00-line119"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line28a">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line21 +
      			$SchedDTaxWkst-Copy00-line22"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line32a">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line24 +
      			$SchedDTaxWkst-Copy00-line30"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line36c">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line10 +
      			$SchedDTaxWkst-Copy00-line21"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line41c">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line21 +
      			$SchedDTaxWkst-Copy00-line22 +
      			$SchedDTaxWkst-Copy00-line30 +
      			$SchedDTaxWkst-Copy00-line33 +
      			$SchedDTaxWkst-Copy00-line39"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line45">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line31 +
      			$SchedDTaxWkst-Copy00-line34 +
      			$SchedDTaxWkst-Copy00-line40 +
      			$SchedDTaxWkst-Copy00-line43 +
      			$SchedDTaxWkst-Copy00-line44"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line215" select="0.15"/>


<xsl:variable name="SchedDTaxWkst-Copy00-line220" select="0.20"/>


<xsl:variable name="SchedDTaxWkst-Copy00-line225" select="0.25"/>


<xsl:variable name="SchedDTaxWkst-Copy00-line228" select="0.28"/>


<xsl:variable name="SchedDTaxWkst-Copy00-line01">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="252620"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line02">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="2000"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line03">
  <xsl:choose><xsl:when test="document('../Output/Form4952_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="3000"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form4952_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04c"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="4000"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line24a">
  <xsl:choose><xsl:when test="document('../Output/$SchedDTaxWkst_Copy00.xml')">
    <xsl:value-of select="document('../Output/$SchedDTaxWkst_Copy00.xml')//copy00line22"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="2400"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line115">
  <xsl:choose><xsl:when test="document('../Output/$SchedD_Copy00.xml')">
    <xsl:value-of select="document('../Output/$SchedD_Copy00.xml')//copy00line15"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="1150"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line116">
  <xsl:choose><xsl:when test="document('../Output/$SchedD_Copy00.xml')">
    <xsl:value-of select="document('../Output/$SchedD_Copy00.xml')//copy00line16"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="1160"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line118">
  <xsl:choose><xsl:when test="document('../Output/$SchedD_Copy00.xml')">
    <xsl:value-of select="document('../Output/$SchedD_Copy00.xml')//copy00line18"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line119">
  <xsl:choose><xsl:when test="document('../Output/$SchedD_Copy00.xml')">
    <xsl:value-of select="document('../Output/$SchedD_Copy00.xml')//copy00line19"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line24a">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line22"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line37c">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
    </xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-lineFS">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line31a">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line30 * $SchedDTaxWkst-Copy00-line215"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line34b">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line33 * $SchedDTaxWkst-Copy00-line220"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line40c">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line39 * $SchedDTaxWkst-Copy00-line225"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line43c">
  <xsl:value-of select="$SchedDTaxWkst-Copy00-line42 * $SchedDTaxWkst-Copy00-line228"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line21">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line18 &gt;= $SchedDTaxWkst-Copy00-line20">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line20"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line07">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line115 &gt;= $SchedDTaxWkst-Copy00-line116">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line116"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line115"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line08">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line03 &gt;= $SchedDTaxWkst-Copy00-line04">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line12">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line09 &gt;= $SchedDTaxWkst-Copy00-line11">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line16">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line15">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line17">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line14 &gt;= $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line19">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line19a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line20">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line14 &gt;= $SchedDTaxWkst-Copy00-line19">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line23a">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line13">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line27a">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 &gt;= $SchedDTaxWkst-Copy00-line26">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line30a">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line25 &gt;= $SchedDTaxWkst-Copy00-line29">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line25"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line35c">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line09 &gt;= $SchedDTaxWkst-Copy00-line119">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line119"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line47">
  <xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line45 &gt;= $SchedDTaxWkst-Copy00-line46">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line46"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line45"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line05">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line04 >= $SchedDTaxWkst-Copy00-line03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line03 - $SchedDTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line06">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line05 >= $SchedDTaxWkst-Copy00-line02">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line02 - $SchedDTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line09">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line08 >= $SchedDTaxWkst-Copy00-line07">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line07 - $SchedDTaxWkst-Copy00-line08"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line14">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line13 >= $SchedDTaxWkst-Copy00-line01">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 - $SchedDTaxWkst-Copy00-line13"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line18">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line10 >= $SchedDTaxWkst-Copy00-line01">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 - $SchedDTaxWkst-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line25a">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line24 >= $SchedDTaxWkst-Copy00-line23">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23 - $SchedDTaxWkst-Copy00-line24"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line29a">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line28 >= $SchedDTaxWkst-Copy00-line27">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line27 - $SchedDTaxWkst-Copy00-line28"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line38c">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line37 >= $SchedDTaxWkst-Copy00-line36">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36 - $SchedDTaxWkst-Copy00-line37"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line39c">
  <xsl:choose>
  <xsl:when test="$SchedDTaxWkst-Copy00-line38 >= $SchedDTaxWkst-Copy00-line35">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35 - $SchedDTaxWkst-Copy00-line38"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line13">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line10 - 
			$SchedDTaxWkst-Copy00-line12,'#####0')"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line22">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line16 - 
			$SchedDTaxWkst-Copy00-line17,'#####0')"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line33b">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23 - 
			$SchedDTaxWkst-Copy00-line32,'#####0')"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line42c">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line01 - 
			$SchedDTaxWkst-Copy00-line41,'#####0')"/>
</xsl:variable>


<xsl:variable name="SchedDTaxWkst-Copy00-line15">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'   or $SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="41675"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line15a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line15a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="83350"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line15b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line15b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="55800"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line19a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'   or $SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="170050"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line19b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="340100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line19c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line19c">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="170050"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line26">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line26a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="459750"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line26b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="258600"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line26c">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="517200"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line26d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line26d">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="488500"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line23">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line24">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line24a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line25a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line27">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line27a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line28">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line28a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line29">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line29a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line30">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line30a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line31">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line31a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line32">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line32a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line33">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line33a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line34">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line34a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line34a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line34b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line35">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line35a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line35b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line36">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line36a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line36b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line37">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line37a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line37a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line37b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line37b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line37c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line38">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line38a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line38a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line38b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line38b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line38c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line39">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line39a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line39b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line40">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line40a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line40a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line40b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line40b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line40c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line41">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line41a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line41a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line41b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line41b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line41c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line42">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line42a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line42b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line43">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line43a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line43a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line43b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line43b">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line43c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line44">
  <xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDTaxWkst-Copy00-lineFS"/>
    <xsl:with-param name="lineToBeTaxed" select="$SchedDTaxWkst-Copy00-line21"/>
    </xsl:call-template>
  </xsl:variable>
  

<xsl:variable name="SchedDTaxWkst-Copy00-line46">
  <xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$SchedDTaxWkst-Copy00-lineFS"/>
    <xsl:with-param name="lineToBeTaxed" select="$SchedDTaxWkst-Copy00-line01"/>
    </xsl:call-template>
  </xsl:variable>
  
