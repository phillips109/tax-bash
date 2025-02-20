<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>
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


<xsl:variable name="Sched1-Copy00-line09">
<xsl:value-of select="$Sched1-Copy00-line08a +
$Sched1-Copy00-line08b +
$Sched1-Copy00-line08c +
$Sched1-Copy00-line08d +
$Sched1-Copy00-line08e +
$Sched1-Copy00-line08f +
$Sched1-Copy00-line08g +
$Sched1-Copy00-line08h +
$Sched1-Copy00-line08i +
$Sched1-Copy00-line08j +
$Sched1-Copy00-line08k +
$Sched1-Copy00-line08l +
$Sched1-Copy00-line08m +
$Sched1-Copy00-line08n +
$Sched1-Copy00-line08o +
$Sched1-Copy00-line08p +
$Sched1-Copy00-line08q +
$Sched1-Copy00-line08r +
$Sched1-Copy00-line08s +
$Sched1-Copy00-line08t +
$Sched1-Copy00-line08u +
$Sched1-Copy00-line08v +
$Sched1-Copy00-line08z"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line10">
<xsl:value-of select="$Sched1-Copy00-line01 +
$Sched1-Copy00-line02a +
$Sched1-Copy00-line03 +
$Sched1-Copy00-line04 +
$Sched1-Copy00-line05 +
$Sched1-Copy00-line06 +
$Sched1-Copy00-line07 +
$Sched1-Copy00-line09"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line25">
<xsl:value-of select="$Sched1-Copy00-line24a +
$Sched1-Copy00-line24b +
$Sched1-Copy00-line24c +
$Sched1-Copy00-line24d +
$Sched1-Copy00-line24e +
$Sched1-Copy00-line24f +
$Sched1-Copy00-line24g +
$Sched1-Copy00-line24h +
$Sched1-Copy00-line24i +
$Sched1-Copy00-line24j +
$Sched1-Copy00-line24k +
$Sched1-Copy00-line24z"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line26">
<xsl:value-of select="$Sched1-Copy00-line11 +
$Sched1-Copy00-line12 +
$Sched1-Copy00-line13 +
$Sched1-Copy00-line14 +
$Sched1-Copy00-line15 +
$Sched1-Copy00-line16 +
$Sched1-Copy00-line17 +
$Sched1-Copy00-line18 +
$Sched1-Copy00-line19a +
$Sched1-Copy00-line20 +
$Sched1-Copy00-line21 +
$Sched1-Copy00-line23 +
$Sched1-Copy00-line25"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line1099K">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line1099K']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line01">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line01']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line02a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line02a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line07">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line07']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08j">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08j']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08k">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08k']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08l">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08l']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08m">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08m']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08n">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08n']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08o">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08o']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08p">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08p']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08q">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08q']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08r">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08r']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08s">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08s']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08t">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08t']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08u">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08u']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08v">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08v']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line11">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line11']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line16">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line16']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line17">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line17']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line18">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line18']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line19a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line20">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line20']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line21">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line21']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line23">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line23']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24a">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24a']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24b">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24b']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24c">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24c']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24g">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24g']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24h">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24h']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24i">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24i']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24k">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24k']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24z">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24z']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line03">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line03']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line04">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line04']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line05">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line05']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line06">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line06']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08d">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08d']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08e">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08e']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08f">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line08f']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line12">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line12']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line13">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line13']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line14">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line14']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line15">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line15']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24j">
<xsl:choose>
<xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j'])) != ''">
<xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j'], '#####0')"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='Sched1-Copy00-line24j']), '#####0')"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line02b">
<xsl:value-of select="document('../Data/Sched1_Copy00_line02b_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08za">
<xsl:value-of select="document('../Data/Sched1_Copy00_line08za_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line08zb">
<xsl:value-of select="document('../Data/Sched1_Copy00_line08zb_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19b1">
<xsl:value-of select="document('../Data/Sched1_Copy00_line19b1_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line19b2">
<xsl:value-of select="document('../Data/Sched1_Copy00_line19b2_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24za">
<xsl:value-of select="document('../Data/Sched1_Copy00_line24za_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-line24zb">
<xsl:value-of select="document('../Data/Sched1_Copy00_line24zb_text.xml')//text"/>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="Sched1-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy00_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<!--

Copyright (C) 2024 Phillips Wedemeyer
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

<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="Sched1-Copy00">

<copy00line09 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line09, '#####0')"/>
</copy00line09>

<copy00line10 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line10, '#####0')"/>
</copy00line10>

<copy00line25 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line25, '#####0')"/>
</copy00line25>

<copy00line26 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line26, '#####0')"/>
</copy00line26>

<copy00line1099K color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line1099K, '#####0')"/>
</copy00line1099K>

<copy00line01 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line01, '#####0')"/>
</copy00line01>

<copy00line02a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line02a, '#####0')"/>
</copy00line02a>

<copy00line07 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line07, '#####0')"/>
</copy00line07>

<copy00line08a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08a, '#####0')"/>
</copy00line08a>

<copy00line08b color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08b, '#####0')"/>
</copy00line08b>

<copy00line08c color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08c, '#####0')"/>
</copy00line08c>

<copy00line08g color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08g, '#####0')"/>
</copy00line08g>

<copy00line08h color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08h, '#####0')"/>
</copy00line08h>

