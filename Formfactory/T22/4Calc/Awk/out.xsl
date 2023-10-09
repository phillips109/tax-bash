<xsl:variable name='01z'>
<xsl:value-of select = 'line01a +
line01b +
line01c +
line01d +
line01e +
line01f +
line01g +
line01h'/>
</xsl:variable>


<xsl:variable name='09'>
<xsl:value-of select = 'line01z +
lineintTot +
line03b +
line04b +
line05b +
line06b +
line07 +
line08'/>
</xsl:variable>


<xsl:variable name='14'>
<xsl:value-of select = 'line12 +
line13'/>
</xsl:variable>


<xsl:variable name='16'>
<xsl:value-of select = 'line16a +
line8814 +
line4972 +
line962 +
lineECR +
line1291TAX +
lineForm8978 +
line965 +
line965INC'/>
</xsl:variable>


<xsl:variable name='18'>
<xsl:value-of select = 'line16 +
line17'/>
</xsl:variable>


<xsl:variable name='21'>
<xsl:value-of select = 'line19 +
line20'/>
</xsl:variable>


<xsl:variable name='24'>
<xsl:value-of select = 'line22 +
line23'/>
</xsl:variable>


<xsl:variable name='25b'>
<xsl:value-of select = 'line1099rtax01 +
line1099rtax02 +
line1099rtax03 +
line1099rtax04 +
line1099rtax05 +
line1099rtax06 +
line1099rtax07 +
line1099rtax08 +
line1099rtax09 +
line1099rtax10'/>
</xsl:variable>


<xsl:variable name='25d'>
<xsl:value-of select = 'line25a +
line25b +
line25c'/>
</xsl:variable>


<xsl:variable name='32'>
<xsl:value-of select = 'line27 +
line28 +
line29 +
line31'/>
</xsl:variable>


<xsl:variable name='33'>
<xsl:value-of select = 'line25d +
line26 +
line32'/>
</xsl:variable>


<xsl:variable name='02a'>
<xsl:value-of select = 'lineexempt01 +
lineexempt02 +
lineexempt03 +
lineexempt04 +
lineexempt05 +
lineexempt06 +
lineexempt07 +
lineexempt08 +
lineexempt09 +
lineexempt10'/>
</xsl:variable>


<xsl:variable name='03a'>
<xsl:value-of select = 'lineequal01 +
lineequal02 +
lineequal03 +
lineequal04 +
lineequal05 +
lineequal06 +
lineequal07 +
lineequal08 +
lineequal09 +
lineequal10'/>
</xsl:variable>


<xsl:variable name='iraTot'>
<xsl:value-of select = 'lineira01 +
lineira02 +
lineira03 +
lineira04 +
lineira05 +
lineira06 +
lineira07 +
lineira08 +
lineira09 +
lineira10'/>
</xsl:variable>


<xsl:variable name='penTot'>
<xsl:value-of select = 'linepen01 +
linepen02 +
linepen03 +
linepen04 +
linepen05 +
linepen06 +
linepen07 +
linepen08 +
linepen09 +
linepen10'/>
</xsl:variable>


<xsl:variable name='37a'>
<xsl:value-of select = 'line24 +
line38'/>
</xsl:variable>


<xsl:variable name='c2000'>
value-of select='2000'/>
</xsl:variable>


