<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

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
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy11line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy12line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy13line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy14line01"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line03">
<xsl:choose>
<xsl:when test="document('../Output/Form8815_Copy01.xml')">
<xsl:value-of select="document('../Output/Form8815_Copy01.xml')//copy0100"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ad">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ed">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05id">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy11line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ld">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy12line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05md">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy13line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nd">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy14line01a"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01aint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy01.xml')//copy01line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy02.xml')//copy02line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01cint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy03.xml')//copy03line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy04.xml')//copy04line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01eint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy05.xml')//copy05line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01fint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy06.xml')//copy06line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy07.xml')//copy07line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01hint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy08.xml')//copy08line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01iint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy09.xml')//copy09line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy10.xml')//copy10line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy11.xml')//copy11line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy12.xml')//copy12line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy13.xml')//copy13line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nint">
<xsl:choose>
<xsl:when test="document('../Output/Form1099int_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099int_Copy14.xml')//copy14line08"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05adiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy01.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy01.xml')//copy01line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy02.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy02.xml')//copy02line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05cdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy03.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy03.xml')//copy03line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ddiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy04.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy04.xml')//copy04line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ediv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy05.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy05.xml')//copy05line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05fdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy06.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy06.xml')//copy06line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy07.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy07.xml')//copy07line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05hdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy08.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy08.xml')//copy08line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05idiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy09.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy09.xml')//copy09line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy10.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy10.xml')//copy10line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy11.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy11.xml')//copy11line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ldiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy12.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy12.xml')//copy12line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mdiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy13.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy13.xml')//copy13line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ndiv">
<xsl:choose>
<xsl:when test="document('../Output/Form1099div_Copy14.xml')">
<xsl:value-of select="document('../Output/Form1099div_Copy14.xml')//copy14line01b"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="0"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line04">
<xsl:value-of select="$SchedB-Copy00-line02 -  $SchedB-Copy00-line03"/>
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
<xsl:when test="document('../Data/Form1099int_Copy01_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy01_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy02_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy02_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy03_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy03_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy04_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy04_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy05_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy05_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy06_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy06_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy07_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy07_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy08_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy08_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy09_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy09_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy10_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy10_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy11_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy11_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy12_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy12_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy13_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy13_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line01nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099int_Copy14_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099int_Copy14_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05at">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05bt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ct">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05dt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05et">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ft">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05gt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05ht">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05it">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05jt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05kt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05lt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05mt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-line05nt">
<xsl:choose>
<xsl:when test="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')">
<xsl:value-of select="document('../Data/Form1099div_Copy01_linelinepnam1_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineSFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineSFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineSLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineSLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineSLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTFNI">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTFNI_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTFNI_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTLN">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTLN_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTLN_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoL">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoL_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoF">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoF_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:variable name="SchedB-Copy00-lineTSSNoM">
<xsl:choose>
<xsl:when test="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')">
<xsl:value-of select="document('../Data/Bkg_Copy01_lineTSSNoM_text.xml')//text"/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="''"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedB-Copy00">

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
  
</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
