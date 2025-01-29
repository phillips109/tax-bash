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

<xsl:variable name="SST-Copy00-line06">
<xsl:value-of select="$SST-Copy00-line11s1 +
$SST-Copy00-line12s1 +
$SST-Copy00-line13s1 +
$SST-Copy00-line14s1 +
$SST-Copy00-line15s1 +
$SST-Copy00-line16s1 +
$SST-Copy00-line17s1 +
$SST-Copy00-line18s1 +
$SST-Copy00-line19as1 +
$SST-Copy00-line20s1 +
$SST-Copy00-line23s1 +
$SST-Copy00-line25s1"/>
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
<xsl:value-of select="0.50"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line85">
<xsl:value-of select="0.85"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line00">
<xsl:value-of select="0.00"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040ssa_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040ssa_Copy01.xml')//copy01lineBox05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="1000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line01z1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line01z"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line02b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line02b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line03b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line03b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line04b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line04b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line05b1040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line05b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line071040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line081040">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line11"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line12"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line13s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line114"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line15s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line16s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line17s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line19as1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line19a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line20s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line20"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line23s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line23"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line25s1">
<xsl:choose>
<xsl:when test="document('../Output/Form1040s1_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040s1_Copy01.xml')//copy01line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-lineApart">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineApart_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineApart_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line02">
<xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line50"/>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line09 &gt;= $SST-Copy00-line10">
<xsl:value-of select="$SST-Copy00-line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line02 &gt;= $SST-Copy00-line13">
<xsl:value-of select="$SST-Copy00-line13"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line16 &gt;= $SST-Copy00-line17">
<xsl:value-of select="$SST-Copy00-line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line16"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11a">
<xsl:choose>
<xsl:when test="$SST-Copy00-line10 >= $SST-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line09 - $SST-Copy00-line10"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line07">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &lt; $SST-Copy00-line05">
<xsl:value-of select="$SST-Copy00-line05 - $SST-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line08">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="32000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="25000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line09">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &lt; $SST-Copy00-line07">
<xsl:value-of select="$SST-Copy00-line07 - $SST-Copy00-line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line10">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="12000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'S'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'HOH'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'QSS'">
<xsl:value-of select="9000"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart = 'All'">
<xsl:value-of select="9000"/>
</xsl:when>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line11">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line12">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line13">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line12 * $SST-Copy00-line50"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line14">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line15">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line11 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line11 * $SST-Copy00-line85"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line16">
<xsl:choose>
<xsl:when test="SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-lineFS = 'MFS' and $SST-Copy00-lineApart != 'All'">
<xsl:value-of select="$SST-Copy00-line07 * $SST-Copy00-line85"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line14 + $SST-Copy00-line15"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line17">
<xsl:choose>
<xsl:when test="SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line01 * $SST-Copy00-line85"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SST-Copy00-line18">
<xsl:choose>
<xsl:when test="$SST-Copy00-line06 &gt;= $SST-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SST-Copy00-line08 &gt;= $SST-Copy00-line07">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SST-Copy00-line18a"/>
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


<copy00line06 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line03 color="green">
  <xsl:value-of select="format-number($SST-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line50 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line50, '#0.00#')"/>
  </copy00line50>


<copy00line85 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line85, '#0.00#')"/>
  </copy00line85>


<copy00line00 color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line00, '#####0')"/>
  </copy00line00>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line01, '#####0')"/>
  </copy00line01>


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


<copy00line11s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line11s1, '#####0')"/>
  </copy00line11s1>


<copy00line12s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line12s1, '#####0')"/>
  </copy00line12s1>


<copy00line13s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line13s1, '#####0')"/>
  </copy00line13s1>


<copy00line14s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line14s1, '#####0')"/>
  </copy00line14s1>


<copy00line15s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line15s1, '#####0')"/>
  </copy00line15s1>


<copy00line16s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line16s1, '#####0')"/>
  </copy00line16s1>


<copy00line17s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line17s1, '#####0')"/>
  </copy00line17s1>


<copy00line18s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line18s1, '#####0')"/>
  </copy00line18s1>


<copy00line19as1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line19as1, '#####0')"/>
  </copy00line19as1>


<copy00line20s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line20s1, '#####0')"/>
  </copy00line20s1>


<copy00line23s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line23s1, '#####0')"/>
  </copy00line23s1>


<copy00line25s1 color="purple">
  <xsl:value-of select="format-number($SST-Copy00-line25s1, '#####0')"/>
  </copy00line25s1>


<copy00lineFS color="blue">
    <xsl:value-of select="$SST-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineApart color="blue">
    <xsl:value-of select="$SST-Copy00-lineApart"/>
    </copy00lineApart>
  

<copy00line02 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line12a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line12a, '#####0')"/>
  </copy00line12a>


<copy00line14a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line14a, '#####0')"/>
  </copy00line14a>


<copy00line18a color="blue">
  <xsl:value-of select="format-number($SST-Copy00-line18a, '#####0')"/>
  </copy00line18a>


<copy00line11a color="cyan">
  <xsl:value-of select="format-number($SST-Copy00-line11a, '#####0')"/>
  </copy00line11a>


<copy00line07 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line09 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line14 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line16 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line17 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line18 color="red">
  <xsl:value-of select="format-number($SST-Copy00-line18, '#####0')"/>
  </copy00line18>


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