<xsl:variable name='01b'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line01b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01b']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='01c'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line01c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01c']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='01d'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line01d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01d']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='01h'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line01h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01h']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='01i'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line01i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line01i']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='04a'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line04a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line04a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line04a']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='05a'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line05a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line05a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line05a']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='25c'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line25c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line25c']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='26'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line26'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line26']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='27'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line27'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line27']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='36'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line36'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line36']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name='38'>
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/lineneme='Form1040-Copy00-line38'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total(normalize-space(ancestor::taxline/linename)='Form1040-Copy00-line38']), '#####0')"/>
</xsl:otherwise>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line01a">
<xsl:choose>
<xsl:when test="document('../Output/W2-Copy00.xml')">
<xsl:value-of select="document('../Output/W2-Copy00.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line01e">
<xsl:choose>
<xsl:when test="document('../Output/Form2441-Copy00.xml')">
<xsl:value-of select="document('../Output/Form2441-Copy00.xml)//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line01f">
<xsl:choose>
<xsl:when test="document('../Output/Form8839-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8839-Copy00.xml)//copy00line29"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line01g">
<xsl:choose>
<xsl:when test="document('../Output/Form8919-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8919-Copy00.xml)//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineintTot">
<xsl:choose>
<xsl:when test="document('../Output/SchedB-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB-Copy00.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line03b">
<xsl:choose>
<xsl:when test="document('../Output/SchedB-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedB-Copy00.xml)//copy00line06"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line06a">
<xsl:choose>
<xsl:when test="document('../Output/SST-Copy00.xml')">
<xsl:value-of select="document('../Output/SST-Copy00.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line06b">
<xsl:choose>
<xsl:when test="document('../Output/SST-Copy00.xml')">
<xsl:value-of select="document('../Output/SST-Copy18.xml)//copy00line"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line07">
<xsl:choose>
<xsl:when test="document('../Output/SchedD-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD-Copy00.xml)//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line08">
<xsl:choose>
<xsl:when test="document('../Output/Sched1-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1-Copy00.xml)//copy00line10"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line10">
<xsl:choose>
<xsl:when test="document('../Output/Sched1-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched1-Copy00.xml)//copy00line26"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line12">
<xsl:choose>
<xsl:when test="document('../Output/SchedA-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedA-Copy00.xml)//copy00line17"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line13">
<xsl:choose>
<xsl:when test="document('../Output/Form8995-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8995-Copy00.xml)//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line17">
<xsl:choose>
<xsl:when test="document('../Output/Sched2-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2-Copy00.xml)//copy00line03"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line19">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812-Copy00.xml)//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line20">
<xsl:choose>
<xsl:when test="document('../Output/Sched3-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3-Copy00.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line23">
<xsl:choose>
<xsl:when test="document('../Output/Sched2-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched2-Copy00.xml)//copy00line21"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line25a">
<xsl:choose>
<xsl:when test="document('../Output/FormW2-Copy00.xml')">
<xsl:value-of select="document('../Output/FormW2-Copy00.xml)//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line28">
<xsl:choose>
<xsl:when test="document('../Output/Sched8812-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched8812-Copy00.xml)//copy00line00"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line29">
<xsl:choose>
<xsl:when test="document('../Output/Form8863-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863-Copy00.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line31">
<xsl:choose>
<xsl:when test="document('../Output/Sched3-Copy00.xml')">
<xsl:value-of select="document('../Output/Sched3-Copy00.xml)//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line35a">
<xsl:choose>
<xsl:when test="document('../Output/Form8888-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8888-Copy00.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineD15">
<xsl:choose>
<xsl:when test="document('../Output/SchedD-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD-Copy00.xml)//copy00line15"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineD16">
<xsl:choose>
<xsl:when test="document('../Output/SchedD-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD-Copy00.xml)//copy00line16"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineD18">
<xsl:choose>
<xsl:when test="document('../Output/SchedD-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD-Copy00.xml)//copy00line18"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineD19">
<xsl:choose>
<xsl:when test="document('../Output/SchedD-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedD-Copy00.xml)//copy00line19"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSDTW">
<xsl:choose>
<xsl:when test="document('../Output/SchedDTaxWkst-Copy00.xml')">
<xsl:value-of select="document('../Output/SchedDTaxWkst-Copy00.xml)//copy00line47"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineQDCG">
<xsl:choose>
<xsl:when test="document('../Output/QDCGTaxWkst-Copy00.xml')">
<xsl:value-of select="document('../Output/QDCGTaxWkst-Copy00.xml)//copy00line25"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line4952">
<xsl:choose>
<xsl:when test="document('../Output/Form4952-Copy00.xml')">
<xsl:value-of select="document('../Output/Form4952-Copy00.xml)//copy00line04g"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line8814">
<xsl:choose>
<xsl:when test="document('../Output/Form8814-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8814-Copy00.xml)//copy00line"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line4972">
<xsl:choose>
<xsl:when test="document('../Output/Form4972-Copy00.xml')">
<xsl:value-of select="document('../Output/Form4972-Copy00.xml)//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line962">
<xsl:choose>
<xsl:when test="document('../Output/Form1118-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1118-Copy00.xml)//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineECR">
<xsl:choose>
<xsl:when test="document('../Output/Form8863-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8863-Copy00.xml)//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1291TAX">
<xsl:choose>
<xsl:when test="document('../Output/Form8621-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8621-Copy00.xml)//copy00line16e"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineForm8978">
<xsl:choose>
<xsl:when test="document('../Output/Form8978-Copy00.xml')">
<xsl:value-of select="document('../Output/Form8978-Copy00.xml)//copy00line14"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line965">
<xsl:choose>
<xsl:when test="document('../Output/Form965?-Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?-Copy00.xml)//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line965INC">
<xsl:choose>
<xsl:when test="document('../Output/Form965?-Copy00.xml')">
<xsl:value-of select="document('../Output/Form965?-Copy00.xml)//copy00line100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy01.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy02.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy03.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy04.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy05.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy06.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy07.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy08.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy09.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-line1099rtax10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy10.xml)//copy00line04"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy01.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy02.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy03.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy04.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy05.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy06.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy07.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy08.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy09.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineexempt10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099int-Copy10.xml)//copy00line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy01.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy02.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy03.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy04.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy05.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy06.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy07.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy08.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy09.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-linequal10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099div-Copy10.xml)//copy00line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner01">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy01.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner02">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy02.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner03">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy03.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner04">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy04.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner05">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy05.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner06">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy06.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner07">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy07.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner08">
<xsl:choose>
<xsl:when test="document('../Output/Form1099dir-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099dir-Copy08.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner09">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy09.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-liner10">
<xsl:choose>
<xsl:when test="document('../Output/Form1099r-Copy00.xml')">
<xsl:value-of select="document('../Output/Form1099r-Copy10.xml)//copy00line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name='04s'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line04a >= $Form1040-Copy00-lineiraTot'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-lineiraTot - $Form1040-Copy00-line04a'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name='05s'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line05a >= $Form1040-Copy00-lineopenTot'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-lineopenTot - $Form1040-Copy00-line05a'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name='15'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line14 >= $Form1040-Copy00-line11'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-line11 - $Form1040-Copy00-line14'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name='22'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line21 >= $Form1040-Copy00-line18'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-line18 - $Form1040-Copy00-line21'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name='34'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line24 >= $Form1040-Copy00-line33'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-line33 - $Form1040-Copy00-line24'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name='37'>
<xsl:choose>
<xsl:when test='$Form1040-Copy00-line33 >= $Form1040-Copy00-line37a'>
<xsl:value-of select='0'/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select='$Form1040-Copy00-line37a - $Form1040-Copy00-line33'/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line02b">
<xsl:value-of select="$Form1040-Copy00-lineintTot - $Form1040-Copy00-line02a, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line11">
<xsl:value-of select="$Form1040-Copy00-line09 - $Form1040-Copy00-line10, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35">
<xsl:value-of select="$Form1040-Copy00-line34 - $Form1040-Copy00-line36, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35a">
<xsl:value-of select="$Form1040-Copy00-line35 - $Form1040-Copy00-line38, '#####0')"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineCalc16"/>
<xsl:call-template name="taxCalc">
<with-param name="filingStatus" select="$Form1040-Copy00-lineFS"/>
<with-param name="lineToBeTaxed" select="$Form1040-Copy00-line15"/>
</xsl:call-template>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line06cCk"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line06cCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line07Ck"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line07Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35aCk"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35aCk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b1"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b2"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b3"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b4"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b5"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b6"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b7"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b8"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35b9"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35b9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cCkg"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cCkg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35cSvg"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35cSvg_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d10"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d10_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d11"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d11_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d1"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d12"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d12_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d13"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d13_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d14"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d14_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d15"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d15_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d16"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d16_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d17"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d17_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d2"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d3"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d3_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d4"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d5"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d5_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d6"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d6_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d7"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d7_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d8"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d8_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line35d9"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line35d9_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39N"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line39N_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line39Y"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line39Y_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line421"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line421_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line422"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line422_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line423"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line423_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line424"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line424_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line425"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line425_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line431"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line431_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line432"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line432_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line433"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line433_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line434"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line434_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line435"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line435_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line436"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line436_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line441"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line441_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line442"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line442_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line443"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line443_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line444"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line444_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line445"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line445_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line4972Ck"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line4972Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-line8814Ck"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_line8814Ck_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr1"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaddr2"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaddr2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineaptNo"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineaptNo_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecampme"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linecampme_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecamps"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linecamps_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linechild"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linechild_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linecity"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linecity_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1cod"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1CTC"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1LN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1name"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1rel"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SF"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SL"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined1SM"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined1SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2cod"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2CTC"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2LN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2name"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2rel"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SF"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SL"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined2SM"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined2SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3cod"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3CTC"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3LN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3name"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3rel"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SF"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SL"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined3SM"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined3SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4cod"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4CTC"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4LN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4name"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4rel"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SF"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SL"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined4SM"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined4SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5cod"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5cod_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5CTC"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5CTC_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5LN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5LN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5name"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5name_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5rel"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5rel_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SF"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SF_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SL"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SL_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lined5SM"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lined5SM_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedgt4"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linedgt4_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linedigY"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linedigY_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDname"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineDphone"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineDphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFaddr"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFaddr_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFCntry"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFCntry_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFEIN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFEIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFname"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFphone"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFphone_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFprov"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFprov_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFzip"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineFzip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineOther"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineOther_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePdate"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linePdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePname"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linePname_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linePTIN"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linePTIN_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSa58"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSblind"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdate"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSdep"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSdep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSECk"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSECk_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSiUali"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSiUali_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineSocc"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineSocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineST"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineST_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTdate"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTdate_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineTocc"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineTocc_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYa58"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYa58_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineYblind"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineYblind_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineyoudep"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_lineyoudep_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linezip"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linezip_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-linex00"/>
<xsl:value-of select="document('../Data/Form1040_Copy00_linex00_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineFS">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineFS_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineFS_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineSSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select= "0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>


<xsl:variable name="Form1040-Copy00-lineS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'S'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select=''''/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFJ">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFJ'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select=''''/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineMFS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'MFS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select=''''/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineHOH">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'HOH'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select=''''/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Form1040-Copy00-lineQSS">
<xsl:choose>
<xsl:when test="$Form1040-Copy00-lineFS = 'QSS'">
<xsl:value-of select="'x'"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select=''''/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

