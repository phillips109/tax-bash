<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:include href="../BaseXsl/taxCalc.xsl"/>

  <xsl:output indent="yes"/>


<xsl:variable name="Bkg-Copy00-lineApart">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineApart_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineFS">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineSFNI">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineSLN">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineSSSNoF">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineSSSNoL">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineSSSNoM">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineTLN">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Bkg-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line01 +
$CLCWkst-Copy00-line02"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line07">
<xsl:value-of select="$CLCWkst-Copy00-line04 +
$CLCWkst-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line12">
<xsl:value-of select="$CLCWkst-Copy00-line10 +
$CLCWkst-Copy00-line11"/>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='CLCWkst-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line02 &gt;= $CLCWkst-Copy00-line03">
<xsl:value-of select="$CLCWkst-Copy00-line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line02"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line08">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line07 >= $CLCWkst-Copy00-line05">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line05 - $CLCWkst-Copy00-line07"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line11">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line05 >= $CLCWkst-Copy00-line04">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line04 - $CLCWkst-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="CLCWkst-Copy00-line13">
<xsl:choose>
<xsl:when test="$CLCWkst-Copy00-line12 >= $CLCWkst-Copy00-line09">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$CLCWkst-Copy00-line09 - $CLCWkst-Copy00-line12"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01z">
<xsl:value-of select="$Form1040-Copy00-line01a +
$Form1040-Copy00-line01b +
$Form1040-Copy00-line01c +
$Form1040-Copy00-line01d +
$Form1040-Copy00-line01e +
$Form1040-Copy00-line01f +
$Form1040-Copy00-line01g +
$Form1040-Copy00-line01h"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line09">
<xsl:value-of select="$Form1040-Copy00-line01z +
$Form1040-Copy00-lineintTot +
$Form1040-Copy00-line03b +
$Form1040-Copy00-line04b +
$Form1040-Copy00-line05b +
$Form1040-Copy00-line06b +
$Form1040-Copy00-line07 +
$Form1040-Copy00-line08"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line14">
<xsl:value-of select="$Form1040-Copy00-line12 +
$Form1040-Copy00-line13"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line16">
<xsl:value-of select="$Form1040-Copy00-line16a +
$Form1040-Copy00-line8814 +
$Form1040-Copy00-line4972 +
$Form1040-Copy00-line962 +
$Form1040-Copy00-lineECR +
$Form1040-Copy00-line1291TAX +
$Form1040-Copy00-lineForm8978 +
$Form1040-Copy00-line965 +
$Form1040-Copy00-line965INC"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line18">
<xsl:value-of select="$Form1040-Copy00-line16 +
$Form1040-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line21">
<xsl:value-of select="$Form1040-Copy00-line19 +
$Form1040-Copy00-line20"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line24">
<xsl:value-of select="$Form1040-Copy00-line22 +
$Form1040-Copy00-line23"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25b">
<xsl:value-of select="$Form1040-Copy00-line1099rtax01 +
$Form1040-Copy00-line1099rtax02 +
$Form1040-Copy00-line1099rtax03 +
$Form1040-Copy00-line1099rtax04 +
$Form1040-Copy00-line1099rtax05 +
$Form1040-Copy00-line1099rtax06 +
$Form1040-Copy00-line1099rtax07 +
$Form1040-Copy00-line1099rtax08 +
$Form1040-Copy00-line1099rtax09 +
$Form1040-Copy00-line1099rtax10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25d">
<xsl:value-of select="$Form1040-Copy00-line25a +
$Form1040-Copy00-line25b +
$Form1040-Copy00-line25c"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line32">
<xsl:value-of select="$Form1040-Copy00-line27 +
$Form1040-Copy00-line28 +
$Form1040-Copy00-line29 +
$Form1040-Copy00-line31"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line33">
<xsl:value-of select="$Form1040-Copy00-line25d +
$Form1040-Copy00-line26 +
$Form1040-Copy00-line32"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02a">
<xsl:value-of select="$Form1040-Copy00-lineexempt01 +
$Form1040-Copy00-lineexempt02 +
$Form1040-Copy00-lineexempt03 +
$Form1040-Copy00-lineexempt04 +
$Form1040-Copy00-lineexempt05 +
$Form1040-Copy00-lineexempt06 +
$Form1040-Copy00-lineexempt07 +
$Form1040-Copy00-lineexempt08 +
$Form1040-Copy00-lineexempt09 +
$Form1040-Copy00-lineexempt10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line03a">
<xsl:value-of select="$Form1040-Copy00-linequal01 +
$Form1040-Copy00-linequal02 +
$Form1040-Copy00-linequal03 +
$Form1040-Copy00-linequal04 +
$Form1040-Copy00-linequal05 +
$Form1040-Copy00-linequal06 +
$Form1040-Copy00-linequal07 +
$Form1040-Copy00-linequal08 +
$Form1040-Copy00-linequal09 +
$Form1040-Copy00-linequal10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line37a">
<xsl:value-of select="$Form1040-Copy00-line24 +
$Form1040-Copy00-line38"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line04b">
<xsl:value-of select="$Form1040-Copy00-lineira01 +
$Form1040-Copy00-lineira02 +
$Form1040-Copy00-lineira03 +
$Form1040-Copy00-lineira04 +
$Form1040-Copy00-lineira05 +
$Form1040-Copy00-lineira06 +
$Form1040-Copy00-lineira07 +
$Form1040-Copy00-lineira08 +
$Form1040-Copy00-lineira09 +
$Form1040-Copy00-lineira10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line05b">
<xsl:value-of select="$Form1040-Copy00-linepen01 +
$Form1040-Copy00-linepen02 +
$Form1040-Copy00-linepen03 +
$Form1040-Copy00-linepen04 +
$Form1040-Copy00-linepen05 +
$Form1040-Copy00-linepen06 +
$Form1040-Copy00-linepen07 +
$Form1040-Copy00-linepen08 +
$Form1040-Copy00-linepen09 +
$Form1040-Copy00-linepen10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linec2000">
<xsl:value-of select="2000"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line26">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line27">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line36">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line38">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01a">
<xsl:choose>
<xsl:when test="document('../Output/W-2_Copy00.xml')">
<xsl:value-of select="document('../Output/W-2_Copy00.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01e">
<xsl:choose>
<xsl:when test="document('../Output/Form2441_Copy00.xml')">
<xsl:value-of select="document('../Output/Form2441_Copy00.xml')//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01f">
<xsl:choose>
<xsl:when test="document('../Output/Form8839_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8839_Copy00.xml')//copy00line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line01g">
<xsl:choose>
<xsl:when test="document('../Output/Form8919_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8919_Copy00.xml')//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineintTot">
<xsl:choose>
<xsl:when test="document('../Output/SchedB_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB_Copy00.xml')//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line03b">
<xsl:choose>
<xsl:when test="document('../Output/SchedB_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB_Copy00.xml')//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06a">
<xsl:choose>
<xsl:when test="document('../Output/SST_Copy01.xml')">
<xsl:value-of select="document('../Output/SST_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06b">
<xsl:choose>
<xsl:when test="document('../Output/SST_Copy00.xml')">
<xsl:value-of select="document('../Output/SST_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line08">
<xsl:choose>
<xsl:when test="document('../Output/Sched1_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1_Copy00.xml')//copy00line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line10">
<xsl:choose>
<xsl:when test="document('../Output/Sched1_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1_Copy00.xml')//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../Output/SchedA_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedA_Copy01.xml')//copy01line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../Output/Form8995_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8995_Copy00.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line17">
<xsl:choose>
<xsl:when test="document('../Output/Sched2_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2_Copy00.xml')//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line20">
<xsl:choose>
<xsl:when test="document('../Output/Sched3_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3_Copy00.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line23">
<xsl:choose>
<xsl:when test="document('../Output/Sched2_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2_Copy00.xml')//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line25a">
<xsl:choose>
<xsl:when test="document('../Output/FormW2_Copy00.xml')">
<xsl:value-of select="document('../Output/FormW2_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line28">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812_Copy00.xml')//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line29">
<xsl:choose>
<xsl:when test="document('../Output/Form8863_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line31">
<xsl:choose>
<xsl:when test="document('../Output/Sched3_Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line35a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD15">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD16">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD18">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineD19">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSDTW">
<xsl:choose>
<xsl:when test="document('../Output/SchedDTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDTaxWkst_Copy00.xml')//copy00line47"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineQDCG">
<xsl:choose>
<xsl:when test="document('../Output/QDCGTaxWkst_Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGTaxWkst_Copy00.xml')//copy00line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4952">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line8814">
<xsl:choose>
<xsl:when test="document('../Output/Form8814_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8814_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4972">
<xsl:choose>
<xsl:when test="document('../Output/Form4972_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4972_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line962">
<xsl:choose>
<xsl:when test="document('../Output/Form1118_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1118_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineECR">
<xsl:choose>
<xsl:when test="document('../Output/Form8863_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1291TAX">
<xsl:choose>
<xsl:when test="document('../Output/Form8621_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8621_Copy00.xml')//copy00line16e"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineForm8978">
<xsl:choose>
<xsl:when test="document('../Output/Form8978_Copy00.xml')">
<xsl:value-of select="document('../Output/Form8978_Copy00.xml')//copy00line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line965">
<xsl:choose>
<xsl:when test="document('../Output/Form965?_Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line965INC">
<xsl:choose>
<xsl:when test="document('../Output/Form965?_Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?_Copy00.xml')//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line1099rtax10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineexempt10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linequal10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-liner10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linet10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy02.xml')//copy02line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy03.xml')//copy03line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy04.xml')//copy04line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy05.xml')//copy05line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy06.xml')//copy06line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy07.xml')//copy07line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy08.xml')//copy08line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy09.xml')//copy09line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linept10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099r_Copy10.xml')//copy10line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line15">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line14 >= $Form1040-Copy00-line11">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line11 - $Form1040-Copy00-line14"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line22">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line21 >= $Form1040-Copy00-line18">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line18 - $Form1040-Copy00-line21"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line34">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line24 >= $Form1040-Copy00-line33">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line33 - $Form1040-Copy00-line24"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line37">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line33 >= $Form1040-Copy00-line37a">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-line37a - $Form1040-Copy00-line33"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02b">
<xsl:value-of select="$Form1040-Copy00-lineintTot -  $Form1040-Copy00-line02a"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line11">
<xsl:value-of select="$Form1040-Copy00-line09 -  $Form1040-Copy00-line10"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35">
<xsl:value-of select="$Form1040-Copy00-line34 -  $Form1040-Copy00-line36"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:value-of select="$Form1040-Copy00-line35 -  $Form1040-Copy00-line38"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineCalc16">
<xsl:call-template name="taxCalc">
<xsl:with-param name="filingStatus" select="$Form1040-Copy00-lineFS"/>
<xsl:with-param name="lineToBeTaxed" select="$Form1040-Copy00-line15"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line2name">
<xsl:value-of select="document('../Data/Form1040_Copy00_line2name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06cCk">
<xsl:value-of select="document('../Data/Form1040_Copy00_line06cCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line07Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35aCk">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35aCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b1">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b2">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b3">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b4">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b5">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b6">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b7">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b8">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b9">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cCkg">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cCkg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cSvg">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cSvg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d10">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d10_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d11">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d11_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d1">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d12">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d12_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d13">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d13_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d14">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d14_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d15">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d15_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d16">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d16_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d17">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d17_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d2">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d3">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d4">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d5">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d6">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d7">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d8">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d9">
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39N">
<xsl:value-of select="document('../Data/Form1040_Copy00_line39N_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39Y">
<xsl:value-of select="document('../Data/Form1040_Copy00_line39Y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line421">
<xsl:value-of select="document('../Data/Form1040_Copy00_line421_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line422">
<xsl:value-of select="document('../Data/Form1040_Copy00_line422_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line423">
<xsl:value-of select="document('../Data/Form1040_Copy00_line423_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line424">
<xsl:value-of select="document('../Data/Form1040_Copy00_line424_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line425">
<xsl:value-of select="document('../Data/Form1040_Copy00_line425_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line431">
<xsl:value-of select="document('../Data/Form1040_Copy00_line431_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line432">
<xsl:value-of select="document('../Data/Form1040_Copy00_line432_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line433">
<xsl:value-of select="document('../Data/Form1040_Copy00_line433_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line434">
<xsl:value-of select="document('../Data/Form1040_Copy00_line434_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line435">
<xsl:value-of select="document('../Data/Form1040_Copy00_line435_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line436">
<xsl:value-of select="document('../Data/Form1040_Copy00_line436_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line441">
<xsl:value-of select="document('../Data/Form1040_Copy00_line441_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line442">
<xsl:value-of select="document('../Data/Form1040_Copy00_line442_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line443">
<xsl:value-of select="document('../Data/Form1040_Copy00_line443_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line444">
<xsl:value-of select="document('../Data/Form1040_Copy00_line444_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line445">
<xsl:value-of select="document('../Data/Form1040_Copy00_line445_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4972Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line4972Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line8814Ck">
<xsl:value-of select="document('../Data/Form1040_Copy00_line8814Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr1">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr2">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaptNo">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaptNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecampme">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecampme_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecampS">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecampS_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linechild">
<xsl:value-of select="document('../Data/Form1040_Copy00_linechild_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecity">
<xsl:value-of select="document('../Data/Form1040_Copy00_linecity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4name">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5cod">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5CTC">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5LN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5rel">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SF">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SL">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SM">
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedgt4">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedgt4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigN">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigY">
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigY_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDname">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDphone">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFaddr">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFaddr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFCntry">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFEIN">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFEIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFname">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFphone">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFprov">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFprov_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFzip">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineOther">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineOther_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePname">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePTIN">
<xsl:value-of select="document('../Data/Form1040_Copy00_linePTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSa58">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSblind">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdep">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSECk">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSECk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSiUali">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSiUali_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSocc">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineST">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTdate">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTocc">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYa58">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYblind">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineyoudep">
<xsl:value-of select="document('../Data/Form1040_Copy00_lineyoudep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linezip">
<xsl:value-of select="document('../Data/Form1040_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linex00">
<xsl:value-of select="document('../Data/Form1040_Copy00_linex00_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a01">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy01_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy01_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a02">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy02_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy02_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a03">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy03_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy03_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a04">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy04_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy04_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a05">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy05_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy05_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a06">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy06_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy06_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a07">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy07_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy07_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a08">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy08_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy08_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a09">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy09_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy09_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07a10">
<xsl:choose>
<xsl:when test="document('../Data/Form1099r_Copy10_line07a_text.xml')">
<xsl:value-of select="document('../Data/Form1099r_Copy10_line07a_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira01">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a01 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira02">
<xsl:choose>
<xsl:when test="Form1040-Copy00-line07a02 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira03">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a03 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira04">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a04 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira05">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a05 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira06">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a06 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira07">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a07 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira08">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a08 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira09">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a09 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner09"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineira10">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a10 = 'x'">
<xsl:value-of select="$Form1040-Copy00-liner10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen01">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a01 = ''">
<xsl:value-of select="$Form1040-Copy00-linet01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen02">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a02 = ''">
<xsl:value-of select="$Form1040-Copy00-linet02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen03">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a03 = ''">
<xsl:value-of select="$Form1040-Copy00-linet03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen04">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a04 = ''">
<xsl:value-of select="$Form1040-Copy00-linet04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen05">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a05 = ''">
<xsl:value-of select="$Form1040-Copy00-linet05"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen06">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a06 = ''">
<xsl:value-of select="$Form1040-Copy00-linet06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen07">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a07 = ''">
<xsl:value-of select="$Form1040-Copy00-linet07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen08">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a08 = ''">
<xsl:value-of select="$Form1040-Copy00-linet08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen09">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a09 = ''">
<xsl:value-of select="$Form1040-Copy00-linet09"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linepen10">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line07a10 = ''">
<xsl:value-of select="$Form1040-Copy00-linet10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line16a">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-line4952 > 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD18 > 0 or $Form1040-Copy00-lineD19 > 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="document('../Output/SchedD-Copy00.xml') and $Form1040-Copy00-lineD15 >0 and $Form1040-Copy00-lineD16 > 0">
<xsl:value-of select="$Form1040-Copy00-lineSDTW"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line03a > 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:when test="$Form1040-Copy00-line07 > 0">
<xsl:value-of select="$Form1040-Copy00-lineQDCG"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1040-Copy00-lineCalc16"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'S'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFJ">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineHOH">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineQSS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line01a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line01b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line01b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line02f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line02f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line16a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line16b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099div-Copy00-line16b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099div-Copy00-line08">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line08_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line14a">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line14a_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line14b">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line14b_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line15a_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line15b_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line20yr">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line20yr_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-line2TIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_line2TIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-lineactNo">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineactNo_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linecorr_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-lineFATCA">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineFATCA_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepadd1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepadd1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepadd2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepadd2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepcity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepctry">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepctry_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepnam1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepnam1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepnam2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepnam2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineptel_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-lineraddr1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineraddr1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-lineraddr2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_lineraddr2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linercity_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linerctry">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerctry_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linername1">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linername1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linername2">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linername2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerST_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerTIN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linerzip_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099div-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linevoid_text.xml')//text"/>
    </xsl:variable>



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