<copy00line08i color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08i, '#####0')"/>
</copy00line08i>

<copy00line08j color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08j, '#####0')"/>
</copy00line08j>

<copy00line08k color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08k, '#####0')"/>
</copy00line08k>

<copy00line08l color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08l, '#####0')"/>
</copy00line08l>

<copy00line08m color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08m, '#####0')"/>
</copy00line08m>

<copy00line08n color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08n, '#####0')"/>
</copy00line08n>

<copy00line08o color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08o, '#####0')"/>
</copy00line08o>

<copy00line08p color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08p, '#####0')"/>
</copy00line08p>

<copy00line08q color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08q, '#####0')"/>
</copy00line08q>

<copy00line08r color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08r, '#####0')"/>
</copy00line08r>

<copy00line08s color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08s, '#####0')"/>
</copy00line08s>

<copy00line08t color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08t, '#####0')"/>
</copy00line08t>

<copy00line08u color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08u, '#####0')"/>
</copy00line08u>

<copy00line08v color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08v, '#####0')"/>
</copy00line08v>

<copy00line08z color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08z, '#####0')"/>
</copy00line08z>

<copy00line11 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line11, '#####0')"/>
</copy00line11>

<copy00line16 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line16, '#####0')"/>
</copy00line16>

<copy00line17 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line17, '#####0')"/>
</copy00line17>

<copy00line18 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line18, '#####0')"/>
</copy00line18>

<copy00line19a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line19a, '#####0')"/>
</copy00line19a>

<copy00line20 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line20, '#####0')"/>
</copy00line20>

<copy00line21 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line21, '#####0')"/>
</copy00line21>

<copy00line23 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line23, '#####0')"/>
</copy00line23>

<copy00line24a color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24a, '#####0')"/>
</copy00line24a>

<copy00line24b color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24b, '#####0')"/>
</copy00line24b>

<copy00line24c color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24c, '#####0')"/>
</copy00line24c>

<copy00line24d color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24d, '#####0')"/>
</copy00line24d>

<copy00line24e color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24e, '#####0')"/>
</copy00line24e>

<copy00line24f color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24f, '#####0')"/>
</copy00line24f>

<copy00line24g color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24g, '#####0')"/>
</copy00line24g>

<copy00line24h color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24h, '#####0')"/>
</copy00line24h>

<copy00line24i color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24i, '#####0')"/>
</copy00line24i>

<copy00line24k color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24k, '#####0')"/>
</copy00line24k>

<copy00line24z color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24z, '#####0')"/>
</copy00line24z>

<copy00line03 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line03, '#####0')"/>
</copy00line03>

<copy00line04 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line04, '#####0')"/>
</copy00line04>

<copy00line05 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line05, '#####0')"/>
</copy00line05>

<copy00line06 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line06, '#####0')"/>
</copy00line06>

<copy00line08d color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08d, '#####0')"/>
</copy00line08d>

<copy00line08e color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08e, '#####0')"/>
</copy00line08e>

<copy00line08f color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line08f, '#####0')"/>
</copy00line08f>

<copy00line12 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line12, '#####0')"/>
</copy00line12>

<copy00line13 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line13, '#####0')"/>
</copy00line13>

<copy00line14 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line14, '#####0')"/>
</copy00line14>

<copy00line15 color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line15, '#####0')"/>
</copy00line15>

<copy00line24j color="red">
<xsl:value-of select="format-number($Sched1-Copy00-line24j, '#####0')"/>
</copy00line24j>

<copy00line02b color="blue">
<xsl:value-of select="$Sched1-Copy00-line02b"/>
</copy00line02b>

<copy00line08za color="blue">
<xsl:value-of select="$Sched1-Copy00-line08za"/>
</copy00line08za>

<copy00line08zb color="blue">
<xsl:value-of select="$Sched1-Copy00-line08zb"/>
</copy00line08zb>

<copy00line19b1 color="blue">
<xsl:value-of select="$Sched1-Copy00-line19b1"/>
</copy00line19b1>

<copy00line19b2 color="blue">
<xsl:value-of select="$Sched1-Copy00-line19b2"/>
</copy00line19b2>

<copy00line24za color="blue">
<xsl:value-of select="$Sched1-Copy00-line24za"/>
</copy00line24za>

<copy00line24zb color="blue">
<xsl:value-of select="$Sched1-Copy00-line24zb"/>
</copy00line24zb>

<copy00lineSFNI color="blue">
<xsl:value-of select="$Sched1-Copy00-lineSFNI"/>
</copy00lineSFNI>

<copy00lineSLN color="blue">
<xsl:value-of select="$Sched1-Copy00-lineSLN"/>
</copy00lineSLN>

<copy00lineTFNI color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTFNI"/>
</copy00lineTFNI>

<copy00lineTLN color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTLN"/>
</copy00lineTLN>

<copy00lineTSSNoF color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoF"/>
</copy00lineTSSNoF>

<copy00lineTSSNoL color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoL"/>
</copy00lineTSSNoL>

<copy00lineTSSNoM color="blue">
<xsl:value-of select="$Sched1-Copy00-lineTSSNoM"/>
</copy00lineTSSNoM>
</Form>
</IRSForms>
</xsl:template>
</xsl:stylesheet>
