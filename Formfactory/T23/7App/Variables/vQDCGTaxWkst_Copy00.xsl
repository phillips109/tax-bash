
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