<xsl:variable name="Form1099int-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line08">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line08']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line09">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line09']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line17a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line17b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099int-Copy00-line17b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line07">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line07_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line15a">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line15a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line15b">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line15b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line16a">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line16a_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line16b">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line16b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line20yr">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line20yr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-line2TIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_line2TIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineactNo">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineactNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linecorr">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linecorr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineFATCA">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineFATCA_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepadd1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepadd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepadd2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepadd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepcity">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepcity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepcnty">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepcnty_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepctry">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepnam1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepnam1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepnam2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepnam2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepRTN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepRTN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepST">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineptel">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineptel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepTIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linepzip">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineradd1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineradd1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-lineradd2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_lineradd2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linercity">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linercity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linercnty">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linercnty_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerctry">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerctry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linernam1">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linernam1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linernam2">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linernam2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerST">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerTIN">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linerzip">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linerzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1099int-Copy00-linevoid">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linevoid_text.xml')//text"/>
</xsl:variable>

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


<xsl:variable name="Form1099ssa-Copy00-lineBox03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form1099ssa-Copy00-lineBox06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox05">
  <xsl:choose>
  <xsl:when test="$Form1099ssa-Copy00-lineBox04 >= $Form1099ssa-Copy00-lineBox03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form1099ssa-Copy00-lineBox03 - $Form1099ssa-Copy00-lineBox04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form1099ssa-Copy00-lineBox03d1">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d2">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d3">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d4">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d5">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d6">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d7">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03d8">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e1">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e2">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e3">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e4">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e5">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e6">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e7">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox03e8">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox03e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d1">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d2">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d3">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d4">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d5">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d6">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d7">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04d8">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e1">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e2">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e3">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e4">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e5">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e6">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e7">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox04e8">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox04e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox07">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox07_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox07a">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox07a_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox07b">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox07b_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineBox08">
<xsl:value-of select="document('../Data/Form1099ssa_Copy00_lineBox08_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form1099ssa-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4868-Copy00-lineamtpd">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-lineamtpd']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linet0tpay">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linet0tpay']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linetottax">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4868-Copy00-linetottax']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linebal">
<xsl:value-of select="format-number($Form4868-Copy00-linetottax -  $Form4868-Copy00-linet0tpay, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-line1040NR">
<xsl:value-of select="document('../Data/Form4868_Copy00_line1040NR_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaddr1">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaddr2">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineaway">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineaway_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linecity">
<xsl:value-of select="document('../Data/Form4868_Copy00_linecity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineST">
<xsl:value-of select="document('../Data/Form4868_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-linezip">
<xsl:value-of select="document('../Data/Form4868_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineSSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form4868-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line03">
  <xsl:value-of select="$Form4952-Copy00-line01 +
      			$Form4952-Copy00-line02"/>
    </xsl:variable>


<xsl:variable name="Form4952-Copy00-line04h">
  <xsl:value-of select="$Form4952-Copy00-line04c +
      			$Form4952-Copy00-line04f +
      			$Form4952-Copy00-line04g"/>
    </xsl:variable>


<xsl:variable name="Form4952-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line02">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line02']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line04g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-linencg">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Form4952-Copy00-linencg']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04e">
  <xsl:choose>
<xsl:when test="$Form4952-Copy00-line04d &gt;= $Form4952-Copy00-linencg">
<xsl:value-of select="$Form4952-Copy00-linencg"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line04d"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line08">
  <xsl:choose>
<xsl:when test="$Form4952-Copy00-line03 &gt;= $Form4952-Copy00-line06">
<xsl:value-of select="$Form4952-Copy00-line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line03"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line06">
  <xsl:choose>
  <xsl:when test="$Form4952-Copy00-line05 >= $Form4952-Copy00-line04h">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line04h - $Form4952-Copy00-line05"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form4952-Copy00-line07">
  <xsl:choose>
  <xsl:when test="$Form4952-Copy00-line06 >= $Form4952-Copy00-line03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4952-Copy00-line03 - $Form4952-Copy00-line06"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="Form4952-Copy00-line04c">
  <xsl:value-of select="format-number($Form4952-Copy00-line04a - 
			$Form4952-Copy00-line04b,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-line04f">
  <xsl:value-of select="format-number($Form4952-Copy00-line04d - 
			$Form4952-Copy00-line04e,'#####0')"/>
</xsl:variable>


<xsl:variable name="Form4952-Copy00-lineSFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineSLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Form4952-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>



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
<xsl:value-of select="$QDCGTaxWkst-Copy00-lineFEI3 "/>
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


<xsl:variable name="Sched3-Copy00-line07">
  <xsl:value-of select="$Sched3-Copy00-line06a +
      			$Sched3-Copy00-line06b +
      			$Sched3-Copy00-line06c +
      			$Sched3-Copy00-line06d +
      			$Sched3-Copy00-line06e +
      			$Sched3-Copy00-line06f +
      			$Sched3-Copy00-line06g +
      			$Sched3-Copy00-line06h +
      			$Sched3-Copy00-line06i +
      			$Sched3-Copy00-line06j +
      			$Sched3-Copy00-line06k +
      			$Sched3-Copy00-line06l +
      			$Sched3-Copy00-line06z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line08">
  <xsl:value-of select="$Sched3-Copy00-line01 +
      			$Sched3-Copy00-line02 +
      			$Sched3-Copy00-line03 +
      			$Sched3-Copy00-line04 +
      			$Sched3-Copy00-line05 +
      			$Sched3-Copy00-line07"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line14">
  <xsl:value-of select="$Sched3-Copy00-line13a +
      			$Sched3-Copy00-line13b +
      			$Sched3-Copy00-line13d +
      			$Sched3-Copy00-line13f +
      			$Sched3-Copy00-line13h +
      			$Sched3-Copy00-line13z"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line15">
  <xsl:value-of select="$Sched3-Copy00-line09 +
      			$Sched3-Copy00-line10 +
      			$Sched3-Copy00-line11 +
      			$Sched3-Copy00-line12 +
      			$Sched3-Copy00-line14"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-line06z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line06z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line10">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line10']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line13z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched3-Copy00-line13z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Sched3-Copy00-line01">
  <xsl:choose><xsl:when test="document('../Output/Form1116_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form1116_Copy00.xml')//copy00line35"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="108"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line02">
  <xsl:choose><xsl:when test="document('../Output/Form2441_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2441_Copy00.xml')//copy00line11"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line03">
  <xsl:choose><xsl:when test="document('../Output/Form8863_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8863_Copy00.xml')//copy00line19"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line04">
  <xsl:choose><xsl:when test="document('../Output/Form8880_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8880_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line05">
  <xsl:choose><xsl:when test="document('../Output/Form5695_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form5695_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06a">
  <xsl:choose><xsl:when test="document('../Output/Form3800_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form3800_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06b">
  <xsl:choose><xsl:when test="document('../Output/Form8801_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8801_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06c">
  <xsl:choose><xsl:when test="document('../Output/Form8839_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8839_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06d">
  <xsl:choose><xsl:when test="document('../Output/SchedR_Copy00.xml')">
    <xsl:value-of select="document('../Output/SchedR_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06e">
  <xsl:choose><xsl:when test="document('../Output/Form8910_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8910_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06f">
  <xsl:choose><xsl:when test="document('../Output/Form8936_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8936_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06g">
  <xsl:choose><xsl:when test="document('../Output/Form8396_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8396_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06h">
  <xsl:choose><xsl:when test="document('../Output/Form8859_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8859_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06i">
  <xsl:choose><xsl:when test="document('../Output/Form8834_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8834_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06j">
  <xsl:choose><xsl:when test="document('../Output/Form8911_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8911_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06k">
  <xsl:choose><xsl:when test="document('../Output/Form8912_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8912_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line06l">
  <xsl:choose><xsl:when test="document('../Output/Form8978_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8978_Copy00.xml')//copy00line14"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line09">
  <xsl:choose><xsl:when test="document('../Output/Form8962_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form8962_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line12">
  <xsl:choose><xsl:when test="document('../Output/Form4138_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form4138_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-line13a">
  <xsl:choose><xsl:when test="document('../Output/Form2439_Copy00.xml')">
    <xsl:value-of select="document('../Output/Form2439_Copy00.xml')//copy00linex"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="0"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline2">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTFNI">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTLN">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTLN_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoF">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoL">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-lineTSSNoM">
