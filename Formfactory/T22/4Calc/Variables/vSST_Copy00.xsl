

<xsl:variable name="SST-Copy00-line05">
  <xsl:value-of select="$SST-Copy00-line02 +
      			$SST-Copy00-line03 +
      			$SST-Copy00-line04"/>
    </xsl:variable>


<xsl:variable name="SST-Copy00-line16d">
  <xsl:value-of select="$SST-Copy00-line14 +
      			$SST-Copy00-line15"/>
    </xsl:variable>


<xsl:variable name="SST-Copy00-line03">
  <xsl:value-of select="$SST-Copy00-line01z1040 +
      			$SST-Copy00-line02b1040 +
      			$SST-Copy00-line03b1040 +
      			$SST-Copy00-line04b1040 +
      			$SST-Copy00-line05b1040 +
      			$SST-Copy00-line071040 +
      			$SST-Copy00-line081040"/>
    </xsl:variable>


<xsl:variable name="SST-Copy00-line50">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line50'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line50'], '#0.00#')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SST-Copy00-line50']), '#0.00#')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line85">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line85'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line85'], '#0.00#')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SST-Copy00-line85']), '#0.00#')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line00">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line00'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SST-Copy00-line00'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SST-Copy00-line00']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line01">
  <xsl:choose><xsl:when test="document('../Output/Form1099ssa_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1099ssa_Copy01.xml')//copy01lineBox05"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="1000"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line21s1">
  <xsl:choose><xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line21"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line26s1">
  <xsl:choose><xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line26"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02a"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line01z1040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line01z"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line02b1040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02b"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line03b1040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line03b"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line04b1040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line04b"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line05b1040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line05b"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line071040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line07"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line081040">
  <xsl:choose><xsl:when test="document('../Output/Form1040_Copy01.xml')">
    <xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line08"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-lineFS">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-lineApart">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineApart_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineApart_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SST-Copy00-line02">
  <xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line50"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line13d">
  <xsl:value-of select="$SST-Copy00-line12 * $SST-Copy00-line50"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line15e">
  <xsl:value-of select="$SST-Copy00-line11 * $SST-Copy00-line85"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line16e">
  <xsl:value-of select="$SST-Copy00-line07 * $SST-Copy00-line85"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line17b">
  <xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line85"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line12d">
  <xsl:choose>
<xsl:when test="$SST-Copy00-line09 &gt;= $SST-Copy00-line10">
<xsl:value-of select="$SST-Copy00-line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line14d">
  <xsl:choose>
<xsl:when test="$SST-Copy00-line02 &gt;= $SST-Copy00-line13">
<xsl:value-of select="$SST-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line18b">
  <xsl:choose>
<xsl:when test="$SST-Copy00-line16 &gt;= $SST-Copy00-line17">
<xsl:value-of select="$SST-Copy00-line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SST-Copy00-line07a">
  <xsl:choose>
  <xsl:when test="$SST-Copy00-line06 >= $SST-Copy00-line05">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line05 - $SST-Copy00-line06"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09d">
  <xsl:choose>
  <xsl:when test="$SST-Copy00-line08 >= $SST-Copy00-line07">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line07 - $SST-Copy00-line08"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line11d">
  <xsl:choose>
  <xsl:when test="$SST-Copy00-line10 >= $SST-Copy00-line09">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09 - $SST-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line06">
  <xsl:value-of select="format-number($SST-Copy00-line26s1 - 
			$SST-Copy00-line21s1,'#####0')"/>
</xsl:variable>


<xsl:variable name="SST-Copy00-line07">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line07a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08a">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="32000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08d">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08e"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08e">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08f"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08f">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line08g"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line08g">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="12000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10d">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10e"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10e">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10f"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10f">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10g"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10g">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line10h"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line10h">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line11">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line11a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line11b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line11c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line12">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line12a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line12b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line12c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line13">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line13a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line13a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line13b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line13b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line13c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line13c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line13d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line14">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line14a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line14b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line14c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line15">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line15a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line15a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line15b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line15b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line15c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line15c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line15d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line15d">
<xsl:choose>
<xsl:when test="$SST-Copy00-line11= 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line15e"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line16">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line16a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line16b">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'Some'">
<xsl:value-of select="$SST-Copy00-line16e"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16c"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line16c">
<xsl:choose>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'None'">
<xsl:value-of select="$SST-Copy00-line16e"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line17">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line17a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line17a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line17b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line18">
<xsl:choose>
<xsl:when test="$SST-Copy00-line07n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line18a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line18a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09n = 'x'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line18b"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line07n">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06  &lt; $SST-Copy00-line05">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line07y">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06  &lt; $SST-Copy00-line05">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09n">
<xsl:choose>
<xsl:when test="$SST-Copy00-line08  &lt; $SST-Copy00-line07">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SST-Copy00-line09y">
<xsl:choose>
<xsl:when test="$SST-Copy00-line08  &lt; $SST-Copy00-line07">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  
