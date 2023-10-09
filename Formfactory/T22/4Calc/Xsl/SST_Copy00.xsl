<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


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
  

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SST-Copy00">

<copy00line05 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line16d color="green">
  <xsl:value-of select="format-number($SST-Copy00-line16d, '#####0')"/>
  </copy00line16d>


<copy00line03 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line50 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line50, '#0.00#')"/>
  </copy00line50>


<copy00line85 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line85, '#0.00#')"/>
  </copy00line85>


<copy00line00 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line00, '#####0')"/>
  </copy00line00>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line21s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line21s1, '#####0')"/>
  </copy00line21s1>


<copy00line26s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line26s1, '#####0')"/>
  </copy00line26s1>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line01z1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line01z1040, '#####0')"/>
  </copy00line01z1040>


<copy00line02b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line02b1040, '#####0')"/>
  </copy00line02b1040>


<copy00line03b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line03b1040, '#####0')"/>
  </copy00line03b1040>


<copy00line04b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line04b1040, '#####0')"/>
  </copy00line04b1040>


<copy00line05b1040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line05b1040, '#####0')"/>
  </copy00line05b1040>


<copy00line071040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line071040, '#####0')"/>
  </copy00line071040>


<copy00line081040 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line081040, '#####0')"/>
  </copy00line081040>


<copy00lineFS color="blue">
    <xsl:value-of select="$SST-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineApart color="blue">
    <xsl:value-of select="$SST-Copy00-lineApart"/>
    </copy00lineApart>
  

<copy00line02 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line13d color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13d, '#####0')"/>
  </copy00line13d>


<copy00line15e color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15e, '#####0')"/>
  </copy00line15e>


<copy00line16e color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16e, '#####0')"/>
  </copy00line16e>


<copy00line17b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line17b, '#####0')"/>
  </copy00line17b>


<copy00line12d color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line12d, '#####0')"/>
  </copy00line12d>


<copy00line14d color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line14d, '#####0')"/>
  </copy00line14d>


<copy00line18b color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line18b, '#####0')"/>
  </copy00line18b>


<copy00line07a color="cyan">
  <xsl:value-of select="format-number($SST-Copy00-line07a, '#####0')"/>
  </copy00line07a>


<copy00line09d color="cyan">
  <xsl:value-of select="format-number($SST-Copy00-line09d, '#####0')"/>
  </copy00line09d>


<copy00line11d color="cyan">
  <xsl:value-of select="format-number($SST-Copy00-line11d, '#####0')"/>
  </copy00line11d>


<copy00line06 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line08a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08a, '#####0')"/>
  </copy00line08a>


<copy00line08b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08b, '#####0')"/>
  </copy00line08b>


<copy00line08c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08c, '#####0')"/>
  </copy00line08c>


<copy00line08d color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08d, '#####0')"/>
  </copy00line08d>


<copy00line08e color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08e, '#####0')"/>
  </copy00line08e>


<copy00line08f color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08f, '#####0')"/>
  </copy00line08f>


<copy00line08g color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08g, '#####0')"/>
  </copy00line08g>


<copy00line09 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line09a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09a, '#####0')"/>
  </copy00line09a>


<copy00line09b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09b, '#####0')"/>
  </copy00line09b>


<copy00line09c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09c, '#####0')"/>
  </copy00line09c>


<copy00line10 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line10a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10a, '#####0')"/>
  </copy00line10a>


<copy00line10b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10b, '#####0')"/>
  </copy00line10b>


<copy00line10c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10c, '#####0')"/>
  </copy00line10c>


<copy00line10d color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10d, '#####0')"/>
  </copy00line10d>


<copy00line10e color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10e, '#####0')"/>
  </copy00line10e>


<copy00line10f color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10f, '#####0')"/>
  </copy00line10f>


<copy00line10g color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10g, '#####0')"/>
  </copy00line10g>


<copy00line10h color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10h, '#####0')"/>
  </copy00line10h>


<copy00line11 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line11a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11a, '#####0')"/>
  </copy00line11a>


<copy00line11b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11b, '#####0')"/>
  </copy00line11b>


<copy00line11c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11c, '#####0')"/>
  </copy00line11c>


<copy00line12 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line12a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12a, '#####0')"/>
  </copy00line12a>


<copy00line12b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12b, '#####0')"/>
  </copy00line12b>


<copy00line12c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12c, '#####0')"/>
  </copy00line12c>


<copy00line13 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line13a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13a, '#####0')"/>
  </copy00line13a>


<copy00line13b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13b, '#####0')"/>
  </copy00line13b>


<copy00line13c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13c, '#####0')"/>
  </copy00line13c>


<copy00line14 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line14a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14a, '#####0')"/>
  </copy00line14a>


<copy00line14b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14b, '#####0')"/>
  </copy00line14b>


<copy00line14c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14c, '#####0')"/>
  </copy00line14c>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line15a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15a, '#####0')"/>
  </copy00line15a>


<copy00line15b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15b, '#####0')"/>
  </copy00line15b>


<copy00line15c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15c, '#####0')"/>
  </copy00line15c>


<copy00line15d color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15d, '#####0')"/>
  </copy00line15d>


<copy00line16 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line16a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16a, '#####0')"/>
  </copy00line16a>


<copy00line16b color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16b, '#####0')"/>
  </copy00line16b>


<copy00line16c color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16c, '#####0')"/>
  </copy00line16c>


<copy00line17 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line17a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line17a, '#####0')"/>
  </copy00line17a>


<copy00line18 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line18a color="red">
  <xsl:value-of select="format-number($SST-Copy00-line18a, '#####0')"/>
  </copy00line18a>


<copy00line07n color="blue">
    <xsl:value-of select="$SST-Copy00-line07n"/>
    </copy00line07n>
  

<copy00line07y color="blue">
    <xsl:value-of select="$SST-Copy00-line07y"/>
    </copy00line07y>
  

<copy00line09n color="blue">
    <xsl:value-of select="$SST-Copy00-line09n"/>
    </copy00line09n>
  

<copy00line09y color="blue">
    <xsl:value-of select="$SST-Copy00-line09y"/>
    </copy00line09y>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