<xsl:value-of select="document('../Data/Sched3_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="Sched3-Copy00-linezline1">
<xsl:value-of select="document('../Data/Sched3_Copy00_linezline1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SchedA-Copy00-line">
<xsl:choose>
<xsl:when test="">
<xsl:value-of select=""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="cnum		!05q		!#####0		!$SchedA-Copy00-lineFS = MFS	!5000		!10000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line02">
<xsl:value-of select="$SchedB-Copy00-line01ad +
$SchedB-Copy00-line01bd +
$SchedB-Copy00-line01cd +
$SchedB-Copy00-line01dd +
$SchedB-Copy00-line01ed +
$SchedB-Copy00-line01fd +
$SchedB-Copy00-line01gd +
$SchedB-Copy00-line01hd +
$SchedB-Copy00-line01id +
$SchedB-Copy00-line01jd +
$SchedB-Copy00-line01kd +
$SchedB-Copy00-line01ld +
$SchedB-Copy00-line01md +
$SchedB-Copy00-line01nd"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line06">
<xsl:value-of select="$SchedB-Copy00-line05ad +
$SchedB-Copy00-line05bd +
$SchedB-Copy00-line05cd +
$SchedB-Copy00-line05dd +
$SchedB-Copy00-line05ed +
$SchedB-Copy00-line05fd +
$SchedB-Copy00-line05gd +
$SchedB-Copy00-line05hd +
$SchedB-Copy00-line05id +
$SchedB-Copy00-line05jd +
$SchedB-Copy00-line05kd +
$SchedB-Copy00-line05ld +
$SchedB-Copy00-line05md +
$SchedB-Copy00-line05nd"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineexempt">
<xsl:value-of select="$SchedB-Copy00-line01aint +
$SchedB-Copy00-line01bint +
$SchedB-Copy00-line01cint +
$SchedB-Copy00-line01dint +
$SchedB-Copy00-line01eint +
$SchedB-Copy00-line01fint +
$SchedB-Copy00-line01gint +
$SchedB-Copy00-line01hint +
$SchedB-Copy00-line01iint +
$SchedB-Copy00-line01jint +
$SchedB-Copy00-line01kint +
$SchedB-Copy00-line01lint +
$SchedB-Copy00-line01mint +
$SchedB-Copy00-line01nint"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-linequal">
<xsl:value-of select="$SchedB-Copy00-line05adiv +
$SchedB-Copy00-line05bdiv +
$SchedB-Copy00-line05cdiv +
$SchedB-Copy00-line05ddiv +
$SchedB-Copy00-line05ediv +
$SchedB-Copy00-line05fdiv +
$SchedB-Copy00-line05gdiv +
$SchedB-Copy00-line05hdiv +
$SchedB-Copy00-line05idiv +
$SchedB-Copy00-line05jdiv +
$SchedB-Copy00-line05kdiv +
$SchedB-Copy00-line05ldiv +
$SchedB-Copy00-line05mdiv +
$SchedB-Copy00-line05ndiv"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form8815_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8815_Copy01.xml')//copy0000"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy00line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01aint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01eint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01iint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05adiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ddiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ediv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05idiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ldiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ndiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line04">
<xsl:value-of select="format-number($SchedB-Copy00-line02 -  $SchedB-Copy00-line03, '#####0')"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a1n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a1n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a1y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a1y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a2n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a2n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07a2y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07a2y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line07b">
<xsl:value-of select="document('../Data/SchedB_Copy00_line07b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line08n">
<xsl:value-of select="document('../Data/SchedB_Copy00_line08n_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line08y">
<xsl:value-of select="document('../Data/SchedB_Copy00_line08y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01at">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05at">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy00_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineQOFy">
<xsl:value-of select="document('../Data/SchedD_Copy00_lineQOFy_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-lineQOFn">
<xsl:value-of select="document('../Data/SchedD_Copy00_lineQOFn_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-linec3000">
<xsl:value-of select="3000"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-linec1500">
<xsl:value-of select="1500"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-linecmin1">
<xsl:value-of select="-1.00"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SchedD-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line07">
<xsl:value-of select="$SchedD-Copy00-line01ah +
$SchedD-Copy00-line01bh +
$SchedD-Copy00-line02h +
$SchedD-Copy00-line03h +
$SchedD-Copy00-line04 +
$SchedD-Copy00-line05 +
$SchedD-Copy00-line06"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line15">
<xsl:value-of select="$SchedD-Copy00-line08ah +
$SchedD-Copy00-line08bh +
$SchedD-Copy00-line09h +
$SchedD-Copy00-line10h +
$SchedD-Copy00-line11 +
$SchedD-Copy00-line12 +
$SchedD-Copy00-line13 +
$SchedD-Copy00-line14"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line16">
<xsl:value-of select="$SchedD-Copy00-line07 +
$SchedD-Copy00-line15"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bh">
<xsl:value-of select="$SchedD-Copy00-line01bh +
$SchedD-Copy00-line01bg"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02h">
<xsl:value-of select="$SchedD-Copy00-line02h +
$SchedD-Copy00-line02g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03h">
<xsl:value-of select="$SchedD-Copy00-line03h +
$SchedD-Copy00-line03g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bh">
<xsl:value-of select="$SchedD-Copy00-line08bh +
$SchedD-Copy00-line08bg"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09h">
<xsl:value-of select="$SchedD-Copy00-line09h +
$SchedD-Copy00-line09g"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ae">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01be">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bg">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form6252_Copy01.xml')">
<xsl:value-of select="document('../Output/Form6252_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line05">
<xsl:choose>
<xsl:when test="document('../Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line06">
<xsl:choose>
<xsl:when test="document('../Output/CLCWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/CLCWkst_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ae">
<xsl:choose>
<xsl:when test="document('../Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bd">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08be">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bg">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10d">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10e">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10g">
<xsl:choose>
<xsl:when test="document('../Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line11">
<xsl:choose>
<xsl:when test="document('../Output/Form4797_Copy01.xml')">
<xsl:value-of select="document('../Output/Form4797_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../Output/CGD_Copy01.xml')">
<xsl:value-of select="document('../Output/CGD_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line18">
<xsl:choose>
<xsl:when test="document('../Output/28RGWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/28RGWkst_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../Output/US1250GWkst_Copy01.xml')">
<xsl:value-of select="document('../Output/US1250GWkst_Copy01.xml')//copy01line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line104003a">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy01.xml')//copy01line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ah">
<xsl:value-of select="$SchedD-Copy00-line01ad -  $SchedD-Copy00-line01ae"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bh">
<xsl:value-of select="$SchedD-Copy00-line01bd -  $SchedD-Copy00-line01be"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02h">
<xsl:value-of select="$SchedD-Copy00-line02d -  $SchedD-Copy00-line02e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03h">
<xsl:value-of select="$SchedD-Copy00-line03d -  $SchedD-Copy00-line03e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ah">
<xsl:value-of select="$SchedD-Copy00-line08ad -  $SchedD-Copy00-line08ae"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bh">
<xsl:value-of select="$SchedD-Copy00-line08bd -  $SchedD-Copy00-line08be"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09h">
<xsl:value-of select="$SchedD-Copy00-line09d -  $SchedD-Copy00-line09e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10h">
<xsl:value-of select="$SchedD-Copy00-line10e -  $SchedD-Copy00-line10e"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line16pos">
<xsl:value-of select="$SchedD-Copy00-line16 * $SchedD-Copy00-linecmin1"/>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21a">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16pos &gt;= $SchedD-Copy00-line21x">
<xsl:value-of select="$SchedD-Copy00-line21x"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedD-Copy00-line16pos"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line17y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line15 &gt; 0 and $SchedD-Copy00-line16 &gt; 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line17n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line17y = ''">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line18 = 0 and $SchedD-Copy00-line19 = 0 and not(document('../Output/Form4952-Copy00.xml'))">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt; 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line20y = ''">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line104003a &gt; 0">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line22y = ''">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &lt; 0">
<xsl:value-of select="$SchedD-Copy00-line21a * $SchedD-Copy00-linecmin1"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21x">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-lineFS = 'MFS'">
<xsl:value-of select="$SchedD-Copy00-linec1500"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedD-Copy00-linec3000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

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

<xsl:variable name="SchedDTaxWkst-Copy00-line36a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line10 +
$SchedDTaxWkst-Copy00-line21"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line41a">
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

<xsl:variable name="SchedDTaxWkst-Copy00-line215">
<xsl:value-of select="0.15"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line220">
<xsl:value-of select="0.20"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line225">
<xsl:value-of select="0.25"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line228">
<xsl:value-of select="0.28"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line01">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line02">
<xsl:choose>
<xsl:when test="document('../Output/Form1040_Copy00.xml')">
<xsl:value-of select="document('../Output/Form1040_Copy00.xml')//copy00line03a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../Output/Form4952_Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952_Copy00.xml')//copy00line04c"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line115">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line116">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line118">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line119">
<xsl:choose>
<xsl:when test="document('../Output/SchedD_Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD_Copy00.xml')//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line31a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line30 * $SchedDTaxWkst-Copy00-line215"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line34a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33 * $SchedDTaxWkst-Copy00-line220"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line40a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39 * $SchedDTaxWkst-Copy00-line225"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line43a">
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

<xsl:variable name="SchedDTaxWkst-Copy00-line35a">
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

<xsl:variable name="SchedDTaxWkst-Copy00-line38a">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line37 >= $SchedDTaxWkst-Copy00-line36">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36 - $SchedDTaxWkst-Copy00-line37"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line39a">
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
<xsl:value-of select="$SchedDTaxWkst-Copy00-line10 -  $SchedDTaxWkst-Copy00-line12"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line22">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line16 -  $SchedDTaxWkst-Copy00-line17"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line33a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line23 -  $SchedDTaxWkst-Copy00-line32"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line42a">
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01 -  $SchedDTaxWkst-Copy00-line41"/>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line15">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'   or $SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="41675"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="83350"/>
</xsl:when>
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
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="340100"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="170050"/>
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
<xsl:value-of select="$SchedDTaxWkst-Copy00-line22"/>
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

<xsl:variable name="SchedDTaxWkst-Copy00-line26">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'S'">
<xsl:value-of select="459750"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFS'">
<xsl:value-of select="258600"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'MFJ' or $SchedDTaxWkst-Copy00-lineFS = 'QSS'">
<xsl:value-of select="517200"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-lineFS = 'HOH'">
<xsl:value-of select="488500"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
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
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line33a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line34">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line34a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line35">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line35a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line36">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line36a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line37">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line01"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line38">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line38a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line39">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line39a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line40">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line119 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line40a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line41">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line41a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line42">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line42a"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedDTaxWkst-Copy00-line43">
<xsl:choose>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line16">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line01 = $SchedDTaxWkst-Copy00-line32">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:when test="$SchedDTaxWkst-Copy00-line118 = 0">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedDTaxWkst-Copy00-line43a"/>
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


<xsl:variable name="SSA_1099-Copy00-lineBox03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06'])) !=''">
  <xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='SSA_1099-Copy00-lineBox06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox05">
  <xsl:choose>
  <xsl:when test="$SSA_1099-Copy00-lineBox04 >= $SSA_1099-Copy00-lineBox03">
    <xsl:value-of select="0"/>
  </xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SSA_1099-Copy00-lineBox03 - $SSA_1099-Copy00-lineBox04"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
  

<xsl:variable name="SSA_1099-Copy00-lineBox03d1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03d8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox03e8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox03e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04d8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04d8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e1">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e1_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e2">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e2_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e3">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e3_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e4">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e4_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e5">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e5_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e6">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e6_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e7">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e7_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox04e8">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox04e8_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07a">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07a_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox07b">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox07b_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineBox08">
<xsl:value-of select="document('../Data/SSA_1099_Copy00_lineBox08_text.xml')//text"/>
    </xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTFNI">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTLN">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoF">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoL">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>


<xsl:variable name="SSA_1099-Copy00-lineTSSNoM">
<xsl:choose><xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
    <xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
    </xsl:when><xsl:otherwise><xsl:value-of select="''"/></xsl:otherwise></xsl:choose></xsl:variable>



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

  <xsl:include href="taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Bkg-Copy00">

