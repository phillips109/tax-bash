<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output omit-xml-declaration="yes"/>
 
  <xsl:template match="/">
    <!--
		  Copyright(C) 2019 Phillips Wedemeyer

	  This file is part of a program called Tax-bash.

	  Tax-bash is free software: you can redistibute it and/or modify
	  it under the terms of the FNU General Public License as published by
	  the Free Software Foundation, either version 3 of the License, or
	  (at your option) any later version.
	  
	  Tax-bash is distributed in the hope that it will be useful,
	  but WITHOUT ANY WARRANTY; without even the implied warranty of
	  MERCHANTABILITY or FITNESS FOR A PARTICULAR PUPOSE.  See the
	  GNU General Public License for more details.
	  
	  You should have received a copy of the GNU General Public License
	  along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.

	This file, makeInput.xsl, was written to remove, from ../Input/iFormx.xml the whitespace created by using [ \t]*! as the FS (field separator) in ../Awk/Formx.lot. The need for this was obviated by converting the FS back to ! using sed.  

    -->
    
    <Form>
      <xsl:apply-templates/>
    </Form>
  </xsl:template>
  
  <xsl:template match="line">
    <line>
      <xsl:attribute name="number">
	<xsl:value-of select="normalize-space(./@number)"/>
      </xsl:attribute>
      <xsl:attribute name="color">
	<xsl:value-of select="normalize-space(./@color)"/>
      </xsl:attribute>
     <xsl:apply-templates/>
    </line>
  </xsl:template>

  <xsl:template match="//line[ancestor::line]">
    <line2>
      <xsl:value-of select="normalize-space(.)"/>
    </line2>
  </xsl:template>
  
  <xsl:template match="//title">
    <title>
      <xsl:value-of select="normalize-space(.)"/>
    </title>
  </xsl:template>

  <xsl:template match="//type">
    <type>
      <xsl:value-of select="normalize-space(.)"/>
    </type>
  </xsl:template>
  

  <xsl:template match="//form">
    <form>
      <xsl:value-of select="normalize-space(.)"/>
    </form>
  </xsl:template>

  <xsl:template match="//copy">
    <copy>
      <xsl:value-of select="normalize-space(.)"/>
    </copy>
  </xsl:template>


  
  <xsl:template match="//line2">
    <line2>
      <xsl:value-of select="normalize-space(.)"/>
    </line2>
  </xsl:template>

  
  <xsl:template match="//format">
    <format>
      <xsl:value-of select="normalize-space(.)"/>
    </format>
  </xsl:template>

  <xsl:template match="//override">
    <override>
      <xsl:value-of select="normalize-space(.)"/>
    </override>
  </xsl:template>

  <xsl:template match="//augend">
    <augend>
      <xsl:value-of select="normalize-space(.)"/>
    </augend>
  </xsl:template>

  <xsl:template match="//addend">
    <addend>
      <xsl:value-of select="normalize-space(.)"/>
    </addend>
  </xsl:template>

  <xsl:template match="//minuend">
    <minuend>
      <xsl:value-of select="normalize-space(.)"/>
    </minuend>
  </xsl:template>

  <xsl:template match="//subtrahend">
    <subtrahend>
      <xsl:value-of select="normalize-space(.)"/>
    </subtrahend>
  </xsl:template>

  <xsl:template match="//first">
    <first>
      <xsl:value-of select="normalize-space(.)"/>
    </first>
  </xsl:template>

  <xsl:template match="//second">
    <second>
      <xsl:value-of select="normalize-space(.)"/>
    </second>
   </xsl:template>

  <xsl:template match="//multiplicand">
    <multiplicand>
      <xsl:value-of select="normalize-space(.)"/>
    </multiplicand>
   </xsl:template>

  <xsl:template match="//multiplier">
    <multiplier>
      <xsl:value-of select="normalize-space(.)"/>
    </multiplier>
   </xsl:template>

  <xsl:template match="//dividend">
    <dividend>
      <xsl:value-of select="normalize-space(.)"/>
    </dividend>
   </xsl:template>

  <xsl:template match="//divisor">
    <divisor>
      <xsl:value-of select="normalize-space(.)"/>
    </divisor>
   </xsl:template>

   
  <xsl:template match="//value1">
    <value1>
      <xsl:value-of select="normalize-space(.)"/>
    </value1>
   </xsl:template>

  <xsl:template match="//value2">
    <value2>
      <xsl:value-of select="normalize-space(.)"/>
    </value2>
   </xsl:template>

  <xsl:template match="//Test">
    <Test>
      <xsl:value-of select="normalize-space(.)"/>
    </Test>
   </xsl:template>

  <xsl:template match="//testvalue">
    <testvalue>
      <xsl:value-of select="normalize-space(.)"/>
    </testvalue>
   </xsl:template>

  <xsl:template match="//dummy">
    <dummy>
      <xsl:value-of select="normalize-space(.)"/>
    </dummy>
   </xsl:template>

  <xsl:template match="//test">
    <testvalue>
      <xsl:value-of select="normalize-space(.)"/>
    </testvalue>
   </xsl:template>

  <xsl:template match="//valueMFJ">
    <valueMFJ>
      <xsl:value-of select="normalize-space(.)"/>
    </valueMFJ>
   </xsl:template>

  <xsl:template match="//valueS">
    <valueS>
      <xsl:value-of select="normalize-space(.)"/>
    </valueS>
  </xsl:template>


    <xsl:template match="//valueHoH">
    <valueHoH>
      <xsl:value-of select="normalize-space(.)"/>
    </valueHoH>
   </xsl:template>

  <xsl:template match="//valueQW">
    <valueQW>
      <xsl:value-of select="normalize-space(.)"/>
    </valueQW>
   </xsl:template>

     <xsl:template match="//valueAy">
    <valueAy>
      <xsl:value-of select="normalize-space(.)"/>
    </valueAy>
   </xsl:template>

  <xsl:template match="//valueAn">
    <valueAn>
      <xsl:value-of select="normalize-space(.)"/>
    </valueAn>
   </xsl:template>

  <xsl:template match="//valueMFS">
    <valueMFS>
      <xsl:value-of select="normalize-space(.)"/>
    </valueMFS>
  </xsl:template>
  
  <xsl:template match="//lineToBeTaxed">
    <lineToBeTaxed>
      <xsl:value-of select="normalize-space(.)"/>
    </lineToBeTaxed>
  </xsl:template>

   
</xsl:stylesheet>
