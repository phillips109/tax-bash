<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="w2-Copy00-lineBox01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox07'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12b2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12b2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12b2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12c2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12c2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12c2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12c2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12d2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12d2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12d2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12d2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12a2">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12a2'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12a2'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineBox12a2']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL01Tax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01Tax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01Tax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01Tax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL01W">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01W'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01W'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL01W']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL02Tax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02Tax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02Tax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02Tax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL02W">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02W'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02W'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineL02W']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST01Tax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST01Tax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST01Tax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST01Tax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST02Tax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02Tax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02Tax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02Tax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST02W">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02W'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02W'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='w2-Copy00-lineST02W']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12a1">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox12a1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12b1">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox12b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12b1">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox12b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12c1">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox12c1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox12d1">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox12d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox13a">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox13a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox13b">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox13b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineBox13c">
<xsl:value-of select="document('../Data/w2_Copy00_lineBox13c_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineCtlNo">
<xsl:value-of select="document('../Data/w2_Copy00_lineCtlNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEAdd1">
<xsl:value-of select="document('../Data/w2_Copy00_lineEAdd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEAdd2">
<xsl:value-of select="document('../Data/w2_Copy00_lineEAdd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineECity">
<xsl:value-of select="document('../Data/w2_Copy00_lineECity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEID">
<xsl:value-of select="document('../Data/w2_Copy00_lineEID_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEName">
<xsl:value-of select="document('../Data/w2_Copy00_lineEName_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEST">
<xsl:value-of select="document('../Data/w2_Copy00_lineEST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineEzip">
<xsl:value-of select="document('../Data/w2_Copy00_lineEzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL01Name">
<xsl:value-of select="document('../Data/w2_Copy00_lineL01Name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineL02Name">
<xsl:value-of select="document('../Data/w2_Copy00_lineL02Name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST01">
<xsl:value-of select="document('../Data/w2_Copy00_lineST01_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST01EID">
<xsl:value-of select="document('../Data/w2_Copy00_lineST01EID_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST01W">
<xsl:value-of select="document('../Data/w2_Copy00_lineST01W_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST02">
<xsl:value-of select="document('../Data/w2_Copy00_lineST02_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineST02EID">
<xsl:value-of select="document('../Data/w2_Copy00_lineST02EID_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTAddr1">
<xsl:value-of select="document('../Data/w2_Copy00_lineTAddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTAddr2">
<xsl:value-of select="document('../Data/w2_Copy00_lineTAddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTCity">
<xsl:value-of select="document('../Data/w2_Copy00_lineTCity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTST">
<xsl:value-of select="document('../Data/w2_Copy00_lineTST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTsuff">
<xsl:value-of select="document('../Data/w2_Copy00_lineTsuff_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTzip">
<xsl:value-of select="document('../Data/w2_Copy00_lineTzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-linevoid">
<xsl:value-of select="document('../Data/w2_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/_Copy_line_text.xml')">
<xsl:value-of select="document('../Data/_Copy_line_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/_Copy_line_text.xml')">
<xsl:value-of select="document('../Data/_Copy_line_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/_Copy_line_text.xml')">
<xsl:value-of select="document('../Data/_Copy_line_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/_Copy_line_text.xml')">
<xsl:value-of select="document('../Data/_Copy_line_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="w2-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/_Copy_line_text.xml')">
<xsl:value-of select="document('../Data/_Copy_line_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="w2-Copy00">

<copy00lineBox01 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox01, '#####0')"/>
  </copy00lineBox01>


<copy00lineBox02 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox02, '#####0')"/>
  </copy00lineBox02>


<copy00lineBox03 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox03, '#####0')"/>
  </copy00lineBox03>


<copy00lineBox04 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox04, '#####0')"/>
  </copy00lineBox04>


<copy00lineBox05 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox05, '#####0')"/>
  </copy00lineBox05>


<copy00lineBox06 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox06, '#####0')"/>
  </copy00lineBox06>


<copy00lineBox07 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox07, '#####0')"/>
  </copy00lineBox07>


<copy00lineBox08 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox08, '#####0')"/>
  </copy00lineBox08>


<copy00lineBox09 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox09, '#####0')"/>
  </copy00lineBox09>


<copy00lineBox10 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox10, '#####0')"/>
  </copy00lineBox10>


<copy00lineBox11 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox11, '#####0')"/>
  </copy00lineBox11>


<copy00lineBox12b2 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox12b2, '#####0')"/>
  </copy00lineBox12b2>


<copy00lineBox12b2 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox12b2, '#####0')"/>
  </copy00lineBox12b2>


<copy00lineBox12c2 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox12c2, '#####0')"/>
  </copy00lineBox12c2>


<copy00lineBox12d2 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox12d2, '#####0')"/>
  </copy00lineBox12d2>


<copy00lineBox14 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox14, '#####0')"/>
  </copy00lineBox14>