<copy00lineApart color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineApart"/>
    </copy00lineApart>
  

<copy00lineFS color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineSSSNoF color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoF"/>
    </copy00lineSSSNoF>
  

<copy00lineSSSNoL color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoL"/>
    </copy00lineSSSNoL>
  

<copy00lineSSSNoM color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineSSSNoM"/>
    </copy00lineSSSNoM>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Bkg-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="CLCWkst-Copy00">

<copy00line03 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line07 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line12 color="green">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line01 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line05 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line09 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line04 color="blue">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line08 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line11 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line13 color="cyan">
  <xsl:value-of select="format-number($CLCWkst-Copy00-line13, '#####0')"/>
  </copy00line13>

</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1040-Copy00">

<copy00line01z color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line01z, '#####0')"/>
  </copy00line01z>


<copy00line09 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line14 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line16 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line18 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line21 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line24 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line24, '#####0')"/>
  </copy00line24>


<copy00line25b color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line25b, '#####0')"/>
  </copy00line25b>


<copy00line25d color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line25d, '#####0')"/>
  </copy00line25d>


<copy00line32 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line32, '#####0')"/>
  </copy00line32>


<copy00line33 color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line33, '#####0')"/>
  </copy00line33>


<copy00line02a color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line02a, '#####0')"/>
  </copy00line02a>


<copy00line03a color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line03a, '#####0')"/>
  </copy00line03a>


<copy00line37a color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line37a, '#####0')"/>
  </copy00line37a>


<copy00line04b color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line04b, '#####0')"/>
  </copy00line04b>


<copy00line05b color="green">
  <xsl:value-of select="format-number($Form1040-Copy00-line05b, '#####0')"/>
  </copy00line05b>


<copy00linec2000 color="blue">
  <xsl:value-of select="format-number($Form1040-Copy00-linec2000, '#####0')"/>
  </copy00linec2000>


<copy00line01b color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line01b, '#####0')"/>
  </copy00line01b>


<copy00line01c color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line01c, '#####0')"/>
  </copy00line01c>


<copy00line01d color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line01d, '#####0')"/>
  </copy00line01d>


<copy00line01h color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line01h, '#####0')"/>
  </copy00line01h>


<copy00line01i color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line01i, '#####0')"/>
  </copy00line01i>


<copy00line25c color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line25c, '#####0')"/>
  </copy00line25c>


<copy00line26 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line26, '#####0')"/>
  </copy00line26>


<copy00line27 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line27, '#####0')"/>
  </copy00line27>


<copy00line36 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line36, '#####0')"/>
  </copy00line36>


<copy00line38 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line38, '#####0')"/>
  </copy00line38>


<copy00line01a color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line01a, '#####0')"/>
  </copy00line01a>


<copy00line01e color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line01e, '#####0')"/>
  </copy00line01e>


<copy00line01f color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line01f, '#####0')"/>
  </copy00line01f>


<copy00line01g color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line01g, '#####0')"/>
  </copy00line01g>


<copy00lineintTot color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineintTot, '#####0')"/>
  </copy00lineintTot>


<copy00line03b color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line03b, '#####0')"/>
  </copy00line03b>


<copy00line06a color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line06a, '#####0')"/>
  </copy00line06a>


<copy00line06b color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line06b, '#####0')"/>
  </copy00line06b>


<copy00line07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line12 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line17 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line17, '#####0')"/>
  </copy00line17>


<copy00line19 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line20 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line20, '#####0')"/>
  </copy00line20>


<copy00line23 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line25a color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line25a, '#####0')"/>
  </copy00line25a>


<copy00line28 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line28, '#####0')"/>
  </copy00line28>


<copy00line29 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line29, '#####0')"/>
  </copy00line29>


<copy00line31 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line31, '#####0')"/>
  </copy00line31>


<copy00line35a color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line35a, '#####0')"/>
  </copy00line35a>


<copy00lineD15 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineD15, '#####0')"/>
  </copy00lineD15>


<copy00lineD16 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineD16, '#####0')"/>
  </copy00lineD16>


<copy00lineD18 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineD18, '#####0')"/>
  </copy00lineD18>


<copy00lineD19 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineD19, '#####0')"/>
  </copy00lineD19>


<copy00lineSDTW color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineSDTW, '#####0')"/>
  </copy00lineSDTW>


<copy00lineQDCG color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineQDCG, '#####0')"/>
  </copy00lineQDCG>


<copy00line4952 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line4952, '#####0')"/>
  </copy00line4952>


<copy00line8814 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line8814, '#####0')"/>
  </copy00line8814>


<copy00line4972 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line4972, '#####0')"/>
  </copy00line4972>


<copy00line962 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line962, '#####0')"/>
  </copy00line962>


<copy00lineECR color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineECR, '#####0')"/>
  </copy00lineECR>


<copy00line1291TAX color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1291TAX, '#####0')"/>
  </copy00line1291TAX>


<copy00lineForm8978 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineForm8978, '#####0')"/>
  </copy00lineForm8978>


<copy00line965 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line965, '#####0')"/>
  </copy00line965>


<copy00line965INC color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line965INC, '#####0')"/>
  </copy00line965INC>


<copy00line1099rtax01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax01, '#####0')"/>
  </copy00line1099rtax01>


<copy00line1099rtax02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax02, '#####0')"/>
  </copy00line1099rtax02>


<copy00line1099rtax03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax03, '#####0')"/>
  </copy00line1099rtax03>


<copy00line1099rtax04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax04, '#####0')"/>
  </copy00line1099rtax04>


<copy00line1099rtax05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax05, '#####0')"/>
  </copy00line1099rtax05>


<copy00line1099rtax06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax06, '#####0')"/>
  </copy00line1099rtax06>


<copy00line1099rtax07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax07, '#####0')"/>
  </copy00line1099rtax07>


<copy00line1099rtax08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax08, '#####0')"/>
  </copy00line1099rtax08>


<copy00line1099rtax09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax09, '#####0')"/>
  </copy00line1099rtax09>


<copy00line1099rtax10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line1099rtax10, '#####0')"/>
  </copy00line1099rtax10>


<copy00lineexempt01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt01, '#####0')"/>
  </copy00lineexempt01>


<copy00lineexempt02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt02, '#####0')"/>
  </copy00lineexempt02>


<copy00lineexempt03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt03, '#####0')"/>
  </copy00lineexempt03>


<copy00lineexempt04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt04, '#####0')"/>
  </copy00lineexempt04>


<copy00lineexempt05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt05, '#####0')"/>
  </copy00lineexempt05>


<copy00lineexempt06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt06, '#####0')"/>
  </copy00lineexempt06>


<copy00lineexempt07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt07, '#####0')"/>
  </copy00lineexempt07>


<copy00lineexempt08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt08, '#####0')"/>
  </copy00lineexempt08>


<copy00lineexempt09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt09, '#####0')"/>
  </copy00lineexempt09>


<copy00lineexempt10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-lineexempt10, '#####0')"/>
  </copy00lineexempt10>


<copy00linequal01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal01, '#####0')"/>
  </copy00linequal01>


<copy00linequal02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal02, '#####0')"/>
  </copy00linequal02>


<copy00linequal03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal03, '#####0')"/>
  </copy00linequal03>


<copy00linequal04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal04, '#####0')"/>
  </copy00linequal04>


<copy00linequal05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal05, '#####0')"/>
  </copy00linequal05>


<copy00linequal06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal06, '#####0')"/>
  </copy00linequal06>


<copy00linequal07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal07, '#####0')"/>
  </copy00linequal07>


<copy00linequal08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal08, '#####0')"/>
  </copy00linequal08>


<copy00linequal09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal09, '#####0')"/>
  </copy00linequal09>


<copy00linequal10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linequal10, '#####0')"/>
  </copy00linequal10>


<copy00liner01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner01, '#####0')"/>
  </copy00liner01>


<copy00liner02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner02, '#####0')"/>
  </copy00liner02>


<copy00liner03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner03, '#####0')"/>
  </copy00liner03>


<copy00liner04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner04, '#####0')"/>
  </copy00liner04>


<copy00liner05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner05, '#####0')"/>
  </copy00liner05>


<copy00liner06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner06, '#####0')"/>
  </copy00liner06>


<copy00liner07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner07, '#####0')"/>
  </copy00liner07>


<copy00liner08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner08, '#####0')"/>
  </copy00liner08>


<copy00liner09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner09, '#####0')"/>
  </copy00liner09>


<copy00liner10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-liner10, '#####0')"/>
  </copy00liner10>


<copy00linet01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet01, '#####0')"/>
  </copy00linet01>


<copy00linet02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet02, '#####0')"/>
  </copy00linet02>


<copy00linet03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet03, '#####0')"/>
  </copy00linet03>


<copy00linet04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet04, '#####0')"/>
  </copy00linet04>


<copy00linet05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet05, '#####0')"/>
  </copy00linet05>


<copy00linet06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet06, '#####0')"/>
  </copy00linet06>


<copy00linet07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet07, '#####0')"/>
  </copy00linet07>


<copy00linet08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet08, '#####0')"/>
  </copy00linet08>


<copy00linet09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet09, '#####0')"/>
  </copy00linet09>


<copy00linet10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linet10, '#####0')"/>
  </copy00linet10>


<copy00linept01 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept01, '#####0')"/>
  </copy00linept01>


<copy00linept02 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept02, '#####0')"/>
  </copy00linept02>


<copy00linept03 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept03, '#####0')"/>
  </copy00linept03>


<copy00linept04 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept04, '#####0')"/>
  </copy00linept04>


<copy00linept05 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept05, '#####0')"/>
  </copy00linept05>


<copy00linept06 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept06, '#####0')"/>
  </copy00linept06>


<copy00linept07 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept07, '#####0')"/>
  </copy00linept07>


<copy00linept08 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept08, '#####0')"/>
  </copy00linept08>


<copy00linept09 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept09, '#####0')"/>
  </copy00linept09>


<copy00linept10 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-linept10, '#####0')"/>
  </copy00linept10>


<copy00line15 color="cyan">
  <xsl:value-of select="format-number($Form1040-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line22 color="cyan">
  <xsl:value-of select="format-number($Form1040-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line34 color="cyan">
  <xsl:value-of select="format-number($Form1040-Copy00-line34, '#####0')"/>
  </copy00line34>


<copy00line37 color="cyan">
  <xsl:value-of select="format-number($Form1040-Copy00-line37, '#####0')"/>
  </copy00line37>


<copy00line02b color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line02b, '#####0')"/>
  </copy00line02b>


<copy00line11 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line35 color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line35, '#####0')"/>
  </copy00line35>


<copy00line35a color="purple">
  <xsl:value-of select="format-number($Form1040-Copy00-line35a, '#####0')"/>
  </copy00line35a>


<copy00lineCalc16 color="blue">
  <xsl:value-of select="format-number($Form1040-Copy00-lineCalc16, '#####0')"/>
  </copy00lineCalc16>


<copy00line2name color="blue">
    <xsl:value-of select="$Form1040-Copy00-line2name"/>
    </copy00line2name>
  

<copy00line06cCk color="blue">
    <xsl:value-of select="$Form1040-Copy00-line06cCk"/>
    </copy00line06cCk>
  

<copy00line07Ck color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07Ck"/>
    </copy00line07Ck>
  

<copy00line35aCk color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35aCk"/>
    </copy00line35aCk>
  

<copy00line35b1 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b1"/>
    </copy00line35b1>
  

<copy00line35b2 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b2"/>
    </copy00line35b2>
  

<copy00line35b3 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b3"/>
    </copy00line35b3>
  

<copy00line35b4 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b4"/>
    </copy00line35b4>
  

<copy00line35b5 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b5"/>
    </copy00line35b5>
  

<copy00line35b6 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b6"/>
    </copy00line35b6>
  

<copy00line35b7 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b7"/>
    </copy00line35b7>
  

<copy00line35b8 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b8"/>
    </copy00line35b8>
  

<copy00line35b9 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35b9"/>
    </copy00line35b9>
  

<copy00line35cCkg color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35cCkg"/>
    </copy00line35cCkg>
  

<copy00line35cSvg color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35cSvg"/>
    </copy00line35cSvg>
  

<copy00line35d10 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d10"/>
    </copy00line35d10>
  

<copy00line35d11 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d11"/>
    </copy00line35d11>
  

<copy00line35d1 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d1"/>
    </copy00line35d1>
  

<copy00line35d12 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d12"/>
    </copy00line35d12>
  

<copy00line35d13 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d13"/>
    </copy00line35d13>
  

