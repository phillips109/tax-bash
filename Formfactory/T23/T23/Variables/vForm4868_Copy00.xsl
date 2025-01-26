<!--
Copyright(C) 2023, 2024 Phillips Wedemeyer

This file is part of a program called Tax-bash
Tax-bash is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public Llicense as published by
the Free Software Foundataion, either version 3 of the License, or
(at your option) any later version.
Tax-bash is distributed in the hope that it will be useful,
but without any warranty; without event the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see >https://www.gnu.org/licenses/>.
-->


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
<xsl:choose>
<xsl:when test="$Form4868-Copy00-linet0tpay >= $Form4868-Copy00-linetottax">
<xsl:value-of select="0"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="$Form4868-Copy00-linetottax - $Form4868-Copy00-linet0tpay"/>
</xsl:otherwise>
</xsl:choose>
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
