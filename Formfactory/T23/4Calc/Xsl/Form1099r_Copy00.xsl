<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="Form1099r-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line09b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line09b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line14b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line14b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line19b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099r-Copy00-line19b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line02b2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line02b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line17a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line17a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line07a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line07a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line08pct">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line08pct_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line12Ck">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line12Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18a">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-line18b">
<xsl:value-of select="document('../Data/Form1099r_Copy00_line18b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineacctNo">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineacctNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepaddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepname2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepname2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_lineraddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerCntry">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername1">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linername2">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linername2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099r-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099r_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099r-Copy00">

<copy00line01 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02a color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line02a, '#####0')"/>
  </copy00line02a>


<copy00line03 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line08 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line09a color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line09a, '#####0')"/>
  </copy00line09a>


<copy00line09b color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line09b, '#####0')"/>
  </copy00line09b>


<copy00line10 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line13 color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line14a color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line14a, '#####0')"/>
  </copy00line14a>


<copy00line14b color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line14b, '#####0')"/>
  </copy00line14b>


<copy00line16a color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line16a, '#####0')"/>
  </copy00line16a>


<copy00line16b color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line16b, '#####0')"/>
  </copy00line16b>


<copy00line17b color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line17b, '#####0')"/>
  </copy00line17b>


<copy00line19a color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line19a, '#####0')"/>
  </copy00line19a>


<copy00line19b color="red">
  <xsl:value-of select="format-number($Form1099r-Copy00-line19b, '#####0')"/>
  </copy00line19b>


<copy00line02b1 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line02b1"/>
    </copy00line02b1>
  

<copy00line02b2 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line02b2"/>
    </copy00line02b2>
  

<copy00line07 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line07"/>
    </copy00line07>
  

<copy00line17a color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line17a"/>
    </copy00line17a>
  

<copy00line07a color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line07a"/>
    </copy00line07a>
  

<copy00line08pct color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line08pct"/>
    </copy00line08pct>
  

<copy00line12Ck color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line12Ck"/>
    </copy00line12Ck>
  

<copy00line15a color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line15a"/>
    </copy00line15a>
  

<copy00line15b color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line15b"/>
    </copy00line15b>
  

<copy00line18a color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line18a"/>
    </copy00line18a>
  

<copy00line18b color="blue">
    <xsl:value-of select="$Form1099r-Copy00-line18b"/>
    </copy00line18b>
  

<copy00lineacctNo color="blue">
    <xsl:value-of select="$Form1099r-Copy00-lineacctNo"/>
    </copy00lineacctNo>
  

<copy00linecorr color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linecorr"/>
    </copy00linecorr>
  

<copy00linepaddr1 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepaddr1"/>
    </copy00linepaddr1>
  

<copy00linepaddr2 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepaddr2"/>
    </copy00linepaddr2>
  

<copy00linepcity color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepcity"/>
    </copy00linepcity>
  

<copy00linepCntry color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepCntry"/>
    </copy00linepCntry>
  

<copy00linepname1 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepname1"/>
    </copy00linepname1>
  

<copy00linepname2 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepname2"/>
    </copy00linepname2>
  

<copy00linepST color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepST"/>
    </copy00linepST>
  

<copy00lineptel color="blue">
    <xsl:value-of select="$Form1099r-Copy00-lineptel"/>
    </copy00lineptel>
  

<copy00linepTIN color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepTIN"/>
    </copy00linepTIN>
  

<copy00linepzip color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linepzip"/>
    </copy00linepzip>
  

<copy00lineraddr1 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-lineraddr1"/>
    </copy00lineraddr1>
  

<copy00lineraddr2 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-lineraddr2"/>
    </copy00lineraddr2>
  

<copy00linercity color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linercity"/>
    </copy00linercity>
  

<copy00linerCntry color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linerCntry"/>
    </copy00linerCntry>
  

<copy00linername1 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linername1"/>
    </copy00linername1>
  

<copy00linername2 color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linername2"/>
    </copy00linername2>
  

<copy00linerST color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linerST"/>
    </copy00linerST>
  

<copy00linerTIN color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linerTIN"/>
    </copy00linerTIN>
  

<copy00linerzip color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linerzip"/>
    </copy00linerzip>
  

<copy00linevoid color="blue">
    <xsl:value-of select="$Form1099r-Copy00-linevoid"/>
    </copy00linevoid>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