<copy00line35d14 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d14"/>
    </copy00line35d14>
  

<copy00line35d15 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d15"/>
    </copy00line35d15>
  

<copy00line35d16 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d16"/>
    </copy00line35d16>
  

<copy00line35d17 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d17"/>
    </copy00line35d17>
  

<copy00line35d2 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d2"/>
    </copy00line35d2>
  

<copy00line35d3 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d3"/>
    </copy00line35d3>
  

<copy00line35d4 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d4"/>
    </copy00line35d4>
  

<copy00line35d5 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d5"/>
    </copy00line35d5>
  

<copy00line35d6 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d6"/>
    </copy00line35d6>
  

<copy00line35d7 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d7"/>
    </copy00line35d7>
  

<copy00line35d8 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d8"/>
    </copy00line35d8>
  

<copy00line35d9 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line35d9"/>
    </copy00line35d9>
  

<copy00line39N color="blue">
    <xsl:value-of select="$Form1040-Copy00-line39N"/>
    </copy00line39N>
  

<copy00line39Y color="blue">
    <xsl:value-of select="$Form1040-Copy00-line39Y"/>
    </copy00line39Y>
  

<copy00line421 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line421"/>
    </copy00line421>
  

<copy00line422 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line422"/>
    </copy00line422>
  

<copy00line423 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line423"/>
    </copy00line423>
  

<copy00line424 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line424"/>
    </copy00line424>
  

<copy00line425 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line425"/>
    </copy00line425>
  

<copy00line431 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line431"/>
    </copy00line431>
  

<copy00line432 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line432"/>
    </copy00line432>
  

<copy00line433 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line433"/>
    </copy00line433>
  

<copy00line434 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line434"/>
    </copy00line434>
  

<copy00line435 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line435"/>
    </copy00line435>
  

<copy00line436 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line436"/>
    </copy00line436>
  

<copy00line441 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line441"/>
    </copy00line441>
  

<copy00line442 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line442"/>
    </copy00line442>
  

<copy00line443 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line443"/>
    </copy00line443>
  

<copy00line444 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line444"/>
    </copy00line444>
  

<copy00line445 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line445"/>
    </copy00line445>
  

<copy00line4972Ck color="blue">
    <xsl:value-of select="$Form1040-Copy00-line4972Ck"/>
    </copy00line4972Ck>
  

<copy00line8814Ck color="blue">
    <xsl:value-of select="$Form1040-Copy00-line8814Ck"/>
    </copy00line8814Ck>
  

<copy00lineaddr1 color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineaddr1"/>
    </copy00lineaddr1>
  

<copy00lineaddr2 color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineaddr2"/>
    </copy00lineaddr2>
  

<copy00lineaptNo color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineaptNo"/>
    </copy00lineaptNo>
  

<copy00linecampme color="blue">
    <xsl:value-of select="$Form1040-Copy00-linecampme"/>
    </copy00linecampme>
  

<copy00linecampS color="blue">
    <xsl:value-of select="$Form1040-Copy00-linecampS"/>
    </copy00linecampS>
  

<copy00linechild color="blue">
    <xsl:value-of select="$Form1040-Copy00-linechild"/>
    </copy00linechild>
  

<copy00linecity color="blue">
    <xsl:value-of select="$Form1040-Copy00-linecity"/>
    </copy00linecity>
  

<copy00lined1cod color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1cod"/>
    </copy00lined1cod>
  

<copy00lined1CTC color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1CTC"/>
    </copy00lined1CTC>
  

<copy00lined1LN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1LN"/>
    </copy00lined1LN>
  

<copy00lined1name color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1name"/>
    </copy00lined1name>
  

<copy00lined1name color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1name"/>
    </copy00lined1name>
  

<copy00lined1rel color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1rel"/>
    </copy00lined1rel>
  

<copy00lined1SF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1SF"/>
    </copy00lined1SF>
  

<copy00lined1SL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1SL"/>
    </copy00lined1SL>
  

<copy00lined1SM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined1SM"/>
    </copy00lined1SM>
  

<copy00lined2cod color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2cod"/>
    </copy00lined2cod>
  

<copy00lined2CTC color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2CTC"/>
    </copy00lined2CTC>
  

<copy00lined2LN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2LN"/>
    </copy00lined2LN>
  

<copy00lined2name color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2name"/>
    </copy00lined2name>
  

<copy00lined2rel color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2rel"/>
    </copy00lined2rel>
  

<copy00lined2SF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2SF"/>
    </copy00lined2SF>
  

<copy00lined2SL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2SL"/>
    </copy00lined2SL>
  

<copy00lined2SM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined2SM"/>
    </copy00lined2SM>
  

<copy00lined3cod color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3cod"/>
    </copy00lined3cod>
  

<copy00lined3CTC color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3CTC"/>
    </copy00lined3CTC>
  

<copy00lined3LN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3LN"/>
    </copy00lined3LN>
  

<copy00lined3name color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3name"/>
    </copy00lined3name>
  

<copy00lined3rel color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3rel"/>
    </copy00lined3rel>
  

<copy00lined3SF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3SF"/>
    </copy00lined3SF>
  

<copy00lined3SL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3SL"/>
    </copy00lined3SL>
  

<copy00lined3SM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined3SM"/>
    </copy00lined3SM>
  

<copy00lined4cod color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4cod"/>
    </copy00lined4cod>
  

<copy00lined4CTC color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4CTC"/>
    </copy00lined4CTC>
  

<copy00lined4LN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4LN"/>
    </copy00lined4LN>
  

<copy00lined4name color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4name"/>
    </copy00lined4name>
  

<copy00lined4rel color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4rel"/>
    </copy00lined4rel>
  

<copy00lined4SF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4SF"/>
    </copy00lined4SF>
  

<copy00lined4SL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4SL"/>
    </copy00lined4SL>
  

<copy00lined4SM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined4SM"/>
    </copy00lined4SM>
  

<copy00lined5cod color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5cod"/>
    </copy00lined5cod>
  

<copy00lined5CTC color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5CTC"/>
    </copy00lined5CTC>
  

<copy00lined5LN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5LN"/>
    </copy00lined5LN>
  

<copy00lined5rel color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5rel"/>
    </copy00lined5rel>
  

<copy00lined5SF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5SF"/>
    </copy00lined5SF>
  

<copy00lined5SL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5SL"/>
    </copy00lined5SL>
  

<copy00lined5SM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lined5SM"/>
    </copy00lined5SM>
  

<copy00linedgt4 color="blue">
    <xsl:value-of select="$Form1040-Copy00-linedgt4"/>
    </copy00linedgt4>
  

<copy00linedigN color="blue">
    <xsl:value-of select="$Form1040-Copy00-linedigN"/>
    </copy00linedigN>
  

<copy00linedigY color="blue">
    <xsl:value-of select="$Form1040-Copy00-linedigY"/>
    </copy00linedigY>
  

<copy00lineDname color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineDname"/>
    </copy00lineDname>
  

<copy00lineDphone color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineDphone"/>
    </copy00lineDphone>
  

<copy00lineFaddr color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFaddr"/>
    </copy00lineFaddr>
  

<copy00lineFCntry color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFCntry"/>
    </copy00lineFCntry>
  

<copy00lineFEIN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFEIN"/>
    </copy00lineFEIN>
  

<copy00lineFname color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFname"/>
    </copy00lineFname>
  

<copy00lineFphone color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFphone"/>
    </copy00lineFphone>
  

<copy00lineFprov color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFprov"/>
    </copy00lineFprov>
  

<copy00lineFzip color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFzip"/>
    </copy00lineFzip>
  

<copy00lineOther color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineOther"/>
    </copy00lineOther>
  

<copy00linePdate color="blue">
    <xsl:value-of select="$Form1040-Copy00-linePdate"/>
    </copy00linePdate>
  

<copy00linePname color="blue">
    <xsl:value-of select="$Form1040-Copy00-linePname"/>
    </copy00linePname>
  

<copy00linePTIN color="blue">
    <xsl:value-of select="$Form1040-Copy00-linePTIN"/>
    </copy00linePTIN>
  

<copy00lineSa58 color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSa58"/>
    </copy00lineSa58>
  

<copy00lineSblind color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSblind"/>
    </copy00lineSblind>
  

<copy00lineSdate color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSdate"/>
    </copy00lineSdate>
  

<copy00lineSdep color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSdep"/>
    </copy00lineSdep>
  

<copy00lineSECk color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSECk"/>
    </copy00lineSECk>
  

<copy00lineSiUali color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSiUali"/>
    </copy00lineSiUali>
  

<copy00lineSocc color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSocc"/>
    </copy00lineSocc>
  

<copy00lineST color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineST"/>
    </copy00lineST>
  

<copy00lineTdate color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTdate"/>
    </copy00lineTdate>
  

<copy00lineTocc color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTocc"/>
    </copy00lineTocc>
  

<copy00lineYa58 color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineYa58"/>
    </copy00lineYa58>
  

<copy00lineYblind color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineYblind"/>
    </copy00lineYblind>
  

<copy00lineyoudep color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineyoudep"/>
    </copy00lineyoudep>
  

<copy00linezip color="blue">
    <xsl:value-of select="$Form1040-Copy00-linezip"/>
    </copy00linezip>
  

<copy00linex00 color="blue">
    <xsl:value-of select="$Form1040-Copy00-linex00"/>
    </copy00linex00>
  

<copy00line07a01 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a01"/>
    </copy00line07a01>
  

<copy00line07a02 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a02"/>
    </copy00line07a02>
  

<copy00line07a03 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a03"/>
    </copy00line07a03>
  

<copy00line07a04 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a04"/>
    </copy00line07a04>
  

<copy00line07a05 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a05"/>
    </copy00line07a05>
  

<copy00line07a06 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a06"/>
    </copy00line07a06>
  

<copy00line07a07 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a07"/>
    </copy00line07a07>
  

<copy00line07a08 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a08"/>
    </copy00line07a08>
  

<copy00line07a09 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a09"/>
    </copy00line07a09>
  

<copy00line07a10 color="blue">
    <xsl:value-of select="$Form1040-Copy00-line07a10"/>
    </copy00line07a10>
  

<copy00lineFS color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineSSSNoF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSSSNoF"/>
    </copy00lineSSSNoF>
  

<copy00lineSSSNoL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSSSNoL"/>
    </copy00lineSSSNoL>
  

<copy00lineSSSNoM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineSSSNoM"/>
    </copy00lineSSSNoM>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  

<copy00lineira01 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira01, '#####0')"/>
  </copy00lineira01>


<copy00lineira02 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira02, '#####0')"/>
  </copy00lineira02>


<copy00lineira03 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira03, '#####0')"/>
  </copy00lineira03>


<copy00lineira04 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira04, '#####0')"/>
  </copy00lineira04>


<copy00lineira05 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira05, '#####0')"/>
  </copy00lineira05>


<copy00lineira06 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira06, '#####0')"/>
  </copy00lineira06>


<copy00lineira07 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira07, '#####0')"/>
  </copy00lineira07>


<copy00lineira08 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira08, '#####0')"/>
  </copy00lineira08>


<copy00lineira09 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira09, '#####0')"/>
  </copy00lineira09>


<copy00lineira10 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-lineira10, '#####0')"/>
  </copy00lineira10>


<copy00linepen01 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen01, '#####0')"/>
  </copy00linepen01>


<copy00linepen02 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen02, '#####0')"/>
  </copy00linepen02>


<copy00linepen03 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen03, '#####0')"/>
  </copy00linepen03>


<copy00linepen04 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen04, '#####0')"/>
  </copy00linepen04>


<copy00linepen05 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen05, '#####0')"/>
  </copy00linepen05>


<copy00linepen06 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen06, '#####0')"/>
  </copy00linepen06>


<copy00linepen07 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen07, '#####0')"/>
  </copy00linepen07>


<copy00linepen08 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen08, '#####0')"/>
  </copy00linepen08>


<copy00linepen09 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen09, '#####0')"/>
  </copy00linepen09>


<copy00linepen10 color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-linepen10, '#####0')"/>
  </copy00linepen10>


<copy00line16a color="red">
  <xsl:value-of select="format-number($Form1040-Copy00-line16a, '#####0')"/>
  </copy00line16a>


<copy00lineS color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineS"/>
    </copy00lineS>
  

<copy00lineMFJ color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineMFJ"/>
    </copy00lineMFJ>
  

<copy00lineMFS color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineMFS"/>
    </copy00lineMFS>
  

<copy00lineHOH color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineHOH"/>
    </copy00lineHOH>
  

