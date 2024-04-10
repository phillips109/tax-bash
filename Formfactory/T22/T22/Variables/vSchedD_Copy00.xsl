
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
<xsl:when test="document('../../../0/Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01ae">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form1099-B_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01be">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line01bg">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02d">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02e">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line02g">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03d">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03e">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line03g">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line04">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form6252_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form6252_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line05">
<xsl:choose>
<xsl:when test="document('../../../0/Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line06">
<xsl:choose>
<xsl:when test="document('../../../0/Output/CLCWkst_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/CLCWkst_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ad">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08ae">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form1099-B_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form1099-B_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bd">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08be">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line08bg">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09d">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09e">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line09g">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10d">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10e">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line02"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line10g">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form8849_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form8849_Copy01.xml')//copy01line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line11">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form4797_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form4797_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../../../0/Output/SchedK1_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/SchedK1_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../../../0/Output/CGD_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/CGD_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line18">
<xsl:choose>
<xsl:when test="document('../../../0/Output/28RGWkst_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/28RGWkst_Copy01.xml')//copy01line07"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../../../0/Output/US1250GWkst_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/US1250GWkst_Copy01.xml')//copy01line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line104003a">
<xsl:choose>
<xsl:when test="document('../../../0/Output/Form1040_Copy01.xml')">
<xsl:value-of select="document('../../../0/Output/Form1040_Copy01.xml')//copy01line03a"/>
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

<xsl:variable name="SchedD-Copy00-line21b">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16pos &gt;= $SchedD-Copy00-line21a">
<xsl:value-of select="$SchedD-Copy00-line21a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedD-Copy00-line16pos"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line17y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &gt;= 0">
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
<xsl:when test="$SchedD-Copy00-line16 &gt;= 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line15 &gt; 0 and $SchedD-Copy00-line16 &gt; 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
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
<xsl:when test="$SchedD-Copy00-line16 &lt;= 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line18 = 0 and $SchedD-Copy00-line19 = 0 and not(document('../Output/Form4952-Copy00.xml'))">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line20n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &lt;= 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:when test="$SchedD-Copy00-line18 = 0 and $SchedD-Copy00-line19 = 0 and not(document('../Output/Form4952-Copy00.xml'))">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line22y">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &lt;= 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line104003a &gt; 0">
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

<xsl:variable name="SchedD-Copy00-line22n">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &lt;= 0">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line104003a &gt; 0">
<xsl:value-of select="''"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="'x'"/>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-line16 &lt; 0">
<xsl:value-of select="$SchedD-Copy00-line21b * $SchedD-Copy00-linecmin1"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedD-Copy00-line21a">
<xsl:choose>
<xsl:when test="$SchedD-Copy00-lineFS = 'MFS'">
<xsl:value-of select="$SchedD-Copy00-linec1500"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$SchedD-Copy00-linec3000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>
