<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


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


<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form8615-Copy00">

<copy00line08 color="green">
  <xsl:value-of select="format-number($Form8615-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line12a color="green">
  <xsl:value-of select="format-number($Form8615-Copy00-line12a, '#####0')"/>
  </copy00line12a>


<copy00line16 color="green">
  <xsl:value-of select="format-number($Form8615-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00lineHOH color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineHOH"/>
    </copy00lineHOH>
  

<copy00lineMFJ color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineMFJ"/>
    </copy00lineMFJ>
  

<copy00lineMFS color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineMFS"/>
    </copy00lineMFS>
  

<copy00lineQSS color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineQSS"/>
    </copy00lineQSS>
  

<copy00lineS color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineS"/>
    </copy00lineS>
  

<copy00line12b color="orange">
  <xsl:value-of select="format-number($Form8615-Copy00-line12b, '#####0')"/>
  </copy00line12b>


<copy00line01 color="red">
  <xsl:value-of select="format-number($Form8615-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line06 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line10 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line13 color="red">
  <xsl:value-of select="format-number($Form8615-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line05 color="blue">
  <xsl:value-of select="format-number($Form8615-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line11 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line14 color="purple">
  <xsl:value-of select="format-number($Form8615-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line09ck color="blue">
    <xsl:value-of select="$Form8615-Copy00-line09ck"/>
    </copy00line09ck>
  

<copy00line10ck color="blue">
    <xsl:value-of select="$Form8615-Copy00-line10ck"/>
    </copy00line10ck>
  

<copy00line15ck color="blue">
    <xsl:value-of select="$Form8615-Copy00-line15ck"/>
    </copy00line15ck>
  

<copy00line17ck color="blue">
    <xsl:value-of select="$Form8615-Copy00-line17ck"/>
    </copy00line17ck>
  

<copy00lineCFNMI color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineCFNMI"/>
    </copy00lineCFNMI>
  

<copy00lineCLN color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineCLN"/>
    </copy00lineCLN>
  

<copy00lineCSSNoF color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineCSSNoF"/>
    </copy00lineCSSNoF>
  

<copy00lineCSSNoL color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineCSSNoL"/>
    </copy00lineCSSNoL>
  

<copy00lineCSSNoM color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineCSSNoM"/>
    </copy00lineCSSNoM>
  

<copy00lineFS color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form8615-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