<copy00lineQSS color="blue">
    <xsl:value-of select="$Form1040-Copy00-lineQSS"/>
    </copy00lineQSS>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099div-Copy00">

<copy00line01a color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line01a, '#####0')"/>
  </copy00line01a>


<copy00line01b color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line01b, '#####0')"/>
  </copy00line01b>


<copy00line02a color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02a, '#####0')"/>
  </copy00line02a>


<copy00line02b color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02b, '#####0')"/>
  </copy00line02b>


<copy00line02c color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02c, '#####0')"/>
  </copy00line02c>


<copy00line02d color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02d, '#####0')"/>
  </copy00line02d>


<copy00line02e color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02e, '#####0')"/>
  </copy00line02e>


<copy00line02f color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line02f, '#####0')"/>
  </copy00line02f>


<copy00line03 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line09 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line12 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line16a color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line16a, '#####0')"/>
  </copy00line16a>


<copy00line16b color="red">
  <xsl:value-of select="format-number($Form1099div-Copy00-line16b, '#####0')"/>
  </copy00line16b>


<copy00line08 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line08"/>
    </copy00line08>
  

<copy00line14a color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line14a"/>
    </copy00line14a>
  

<copy00line14b color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line14b"/>
    </copy00line14b>
  

<copy00line15a color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line15a"/>
    </copy00line15a>
  

<copy00line15b color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line15b"/>
    </copy00line15b>
  

<copy00line20yr color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line20yr"/>
    </copy00line20yr>
  

<copy00line2TIN color="blue">
    <xsl:value-of select="$Form1099div-Copy00-line2TIN"/>
    </copy00line2TIN>
  

<copy00lineactNo color="blue">
    <xsl:value-of select="$Form1099div-Copy00-lineactNo"/>
    </copy00lineactNo>
  

<copy00linecorr color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linecorr"/>
    </copy00linecorr>
  

<copy00lineFATCA color="blue">
    <xsl:value-of select="$Form1099div-Copy00-lineFATCA"/>
    </copy00lineFATCA>
  

<copy00linepadd1 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepadd1"/>
    </copy00linepadd1>
  

<copy00linepadd2 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepadd2"/>
    </copy00linepadd2>
  

<copy00linepcity color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepcity"/>
    </copy00linepcity>
  

<copy00linepctry color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepctry"/>
    </copy00linepctry>
  

<copy00linepnam1 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepnam1"/>
    </copy00linepnam1>
  

<copy00linepnam2 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepnam2"/>
    </copy00linepnam2>
  

<copy00linepST color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepST"/>
    </copy00linepST>
  

<copy00lineptel color="blue">
    <xsl:value-of select="$Form1099div-Copy00-lineptel"/>
    </copy00lineptel>
  

<copy00linepTIN color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepTIN"/>
    </copy00linepTIN>
  

<copy00linepzip color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linepzip"/>
    </copy00linepzip>
  

<copy00lineraddr1 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-lineraddr1"/>
    </copy00lineraddr1>
  

<copy00lineraddr2 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-lineraddr2"/>
    </copy00lineraddr2>
  

<copy00linercity color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linercity"/>
    </copy00linercity>
  

<copy00linerctry color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linerctry"/>
    </copy00linerctry>
  

<copy00linername1 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linername1"/>
    </copy00linername1>
  

<copy00linername2 color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linername2"/>
    </copy00linername2>
  

<copy00linerST color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linerST"/>
    </copy00linerST>
  

<copy00linerTIN color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linerTIN"/>
    </copy00linerTIN>
  

<copy00linerzip color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linerzip"/>
    </copy00linerzip>
  

<copy00linevoid color="blue">
    <xsl:value-of select="$Form1099div-Copy00-linevoid"/>
    </copy00linevoid>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099g-Copy00">

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
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099int-Copy00">

<copy00line01 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line08 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line09 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line10 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line14 color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line17a color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line17a, '#####0')"/>
  </copy00line17a>


<copy00line17b color="red">
  <xsl:value-of select="format-number($Form1099int-Copy00-line17b, '#####0')"/>
  </copy00line17b>


<copy00line07 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line07"/>
    </copy00line07>
  

<copy00line15a color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line15a"/>
    </copy00line15a>
  

<copy00line15b color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line15b"/>
    </copy00line15b>
  

<copy00line16a color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line16a"/>
    </copy00line16a>
  

<copy00line16b color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line16b"/>
    </copy00line16b>
  

<copy00line20yr color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line20yr"/>
    </copy00line20yr>
  

<copy00line2TIN color="blue">
    <xsl:value-of select="$Form1099int-Copy00-line2TIN"/>
    </copy00line2TIN>
  

<copy00lineactNo color="blue">
    <xsl:value-of select="$Form1099int-Copy00-lineactNo"/>
    </copy00lineactNo>
  

<copy00linecorr color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linecorr"/>
    </copy00linecorr>
  

<copy00lineFATCA color="blue">
    <xsl:value-of select="$Form1099int-Copy00-lineFATCA"/>
    </copy00lineFATCA>
  

<copy00linepadd1 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepadd1"/>
    </copy00linepadd1>
  

<copy00linepadd2 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepadd2"/>
    </copy00linepadd2>
  

<copy00linepcity color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepcity"/>
    </copy00linepcity>
  

<copy00linepcnty color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepcnty"/>
    </copy00linepcnty>
  

<copy00linepctry color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepctry"/>
    </copy00linepctry>
  

<copy00linepnam1 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepnam1"/>
    </copy00linepnam1>
  

<copy00linepnam2 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepnam2"/>
    </copy00linepnam2>
  

<copy00linepRTN color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepRTN"/>
    </copy00linepRTN>
  

<copy00linepST color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepST"/>
    </copy00linepST>
  

<copy00lineptel color="blue">
    <xsl:value-of select="$Form1099int-Copy00-lineptel"/>
    </copy00lineptel>
  

<copy00linepTIN color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepTIN"/>
    </copy00linepTIN>
  

<copy00linepzip color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linepzip"/>
    </copy00linepzip>
  

<copy00lineradd1 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-lineradd1"/>
    </copy00lineradd1>
  

<copy00lineradd2 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-lineradd2"/>
    </copy00lineradd2>
  

<copy00linercity color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linercity"/>
    </copy00linercity>
  

<copy00linercnty color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linercnty"/>
    </copy00linercnty>
  

<copy00linerctry color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linerctry"/>
    </copy00linerctry>
  

<copy00linernam1 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linernam1"/>
    </copy00linernam1>
  

<copy00linernam2 color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linernam2"/>
    </copy00linernam2>
  

<copy00linerST color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linerST"/>
    </copy00linerST>
  

<copy00linerTIN color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linerTIN"/>
    </copy00linerTIN>
  

<copy00linerzip color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linerzip"/>
    </copy00linerzip>
  

<copy00linevoid color="blue">
    <xsl:value-of select="$Form1099int-Copy00-linevoid"/>
    </copy00linevoid>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099r-Copy00">

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



tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin







tlin





</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form1099ssa-Copy00">

<copy00lineBox03 color="red">
  <xsl:value-of select="format-number($Form1099ssa-Copy00-lineBox03, '#####0')"/>
  </copy00lineBox03>


<copy00lineBox04 color="red">
  <xsl:value-of select="format-number($Form1099ssa-Copy00-lineBox04, '#####0')"/>
  </copy00lineBox04>


<copy00lineBox06 color="red">
  <xsl:value-of select="format-number($Form1099ssa-Copy00-lineBox06, '#####0')"/>
  </copy00lineBox06>


<copy00lineBox05 color="cyan">
  <xsl:value-of select="format-number($Form1099ssa-Copy00-lineBox05, '#####0')"/>
  </copy00lineBox05>


<copy00lineBox03d1 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d1"/>
    </copy00lineBox03d1>
  

<copy00lineBox03d2 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d2"/>
    </copy00lineBox03d2>
  

<copy00lineBox03d3 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d3"/>
    </copy00lineBox03d3>
  

<copy00lineBox03d4 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d4"/>
    </copy00lineBox03d4>
  

<copy00lineBox03d5 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d5"/>
    </copy00lineBox03d5>
  

<copy00lineBox03d6 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d6"/>
    </copy00lineBox03d6>
  

<copy00lineBox03d7 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d7"/>
    </copy00lineBox03d7>
  

<copy00lineBox03d8 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03d8"/>
    </copy00lineBox03d8>
  

<copy00lineBox03e1 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e1"/>
    </copy00lineBox03e1>
  

<copy00lineBox03e2 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e2"/>
    </copy00lineBox03e2>
  

<copy00lineBox03e3 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e3"/>
    </copy00lineBox03e3>
  

<copy00lineBox03e4 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e4"/>
    </copy00lineBox03e4>
  

<copy00lineBox03e5 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e5"/>
    </copy00lineBox03e5>
  

<copy00lineBox03e6 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e6"/>
    </copy00lineBox03e6>
  

<copy00lineBox03e7 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e7"/>
    </copy00lineBox03e7>
  

<copy00lineBox03e8 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox03e8"/>
    </copy00lineBox03e8>
  

<copy00lineBox04d1 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d1"/>
    </copy00lineBox04d1>
  

<copy00lineBox04d2 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d2"/>
    </copy00lineBox04d2>
  

<copy00lineBox04d3 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d3"/>
    </copy00lineBox04d3>
  

<copy00lineBox04d4 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d4"/>
    </copy00lineBox04d4>
  

<copy00lineBox04d5 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d5"/>
    </copy00lineBox04d5>
  

<copy00lineBox04d6 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d6"/>
    </copy00lineBox04d6>
  

<copy00lineBox04d7 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d7"/>
    </copy00lineBox04d7>
  

<copy00lineBox04d8 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04d8"/>
    </copy00lineBox04d8>
  

<copy00lineBox04e1 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e1"/>
    </copy00lineBox04e1>
  

<copy00lineBox04e2 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e2"/>
    </copy00lineBox04e2>
  

<copy00lineBox04e3 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e3"/>
    </copy00lineBox04e3>
  

<copy00lineBox04e4 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e4"/>
    </copy00lineBox04e4>
  

<copy00lineBox04e5 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e5"/>
    </copy00lineBox04e5>
  

<copy00lineBox04e6 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e6"/>
    </copy00lineBox04e6>
  

<copy00lineBox04e7 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e7"/>
    </copy00lineBox04e7>
  

<copy00lineBox04e8 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox04e8"/>
    </copy00lineBox04e8>
  

<copy00lineBox07 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox07"/>
    </copy00lineBox07>
  

<copy00lineBox07a color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox07a"/>
    </copy00lineBox07a>
  

<copy00lineBox07b color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox07b"/>
    </copy00lineBox07b>
  

<copy00lineBox08 color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineBox08"/>
    </copy00lineBox08>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form1099ssa-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form4868-Copy00">

<copy00lineamtpd color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-lineamtpd, '#####0')"/>
  </copy00lineamtpd>


<copy00linet0tpay color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-linet0tpay, '#####0')"/>
  </copy00linet0tpay>


<copy00linetottax color="red">
  <xsl:value-of select="format-number($Form4868-Copy00-linetottax, '#####0')"/>
  </copy00linetottax>


<copy00linebal color="purple">
  <xsl:value-of select="format-number($Form4868-Copy00-linebal, '#####0')"/>
  </copy00linebal>


<copy00line1040NR color="blue">
    <xsl:value-of select="$Form4868-Copy00-line1040NR"/>
    </copy00line1040NR>
  

<copy00lineaddr1 color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaddr1"/>
    </copy00lineaddr1>
  

<copy00lineaddr2 color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaddr2"/>
    </copy00lineaddr2>
  

<copy00lineaway color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineaway"/>
    </copy00lineaway>
  

<copy00linecity color="blue">
    <xsl:value-of select="$Form4868-Copy00-linecity"/>
    </copy00linecity>
  

<copy00lineST color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineST"/>
    </copy00lineST>
  

<copy00linezip color="blue">
    <xsl:value-of select="$Form4868-Copy00-linezip"/>
    </copy00linezip>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineSSSNoF color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoF"/>
    </copy00lineSSSNoF>
  

<copy00lineSSSNoL color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoL"/>
    </copy00lineSSSNoL>
  

<copy00lineSSSNoM color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineSSSNoM"/>
    </copy00lineSSSNoM>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form4868-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form4952-Copy00">

<copy00line03 color="green">
  <xsl:value-of select="format-number($Form4952-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04h color="green">
  <xsl:value-of select="format-number($Form4952-Copy00-line04h, '#####0')"/>
  </copy00line04h>


<copy00line01 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line04a color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04a, '#####0')"/>
  </copy00line04a>


