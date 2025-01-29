
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
