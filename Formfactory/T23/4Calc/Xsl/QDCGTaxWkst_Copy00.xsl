<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="QDCGTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line02 +
$QDCGTaxWkst-Copy00-line03"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line15">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line05 +
$QDCGTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line19">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line09 +
$QDCGTaxWkst-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line23">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line18 +
$QDCGTaxWkst-Copy00-line21 +
$QDCGTaxWkst-Copy00-line22"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line15D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line16D">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line10407">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Output/Bkg_Copy00.xml')">
<xsl:value-of select="document('../Output/Bkg_Copy00.xml')//copy00lineFS"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-lineFEI3">
<xsl:choose>
<xsl:when test="document('../Output/FEITaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/FEITaxWkst_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line104015">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line11">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-linep15">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-linep20">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line18">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line17 * $QDCGTaxWkst-Copy00-linep15"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line21">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line20 * $QDCGTaxWkst-Copy00-linep20"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line07">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line06">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line05 &gt;= $QDCGTaxWkst-Copy00-line07">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line04">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line14">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line01 &gt;= $QDCGTaxWkst-Copy00-line13">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line17">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line12 &gt;= $QDCGTaxWkst-Copy00-line16">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line25">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line23 &gt;= $QDCGTaxWkst-Copy00-line24">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line24"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line23"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line04 >= $QDCGTaxWkst-Copy00-line01">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line01 - $QDCGTaxWkst-Copy00-line04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line16">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line15 >= $QDCGTaxWkst-Copy00-line14">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line14 - $QDCGTaxWkst-Copy00-line15"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line09">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line07 -  $QDCGTaxWkst-Copy00-line08"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line12">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line10 -  $QDCGTaxWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line20">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line10 -  $QDCGTaxWkst-Copy00-line19"/>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form2555_Copy00.xml')">
<xsl:value-of select="$QDCGTaxWkst-Copy00-lineFEI3"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line104015"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line03y = 'x'">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-line15D &lt;= 0 or QDCGTaxWkst-Copy00-line16D &lt;= 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-line15D &lt; $QDCGTaxWkst-Copy00-line16D">
<xsl:value-of select="$QDCGTaxWkst-Copy00-line15D"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$QDCGTaxWkst-Copy00-line16D"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03y">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line03n">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="41675"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="41675"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="83350"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="83350"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="55800"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="459750"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="258600"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="517200"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="517200"/>
</xsl:when>
<xsl:when test="$QDCGTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="488500"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line22">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGTaxWkst-Copy00-line05"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="QDCGTaxWkst-Copy00-line24">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$QDCGTaxWkst-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$QDCGTaxWkst-Copy00-line01"/>
</xsl:call-template>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="QDCGTaxWkst-Copy00">

<copy00line04 color="green">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line15 color="green">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line19 color="green">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line23 color="green">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line02 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line15D color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line15D, '#####0')"/>
  </copy00line15D>


<copy00line16D color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line16D, '#####0')"/>
  </copy00line16D>


<copy00line10407 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line10407, '#####0')"/>
  </copy00line10407>


<copy00lineFS color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-lineFS, '#####0')"/>
  </copy00lineFS>


<copy00lineFEI3 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-lineFEI3, '#####0')"/>
  </copy00lineFEI3>


<copy00line104015 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line104015, '#####0')"/>
  </copy00line104015>


<copy00line11 color="magenta">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00linep15 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-linep15, '0.00##')"/>
  </copy00linep15>


<copy00linep20 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-linep20, '0.00##')"/>
  </copy00linep20>


<copy00line18 color="red">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line21 color="red">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line07 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line10 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line14 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line17 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line25 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line25, '#####0')"/>
  </copy00line25>


<copy00line05 color="cyan">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line16 color="cyan">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line09 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line12 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line20 color="purple">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line20, '#####0')"/>
  </copy00line20>


<copy00line01 color="red">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line03 color="red">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line03y color="blue">
    <xsl:value-of select="$QDCGTaxWkst-Copy00-line03y"/>
    </copy00line03y>
  

<copy00line03n color="blue">
    <xsl:value-of select="$QDCGTaxWkst-Copy00-line03n"/>
    </copy00line03n>
  

<copy00line06 color="blue">
    <xsl:value-of select="$QDCGTaxWkst-Copy00-line06"/>
    </copy00line06>
  

<copy00line13 color="blue">
    <xsl:value-of select="$QDCGTaxWkst-Copy00-line13"/>
    </copy00line13>
  

<copy00line22 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line24 color="blue">
  <xsl:value-of select="format-number($QDCGTaxWkst-Copy00-line24, '#####0')"/>
  </copy00line24>

</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