<copy00line04b color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04b, '#####0')"/>
  </copy00line04b>


<copy00line04d color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04d, '#####0')"/>
  </copy00line04d>


<copy00line04g color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line04g, '#####0')"/>
  </copy00line04g>


<copy00line05 color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00linencg color="red">
  <xsl:value-of select="format-number($Form4952-Copy00-linencg, '#####0')"/>
  </copy00linencg>


<copy00line04e color="blue">
  <xsl:value-of select="format-number($Form4952-Copy00-line04e, '#####0')"/>
  </copy00line04e>


<copy00line08 color="blue">
  <xsl:value-of select="format-number($Form4952-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line06 color="cyan">
  <xsl:value-of select="format-number($Form4952-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line07 color="cyan">
  <xsl:value-of select="format-number($Form4952-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line04c color="purple">
  <xsl:value-of select="format-number($Form4952-Copy00-line04c, '#####0')"/>
  </copy00line04c>


<copy00line04f color="purple">
  <xsl:value-of select="format-number($Form4952-Copy00-line04f, '#####0')"/>
  </copy00line04f>


<copy00lineSFNI color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Form4952-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Form8615-Copy00">

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
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="QDCGTaxWkst-Copy00">

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

</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched3-Copy00">

<copy00line07 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line08 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line08, '#####0')"/>
  </copy00line08>


<copy00line14 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line15 color="green">
  <xsl:value-of select="format-number($Sched3-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line06z color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line06z, '#####0')"/>
  </copy00line06z>


<copy00line10 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line10, '#####0')"/>
  </copy00line10>


<copy00line11 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13b color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13b, '#####0')"/>
  </copy00line13b>


<copy00line13c color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13c, '#####0')"/>
  </copy00line13c>


<copy00line13d color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13d, '#####0')"/>
  </copy00line13d>


<copy00line13e color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13e, '#####0')"/>
  </copy00line13e>


<copy00line13f color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13f, '#####0')"/>
  </copy00line13f>


<copy00line13g color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13g, '#####0')"/>
  </copy00line13g>


<copy00line13h color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13h, '#####0')"/>
  </copy00line13h>


<copy00line13z color="red">
  <xsl:value-of select="format-number($Sched3-Copy00-line13z, '#####0')"/>
  </copy00line13z>


<copy00line01 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line01, '#####0')"/>
  </copy00line01>


<copy00line02 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06a color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06a, '#####0')"/>
  </copy00line06a>


<copy00line06b color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06b, '#####0')"/>
  </copy00line06b>


<copy00line06c color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06c, '#####0')"/>
  </copy00line06c>


<copy00line06d color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06d, '#####0')"/>
  </copy00line06d>


<copy00line06e color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06e, '#####0')"/>
  </copy00line06e>


<copy00line06f color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06f, '#####0')"/>
  </copy00line06f>


<copy00line06g color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06g, '#####0')"/>
  </copy00line06g>


<copy00line06h color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06h, '#####0')"/>
  </copy00line06h>


<copy00line06i color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06i, '#####0')"/>
  </copy00line06i>


<copy00line06j color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06j, '#####0')"/>
  </copy00line06j>


<copy00line06k color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06k, '#####0')"/>
  </copy00line06k>


<copy00line06l color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line06l, '#####0')"/>
  </copy00line06l>


<copy00line09 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line09, '#####0')"/>
  </copy00line09>


<copy00line12 color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13a color="purple">
  <xsl:value-of select="format-number($Sched3-Copy00-line13a, '#####0')"/>
  </copy00line13a>


<copy00linezline2 color="blue">
    <xsl:value-of select="$Sched3-Copy00-linezline2"/>
    </copy00linezline2>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$Sched3-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  

<copy00linezline1 color="blue">
    <xsl:value-of select="$Sched3-Copy00-linezline1"/>
    </copy00linezline1>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedA-Copy00">


cnum		!05q		!#####0		!$SchedA-Copy00-lineFS = MFS	!5000		!10000





</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedB-Copy00">

<copy00line02 color="green">
  <xsl:value-of select="format-number($SchedB-Copy00-line02, '#####0')"/>
  </copy00line02>


<copy00line06 color="green">
  <xsl:value-of select="format-number($SchedB-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00lineexempt color="green">
  <xsl:value-of select="format-number($SchedB-Copy00-lineexempt, '#####0')"/>
  </copy00lineexempt>


<copy00linequal color="green">
  <xsl:value-of select="format-number($SchedB-Copy00-linequal, '#####0')"/>
  </copy00linequal>


<copy00line01ad color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01ad, '#####0')"/>
  </copy00line01ad>


<copy00line01bd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01bd, '#####0')"/>
  </copy00line01bd>


<copy00line01cd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01cd, '#####0')"/>
  </copy00line01cd>


<copy00line01dd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01dd, '#####0')"/>
  </copy00line01dd>


<copy00line01ed color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01ed, '#####0')"/>
  </copy00line01ed>


<copy00line01fd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01fd, '#####0')"/>
  </copy00line01fd>


<copy00line01gd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01gd, '#####0')"/>
  </copy00line01gd>


<copy00line01hd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01hd, '#####0')"/>
  </copy00line01hd>


<copy00line01id color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01id, '#####0')"/>
  </copy00line01id>


<copy00line01jd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01jd, '#####0')"/>
  </copy00line01jd>


<copy00line01kd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01kd, '#####0')"/>
  </copy00line01kd>


<copy00line01ld color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01ld, '#####0')"/>
  </copy00line01ld>


<copy00line01md color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01md, '#####0')"/>
  </copy00line01md>


<copy00line01nd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01nd, '#####0')"/>
  </copy00line01nd>


<copy00line03 color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line03, '#####0')"/>
  </copy00line03>


<copy00line05ad color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ad, '#####0')"/>
  </copy00line05ad>


<copy00line05bd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05bd, '#####0')"/>
  </copy00line05bd>


<copy00line05cd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05cd, '#####0')"/>
  </copy00line05cd>


<copy00line05dd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05dd, '#####0')"/>
  </copy00line05dd>


<copy00line05ed color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ed, '#####0')"/>
  </copy00line05ed>


<copy00line05fd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05fd, '#####0')"/>
  </copy00line05fd>


<copy00line05gd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05gd, '#####0')"/>
  </copy00line05gd>


<copy00line05hd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05hd, '#####0')"/>
  </copy00line05hd>


<copy00line05id color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05id, '#####0')"/>
  </copy00line05id>


<copy00line05jd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05jd, '#####0')"/>
  </copy00line05jd>


<copy00line05kd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05kd, '#####0')"/>
  </copy00line05kd>


<copy00line05ld color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ld, '#####0')"/>
  </copy00line05ld>


<copy00line05md color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05md, '#####0')"/>
  </copy00line05md>


<copy00line05nd color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05nd, '#####0')"/>
  </copy00line05nd>


<copy00line01aint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01aint, '#####0')"/>
  </copy00line01aint>


<copy00line01bint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01bint, '#####0')"/>
  </copy00line01bint>


<copy00line01cint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01cint, '#####0')"/>
  </copy00line01cint>


<copy00line01dint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01dint, '#####0')"/>
  </copy00line01dint>


<copy00line01eint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01eint, '#####0')"/>
  </copy00line01eint>


<copy00line01fint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01fint, '#####0')"/>
  </copy00line01fint>


<copy00line01gint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01gint, '#####0')"/>
  </copy00line01gint>


<copy00line01hint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01hint, '#####0')"/>
  </copy00line01hint>


<copy00line01iint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01iint, '#####0')"/>
  </copy00line01iint>


<copy00line01jint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01jint, '#####0')"/>
  </copy00line01jint>


<copy00line01kint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01kint, '#####0')"/>
  </copy00line01kint>


<copy00line01lint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01lint, '#####0')"/>
  </copy00line01lint>


<copy00line01mint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01mint, '#####0')"/>
  </copy00line01mint>


<copy00line01nint color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line01nint, '#####0')"/>
  </copy00line01nint>


<copy00line05adiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05adiv, '#####0')"/>
  </copy00line05adiv>


<copy00line05bdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05bdiv, '#####0')"/>
  </copy00line05bdiv>


<copy00line05cdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05cdiv, '#####0')"/>
  </copy00line05cdiv>


<copy00line05ddiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ddiv, '#####0')"/>
  </copy00line05ddiv>


<copy00line05ediv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ediv, '#####0')"/>
  </copy00line05ediv>


<copy00line05fdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05fdiv, '#####0')"/>
  </copy00line05fdiv>


<copy00line05gdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05gdiv, '#####0')"/>
  </copy00line05gdiv>


<copy00line05hdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05hdiv, '#####0')"/>
  </copy00line05hdiv>


<copy00line05idiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05idiv, '#####0')"/>
  </copy00line05idiv>


<copy00line05jdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05jdiv, '#####0')"/>
  </copy00line05jdiv>


<copy00line05kdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05kdiv, '#####0')"/>
  </copy00line05kdiv>


<copy00line05ldiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ldiv, '#####0')"/>
  </copy00line05ldiv>


<copy00line05mdiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05mdiv, '#####0')"/>
  </copy00line05mdiv>


<copy00line05ndiv color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line05ndiv, '#####0')"/>
  </copy00line05ndiv>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SchedB-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line07a1n color="blue">
    <xsl:value-of select="$SchedB-Copy00-line07a1n"/>
    </copy00line07a1n>
  

<copy00line07a1y color="blue">
    <xsl:value-of select="$SchedB-Copy00-line07a1y"/>
    </copy00line07a1y>
  

<copy00line07a2n color="blue">
    <xsl:value-of select="$SchedB-Copy00-line07a2n"/>
    </copy00line07a2n>
  

<copy00line07a2y color="blue">
    <xsl:value-of select="$SchedB-Copy00-line07a2y"/>
    </copy00line07a2y>
  

<copy00line07b color="blue">
    <xsl:value-of select="$SchedB-Copy00-line07b"/>
    </copy00line07b>
  

<copy00line08n color="blue">
    <xsl:value-of select="$SchedB-Copy00-line08n"/>
    </copy00line08n>
  

<copy00line08y color="blue">
    <xsl:value-of select="$SchedB-Copy00-line08y"/>
    </copy00line08y>
  

<copy00line01at color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01at"/>
    </copy00line01at>
  

<copy00line01bt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01bt"/>
    </copy00line01bt>
  

<copy00line01ct color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01ct"/>
    </copy00line01ct>
  

<copy00line01dt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01dt"/>
    </copy00line01dt>
  

<copy00line01et color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01et"/>
    </copy00line01et>
  

<copy00line01ft color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01ft"/>
    </copy00line01ft>
  

<copy00line01gt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01gt"/>
    </copy00line01gt>
  

<copy00line01ht color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01ht"/>
    </copy00line01ht>
  

<copy00line01it color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01it"/>
    </copy00line01it>
  

<copy00line01jt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01jt"/>
    </copy00line01jt>
  

<copy00line01kt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01kt"/>
    </copy00line01kt>
  

<copy00line01lt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01lt"/>
    </copy00line01lt>
  

<copy00line01mt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01mt"/>
    </copy00line01mt>
  

<copy00line01nt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line01nt"/>
    </copy00line01nt>
  

<copy00line05at color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05at"/>
    </copy00line05at>
  

<copy00line05bt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05bt"/>
    </copy00line05bt>
  

<copy00line05ct color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05ct"/>
    </copy00line05ct>
  

<copy00line05dt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05dt"/>
    </copy00line05dt>
  

<copy00line05et color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05et"/>
    </copy00line05et>
  

<copy00line05ft color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05ft"/>
    </copy00line05ft>
  

<copy00line05gt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05gt"/>
    </copy00line05gt>
  

<copy00line05ht color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05ht"/>
    </copy00line05ht>
  

<copy00line05it color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05it"/>
    </copy00line05it>
  

<copy00line05jt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05jt"/>
    </copy00line05jt>
  

<copy00line05kt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05kt"/>
    </copy00line05kt>
  

<copy00line05lt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05lt"/>
    </copy00line05lt>
  

<copy00line05mt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05mt"/>
    </copy00line05mt>
  

<copy00line05nt color="blue">
    <xsl:value-of select="$SchedB-Copy00-line05nt"/>
    </copy00line05nt>
  

<copy00lineSFNI color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$SchedB-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedD-Copy00">

<copy00lineSFNI color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineSFNI"/>
    </copy00lineSFNI>
  

<copy00lineSLN color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineSLN"/>
    </copy00lineSLN>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  

<copy00lineFS color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00lineQOFy color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineQOFy"/>
    </copy00lineQOFy>
  

