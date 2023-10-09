<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


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
  

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedDTaxWkst-Copy00">

<copy00line10 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line28a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line28a, '#####0')"/>
  </copy00line28a>


<copy00line32a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line32a, '#####0')"/>
  </copy00line32a>


<copy00line36c color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36c, '#####0')"/>
  </copy00line36c>


<copy00line41c color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41c, '#####0')"/>
  </copy00line41c>


<copy00line45 color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line45, '#####0')"/>
  </copy00line45>


<copy00line215 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line215, '#0.00##')"/>
  </copy00line215>


<copy00line220 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line220, '#0.00##')"/>
  </copy00line220>


<copy00line225 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line225, '#0.00##')"/>
  </copy00line225>


<copy00line228 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line228, '#0.00##')"/>
  </copy00line228>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line24a color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line24a, '#####0')"/>
  </copy00line24a>


<copy00line115 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line115, '#####0')"/>
  </copy00line115>


<copy00line116 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line116, '#####0')"/>
  </copy00line116>


<copy00line118 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line118, '#####0')"/>
  </copy00line118>


<copy00line119 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line119, '#####0')"/>
  </copy00line119>


<copy00line24a color="magenta">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line24a, '#####0')"/>
  </copy00line24a>


<copy00line37c color="magenta">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37c, '#####0')"/>
  </copy00line37c>


<copy00lineFS color="blue">
    <xsl:value-of select="$SchedDTaxWkst-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00line31a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line31a, '#####0')"/>
  </copy00line31a>


<copy00line34b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34b, '#####0')"/>
  </copy00line34b>


<copy00line40c color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40c, '#####0')"/>
  </copy00line40c>


<copy00line43c color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43c, '#####0')"/>
  </copy00line43c>


<copy00line21 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line07 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line12 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line16 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line17 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line19 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line20 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line20, '#####0')"/>
  </copy00line20>


<copy00line23a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23a, '#####0')"/>
  </copy00line23a>


<copy00line27a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line27a, '#####0')"/>
  </copy00line27a>


<copy00line30a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line30a, '#####0')"/>
  </copy00line30a>


<copy00line35c color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35c, '#####0')"/>
  </copy00line35c>


<copy00line47 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line47, '#####0')"/>
  </copy00line47>


<copy00line05 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line09 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line14 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line18 color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line25a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25a, '#####0')"/>
  </copy00line25a>


<copy00line29a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line29a, '#####0')"/>
  </copy00line29a>


<copy00line38c color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38c, '#####0')"/>
  </copy00line38c>


<copy00line39c color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39c, '#####0')"/>
  </copy00line39c>


<copy00line13 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line22 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line33b color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33b, '#####0')"/>
  </copy00line33b>


<copy00line42c color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42c, '#####0')"/>
  </copy00line42c>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line15a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line15a, '#####0')"/>
  </copy00line15a>


<copy00line15b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line15b, '#####0')"/>
  </copy00line15b>


<copy00line19a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19a, '#####0')"/>
  </copy00line19a>


<copy00line19b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19b, '#####0')"/>
  </copy00line19b>


<copy00line19c color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19c, '#####0')"/>
  </copy00line19c>


<copy00line26 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26, '#####0')"/>
  </copy00line26>


<copy00line26a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26a, '#####0')"/>
  </copy00line26a>


<copy00line26b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26b, '#####0')"/>
  </copy00line26b>


<copy00line26c color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26c, '#####0')"/>
  </copy00line26c>


<copy00line26d color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26d, '#####0')"/>
  </copy00line26d>


<copy00line23 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line24 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line24, '#####0')"/>
  </copy00line24>


<copy00line25 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25, '#####0')"/>
  </copy00line25>


<copy00line27 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line27, '#####0')"/>
  </copy00line27>


<copy00line28 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line28, '#####0')"/>
  </copy00line28>


<copy00line29 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line29, '#####0')"/>
  </copy00line29>


<copy00line30 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line30, '#####0')"/>
  </copy00line30>


<copy00line31 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line31, '#####0')"/>
  </copy00line31>


<copy00line32 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line32, '#####0')"/>
  </copy00line32>


<copy00line33 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33, '#####0')"/>
  </copy00line33>


<copy00line33a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33a, '#####0')"/>
  </copy00line33a>


<copy00line34 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34, '#####0')"/>
  </copy00line34>


<copy00line34a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34a, '#####0')"/>
  </copy00line34a>


<copy00line35 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35, '#####0')"/>
  </copy00line35>


<copy00line35a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35a, '#####0')"/>
  </copy00line35a>


<copy00line35b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35b, '#####0')"/>
  </copy00line35b>


<copy00line36 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36, '#####0')"/>
  </copy00line36>


<copy00line36a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36a, '#####0')"/>
  </copy00line36a>


<copy00line36b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36b, '#####0')"/>
  </copy00line36b>


<copy00line37 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37, '#####0')"/>
  </copy00line37>


<copy00line37a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37a, '#####0')"/>
  </copy00line37a>


<copy00line37b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37b, '#####0')"/>
  </copy00line37b>


<copy00line38 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38, '#####0')"/>
  </copy00line38>


<copy00line38a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38a, '#####0')"/>
  </copy00line38a>


<copy00line38b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38b, '#####0')"/>
  </copy00line38b>


<copy00line39 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39, '#####0')"/>
  </copy00line39>


<copy00line39a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39a, '#####0')"/>
  </copy00line39a>


<copy00line39b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39b, '#####0')"/>
  </copy00line39b>


<copy00line40 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40, '#####0')"/>
  </copy00line40>


<copy00line40a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40a, '#####0')"/>
  </copy00line40a>


<copy00line40b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40b, '#####0')"/>
  </copy00line40b>


<copy00line41 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41, '#####0')"/>
  </copy00line41>


<copy00line41a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41a, '#####0')"/>
  </copy00line41a>


<copy00line41b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41b, '#####0')"/>
  </copy00line41b>


<copy00line42 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42, '#####0')"/>
  </copy00line42>


<copy00line42a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42a, '#####0')"/>
  </copy00line42a>


<copy00line42b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42b, '#####0')"/>
  </copy00line42b>


<copy00line43 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43, '#####0')"/>
  </copy00line43>


<copy00line43a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43a, '#####0')"/>
  </copy00line43a>


<copy00line43b color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43b, '#####0')"/>
  </copy00line43b>


<copy00line44 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line44, '#####0')"/>
  </copy00line44>


<copy00line46 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line46, '#####0')"/>
  </copy00line46>

</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