<copy00lineBox12a2 color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineBox12a2, '#####0')"/>
  </copy00lineBox12a2>


<copy00lineL01Tax color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineL01Tax, '#####0')"/>
  </copy00lineL01Tax>


<copy00lineL01W color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineL01W, '#####0')"/>
  </copy00lineL01W>


<copy00lineL02Tax color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineL02Tax, '#####0')"/>
  </copy00lineL02Tax>


<copy00lineL02W color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineL02W, '#####0')"/>
  </copy00lineL02W>


<copy00lineST01Tax color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineST01Tax, '#####0')"/>
  </copy00lineST01Tax>


<copy00lineST02Tax color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineST02Tax, '#####0')"/>
  </copy00lineST02Tax>


<copy00lineST02W color="red">
  <xsl:value-of select="format-number($w2-Copy00-lineST02W, '#####0')"/>
  </copy00lineST02W>


<copy00lineBox12a1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox12a1"/>
    </copy00lineBox12a1>
  

<copy00lineBox12b1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox12b1"/>
    </copy00lineBox12b1>
  

<copy00lineBox12b1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox12b1"/>
    </copy00lineBox12b1>
  

<copy00lineBox12c1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox12c1"/>
    </copy00lineBox12c1>
  

<copy00lineBox12d1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox12d1"/>
    </copy00lineBox12d1>
  

<copy00lineBox13a color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox13a"/>
    </copy00lineBox13a>
  

<copy00lineBox13b color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox13b"/>
    </copy00lineBox13b>
  

<copy00lineBox13c color="blue">
    <xsl:value-of select="$w2-Copy00-lineBox13c"/>
    </copy00lineBox13c>
  

<copy00lineCtlNo color="blue">
    <xsl:value-of select="$w2-Copy00-lineCtlNo"/>
    </copy00lineCtlNo>
  

<copy00lineEAdd1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineEAdd1"/>
    </copy00lineEAdd1>
  

<copy00lineEAdd2 color="blue">
    <xsl:value-of select="$w2-Copy00-lineEAdd2"/>
    </copy00lineEAdd2>
  

<copy00lineECity color="blue">
    <xsl:value-of select="$w2-Copy00-lineECity"/>
    </copy00lineECity>
  

<copy00lineEID color="blue">
    <xsl:value-of select="$w2-Copy00-lineEID"/>
    </copy00lineEID>
  

<copy00lineEName color="blue">
    <xsl:value-of select="$w2-Copy00-lineEName"/>
    </copy00lineEName>
  

<copy00lineEST color="blue">
    <xsl:value-of select="$w2-Copy00-lineEST"/>
    </copy00lineEST>
  

<copy00lineEzip color="blue">
    <xsl:value-of select="$w2-Copy00-lineEzip"/>
    </copy00lineEzip>
  

<copy00lineL01Name color="blue">
    <xsl:value-of select="$w2-Copy00-lineL01Name"/>
    </copy00lineL01Name>
  

<copy00lineL02Name color="blue">
    <xsl:value-of select="$w2-Copy00-lineL02Name"/>
    </copy00lineL02Name>
  

<copy00lineST01 color="blue">
    <xsl:value-of select="$w2-Copy00-lineST01"/>
    </copy00lineST01>
  

<copy00lineST01EID color="blue">
    <xsl:value-of select="$w2-Copy00-lineST01EID"/>
    </copy00lineST01EID>
  

<copy00lineST01W color="blue">
    <xsl:value-of select="$w2-Copy00-lineST01W"/>
    </copy00lineST01W>
  

<copy00lineST02 color="blue">
    <xsl:value-of select="$w2-Copy00-lineST02"/>
    </copy00lineST02>
  

<copy00lineST02EID color="blue">
    <xsl:value-of select="$w2-Copy00-lineST02EID"/>
    </copy00lineST02EID>
  

<copy00lineTAddr1 color="blue">
    <xsl:value-of select="$w2-Copy00-lineTAddr1"/>
    </copy00lineTAddr1>
  

<copy00lineTAddr2 color="blue">
    <xsl:value-of select="$w2-Copy00-lineTAddr2"/>
    </copy00lineTAddr2>
  

<copy00lineTCity color="blue">
    <xsl:value-of select="$w2-Copy00-lineTCity"/>
    </copy00lineTCity>
  

<copy00lineTST color="blue">
    <xsl:value-of select="$w2-Copy00-lineTST"/>
    </copy00lineTST>
  

<copy00lineTsuff color="blue">
    <xsl:value-of select="$w2-Copy00-lineTsuff"/>
    </copy00lineTsuff>
  

<copy00lineTzip color="blue">
    <xsl:value-of select="$w2-Copy00-lineTzip"/>
    </copy00lineTzip>
  

<copy00linevoid color="blue">
    <xsl:value-of select="$w2-Copy00-linevoid"/>
    </copy00linevoid>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$w2-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$w2-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$w2-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$w2-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$w2-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