<copy00lineQOFn color="blue">
    <xsl:value-of select="$SchedD-Copy00-lineQOFn"/>
    </copy00lineQOFn>
  

<copy00linec3000 color="blue">
  <xsl:value-of select="format-number($SchedD-Copy00-linec3000, '#####0')"/>
  </copy00linec3000>


<copy00linec1500 color="blue">
  <xsl:value-of select="format-number($SchedD-Copy00-linec1500, '#####0')"/>
  </copy00linec1500>


<copy00linecmin1 color="blue">
  <xsl:value-of select="format-number($SchedD-Copy00-linecmin1, '#0.00')"/>
  </copy00linecmin1>


<copy00line14 color="red">
  <xsl:value-of select="format-number($SchedD-Copy00-line14, '#####0')"/>
  </copy00line14>


<copy00line07 color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line07, '#####0')"/>
  </copy00line07>


<copy00line15 color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line16 color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line16, '#####0')"/>
  </copy00line16>


<copy00line01bh color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line01bh, '#####0')"/>
  </copy00line01bh>


<copy00line02h color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line02h, '#####0')"/>
  </copy00line02h>


<copy00line03h color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line03h, '#####0')"/>
  </copy00line03h>


<copy00line08bh color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line08bh, '#####0')"/>
  </copy00line08bh>


<copy00line09h color="green">
  <xsl:value-of select="format-number($SchedD-Copy00-line09h, '#####0')"/>
  </copy00line09h>


<copy00line01ad color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01ad, '#####0')"/>
  </copy00line01ad>


<copy00line01ae color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01ae, '#####0')"/>
  </copy00line01ae>


<copy00line01bd color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01bd, '#####0')"/>
  </copy00line01bd>


<copy00line01be color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01be, '#####0')"/>
  </copy00line01be>


<copy00line01bg color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01bg, '#####0')"/>
  </copy00line01bg>


<copy00line02d color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line02d, '#####0')"/>
  </copy00line02d>


<copy00line02e color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line02e, '#####0')"/>
  </copy00line02e>


<copy00line02g color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line02g, '#####0')"/>
  </copy00line02g>


<copy00line03d color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line03d, '#####0')"/>
  </copy00line03d>


<copy00line03e color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line03e, '#####0')"/>
  </copy00line03e>


<copy00line03g color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line03g, '#####0')"/>
  </copy00line03g>


<copy00line04 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line04, '#####0')"/>
  </copy00line04>


<copy00line05 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line05, '#####0')"/>
  </copy00line05>


<copy00line06 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line06, '#####0')"/>
  </copy00line06>


<copy00line08ad color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08ad, '#####0')"/>
  </copy00line08ad>


<copy00line08ae color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08ae, '#####0')"/>
  </copy00line08ae>


<copy00line08bd color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08bd, '#####0')"/>
  </copy00line08bd>


<copy00line08be color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08be, '#####0')"/>
  </copy00line08be>


<copy00line08bg color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08bg, '#####0')"/>
  </copy00line08bg>


<copy00line09d color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line09d, '#####0')"/>
  </copy00line09d>


<copy00line09e color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line09e, '#####0')"/>
  </copy00line09e>


<copy00line09g color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line09g, '#####0')"/>
  </copy00line09g>


<copy00line10d color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line10d, '#####0')"/>
  </copy00line10d>


<copy00line10e color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line10e, '#####0')"/>
  </copy00line10e>


<copy00line10g color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line10g, '#####0')"/>
  </copy00line10g>


<copy00line11 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line11, '#####0')"/>
  </copy00line11>


<copy00line12 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line12, '#####0')"/>
  </copy00line12>


<copy00line13 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line18 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line18, '#####0')"/>
  </copy00line18>


<copy00line19 color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line19, '#####0')"/>
  </copy00line19>


<copy00line104003a color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line104003a, '#####0')"/>
  </copy00line104003a>


<copy00line01ah color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01ah, '#####0')"/>
  </copy00line01ah>


<copy00line01bh color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line01bh, '#####0')"/>
  </copy00line01bh>


<copy00line02h color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line02h, '#####0')"/>
  </copy00line02h>


<copy00line03h color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line03h, '#####0')"/>
  </copy00line03h>


<copy00line08ah color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08ah, '#####0')"/>
  </copy00line08ah>


<copy00line08bh color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line08bh, '#####0')"/>
  </copy00line08bh>


<copy00line09h color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line09h, '#####0')"/>
  </copy00line09h>


<copy00line10h color="purple">
  <xsl:value-of select="format-number($SchedD-Copy00-line10h, '#####0')"/>
  </copy00line10h>


<copy00line16pos color="red">
  <xsl:value-of select="format-number($SchedD-Copy00-line16pos, '#####0')"/>
  </copy00line16pos>


<copy00line21a color="blue">
  <xsl:value-of select="format-number($SchedD-Copy00-line21a, '#####0')"/>
  </copy00line21a>


<copy00line17y color="blue">
    <xsl:value-of select="$SchedD-Copy00-line17y"/>
    </copy00line17y>
  

<copy00line17n color="blue">
    <xsl:value-of select="$SchedD-Copy00-line17n"/>
    </copy00line17n>
  

<copy00line20y color="blue">
    <xsl:value-of select="$SchedD-Copy00-line20y"/>
    </copy00line20y>
  

<copy00line20n color="blue">
    <xsl:value-of select="$SchedD-Copy00-line20n"/>
    </copy00line20n>
  

<copy00line22y color="blue">
    <xsl:value-of select="$SchedD-Copy00-line22y"/>
    </copy00line22y>
  

<copy00line22n color="blue">
    <xsl:value-of select="$SchedD-Copy00-line22n"/>
    </copy00line22n>
  

<copy00line21 color="red">
  <xsl:value-of select="format-number($SchedD-Copy00-line21, '#####0')"/>
  </copy00line21>


<copy00line21x color="red">
  <xsl:value-of select="format-number($SchedD-Copy00-line21x, '#####0')"/>
  </copy00line21x>

</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedDTaxWkst-Copy00">

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


<copy00line36a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36a, '#####0')"/>
  </copy00line36a>


<copy00line41a color="green">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41a, '#####0')"/>
  </copy00line41a>


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


<copy00lineFS color="blue">
    <xsl:value-of select="$SchedDTaxWkst-Copy00-lineFS"/>
    </copy00lineFS>
  

<copy00line31a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line31a, '#####0')"/>
  </copy00line31a>


<copy00line34a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34a, '#####0')"/>
  </copy00line34a>


<copy00line40a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40a, '#####0')"/>
  </copy00line40a>


<copy00line43a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43a, '#####0')"/>
  </copy00line43a>


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


<copy00line35a color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35a, '#####0')"/>
  </copy00line35a>


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


<copy00line38a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38a, '#####0')"/>
  </copy00line38a>


<copy00line39a color="cyan">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39a, '#####0')"/>
  </copy00line39a>


<copy00line13 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line13, '#####0')"/>
  </copy00line13>


<copy00line22 color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line22, '#####0')"/>
  </copy00line22>


<copy00line33a color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line33a, '#####0')"/>
  </copy00line33a>


<copy00line42a color="purple">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42a, '#####0')"/>
  </copy00line42a>


<copy00line15 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line15, '#####0')"/>
  </copy00line15>


<copy00line19a color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line19a, '#####0')"/>
  </copy00line19a>


<copy00line23 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line23, '#####0')"/>
  </copy00line23>


<copy00line24 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line24, '#####0')"/>
  </copy00line24>


<copy00line25 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line25, '#####0')"/>
  </copy00line25>


<copy00line26 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line26, '#####0')"/>
  </copy00line26>


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


<copy00line34 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line34, '#####0')"/>
  </copy00line34>


<copy00line35 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line35, '#####0')"/>
  </copy00line35>


<copy00line36 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line36, '#####0')"/>
  </copy00line36>


<copy00line37 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line37, '#####0')"/>
  </copy00line37>


<copy00line38 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line38, '#####0')"/>
  </copy00line38>


<copy00line39 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line39, '#####0')"/>
  </copy00line39>


<copy00line40 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line40, '#####0')"/>
  </copy00line40>


<copy00line41 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line41, '#####0')"/>
  </copy00line41>


<copy00line42 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line42, '#####0')"/>
  </copy00line42>


<copy00line43 color="red">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line43, '#####0')"/>
  </copy00line43>


<copy00line44 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line44, '#####0')"/>
  </copy00line44>


<copy00line46 color="blue">
  <xsl:value-of select="format-number($SchedDTaxWkst-Copy00-line46, '#####0')"/>
  </copy00line46>

</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SSA_1099-Copy00">

<copy00lineBox03 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox03, '#####0')"/>
  </copy00lineBox03>


<copy00lineBox04 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox04, '#####0')"/>
  </copy00lineBox04>


<copy00lineBox06 color="red">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox06, '#####0')"/>
  </copy00lineBox06>


<copy00lineBox05 color="cyan">
  <xsl:value-of select="format-number($SSA_1099-Copy00-lineBox05, '#####0')"/>
  </copy00lineBox05>


<copy00lineBox03d1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d1"/>
    </copy00lineBox03d1>
  

<copy00lineBox03d2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d2"/>
    </copy00lineBox03d2>
  

<copy00lineBox03d3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d3"/>
    </copy00lineBox03d3>
  

<copy00lineBox03d4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d4"/>
    </copy00lineBox03d4>
  

<copy00lineBox03d5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d5"/>
    </copy00lineBox03d5>
  

<copy00lineBox03d6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d6"/>
    </copy00lineBox03d6>
  

<copy00lineBox03d7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d7"/>
    </copy00lineBox03d7>
  

<copy00lineBox03d8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03d8"/>
    </copy00lineBox03d8>
  

<copy00lineBox03e1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e1"/>
    </copy00lineBox03e1>
  

<copy00lineBox03e2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e2"/>
    </copy00lineBox03e2>
  

<copy00lineBox03e3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e3"/>
    </copy00lineBox03e3>
  

<copy00lineBox03e4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e4"/>
    </copy00lineBox03e4>
  

<copy00lineBox03e5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e5"/>
    </copy00lineBox03e5>
  

<copy00lineBox03e6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e6"/>
    </copy00lineBox03e6>
  

<copy00lineBox03e7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e7"/>
    </copy00lineBox03e7>
  

<copy00lineBox03e8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox03e8"/>
    </copy00lineBox03e8>
  

<copy00lineBox04d1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d1"/>
    </copy00lineBox04d1>
  

<copy00lineBox04d2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d2"/>
    </copy00lineBox04d2>
  

<copy00lineBox04d3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d3"/>
    </copy00lineBox04d3>
  

<copy00lineBox04d4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d4"/>
    </copy00lineBox04d4>
  

<copy00lineBox04d5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d5"/>
    </copy00lineBox04d5>
  

<copy00lineBox04d6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d6"/>
    </copy00lineBox04d6>
  

<copy00lineBox04d7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d7"/>
    </copy00lineBox04d7>
  

<copy00lineBox04d8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04d8"/>
    </copy00lineBox04d8>
  

<copy00lineBox04e1 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e1"/>
    </copy00lineBox04e1>
  

<copy00lineBox04e2 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e2"/>
    </copy00lineBox04e2>
  

<copy00lineBox04e3 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e3"/>
    </copy00lineBox04e3>
  

<copy00lineBox04e4 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e4"/>
    </copy00lineBox04e4>
  

<copy00lineBox04e5 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e5"/>
    </copy00lineBox04e5>
  

<copy00lineBox04e6 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e6"/>
    </copy00lineBox04e6>
  

<copy00lineBox04e7 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e7"/>
    </copy00lineBox04e7>
  

<copy00lineBox04e8 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox04e8"/>
    </copy00lineBox04e8>
  

<copy00lineBox07 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07"/>
    </copy00lineBox07>
  

<copy00lineBox07a color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07a"/>
    </copy00lineBox07a>
  

<copy00lineBox07b color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox07b"/>
    </copy00lineBox07b>
  

<copy00lineBox08 color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineBox08"/>
    </copy00lineBox08>
  

<copy00lineTFNI color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTFNI"/>
    </copy00lineTFNI>
  

<copy00lineTLN color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTLN"/>
    </copy00lineTLN>
  

<copy00lineTSSNoF color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoF"/>
    </copy00lineTSSNoF>
  

<copy00lineTSSNoL color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoL"/>
    </copy00lineTSSNoL>
  

<copy00lineTSSNoM color="blue">
    <xsl:value-of select="$SSA_1099-Copy00-lineTSSNoM"/>
    </copy00lineTSSNoM>
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SST-Copy00">

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
  
</Form><Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="w2-Copy00">

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
