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
