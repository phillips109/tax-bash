<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>


<xsl:variable name="Form1099g-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line11c1">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c1']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line11c2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099g-Copy00-line11c2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099g-Copy00-line08ck">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line08ck_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10a1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10a1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10a2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10a2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10b1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10b1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-line10b2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_line10b2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineacctNo">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineacctNo_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepaddr1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepaddr2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepcity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepname">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepname_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineptel_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linepzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineraddr1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineraddr2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linercity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linername">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linername_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099g_Copy00_linerzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineTIN2">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineTIN2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099g-Copy00-lineyr">
<xsl:value-of select="document('../Data/Form1099g_Copy00_lineyr_text.xml')//text"/>
    </xsl:variable>


<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099g-Copy00">

<copy00line01 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line09 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line11c1 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line11c1, '#####0')"/>
  </copy00line11c1>


<copy00line11c2 color="red">
  <xsl:value-of select="format-number($Form1099g-Copy00-line11c2, '#####0')"/>
  </copy00line11c2>


<copy00line08ck color="blue">
    <xsl:value-of select="$Form1099g-Copy00-line08ck"/>
    </copy00line08ck>
  

<copy00line10a1 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-line10a1"/>
    </copy00line10a1>
  

<copy00line10a2 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-line10a2"/>
    </copy00line10a2>
  

<copy00line10b1 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-line10b1"/>
    </copy00line10b1>
  

<copy00line10b2 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-line10b2"/>
    </copy00line10b2>
  

<copy00lineacctNo color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineacctNo"/>
    </copy00lineacctNo>
  

<copy00linepaddr1 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepaddr1"/>
    </copy00linepaddr1>
  

<copy00linepaddr2 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepaddr2"/>
    </copy00linepaddr2>
  

<copy00linepcity color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepcity"/>
    </copy00linepcity>
  

<copy00linepname color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepname"/>
    </copy00linepname>
  

<copy00linepST color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepST"/>
    </copy00linepST>
  

<copy00lineptel color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineptel"/>
    </copy00lineptel>
  

<copy00linepTIN color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepTIN"/>
    </copy00linepTIN>
  

<copy00linepzip color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linepzip"/>
    </copy00linepzip>
  

<copy00lineraddr1 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineraddr1"/>
    </copy00lineraddr1>
  

<copy00lineraddr2 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineraddr2"/>
    </copy00lineraddr2>
  

<copy00linercity color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linercity"/>
    </copy00linercity>
  

<copy00linername color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linername"/>
    </copy00linername>
  

<copy00linerST color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linerST"/>
    </copy00linerST>
  

<copy00linerTIN color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linerTIN"/>
    </copy00linerTIN>
  

<copy00linerzip color="blue">
    <xsl:value-of select="$Form1099g-Copy00-linerzip"/>
    </copy00linerzip>
  

<copy00lineTIN2 color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineTIN2"/>
    </copy00lineTIN2>
  

<copy00lineyr color="blue">
    <xsl:value-of select="$Form1099g-Copy00-lineyr"/>
    </copy00lineyr>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
