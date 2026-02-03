<?xml version="1.0" encoding="utf-8"?>

<!--
This file is Tax-bash/Formfactory/T??/3Layout/makeTextFileblank.xsl

Copyrigh(C) 2023, 2024 Phillips Wedemeyer

\\This file is part of a program called Tax-bash.

Tax-bash is free software: you can redistibute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tax-bash is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
-->

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan">

  <xsl:output indent="yes"
	      omit-xml-declaration="yes"/>

  <xsl:param name="form"/>
  <xsl:param name="copy"/>
  
  <xsl:template match="/">
    <Form>
      <xsl:attribute name="name"><xsl:value-of select="$form"/></xsl:attribute>
      <xsl:apply-templates/>
    </Form>
  </xsl:template>

  <xsl:template match="tlin">
    <xsl:variable name="file" select="concat('../../Application/Data/',$form, '_Copy',$copy, '_line', @name, '_', 'text', '.xml')"/>
    <text><xsl:value-of select="$file"/></text>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">text</xsl:attribute>
      <xsl:attribute name="color">
	<xsl:value-of select="@color"/>
      </xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@name"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes></notes>
      <text><xsl:value-of select="./blank"/></text>
      <license>
	  Copyrigh(C) 2023, 2024 Phillips Wedemeyer

	  This file is part of a program called Tax-bash.

	  Tax-bash is free software: you can redistibute it and/or modify
	  it under the terms of the GNU General Public License as published by
	  the Free Software Foundation, either version 3 of the License, or
	  (at your option) any later version.
	  
	  Tax-bash is distributed in the hope that it will be useful,
	  but WITHOUT ANY WARRANTY; without even the implied warranty of
	  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	  GNU General Public License for more details.
	  
	  You should have received a copy of the GNU General Public License
	  along with Tax-bash.  If not, see %lt;https://www.gnu.org/licenses/%gt;.
    </license>
    </taxline>

    </xalan:write>
  </xsl:template>
<!--
  <xsl:template match="dlin">
    <xsl:variable name="file" select="concat('../../Application/Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">number</xsl:attribute>
      <xsl:attribute name="color">
	<xsl:value-of select="@color"/>
      </xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes></notes>
      <override>
	<xsl:value-of select="./blank"/>
      </override>
      <accounts>
      </accounts>
      <license>
	  Copyrigh(C) 2023, 2024 Phillips Wedemeyer

	  This file is part of a program called Tax-bash.

	  Tax-bash is free software: you can redistibute it and/or modify
	  it under the terms of the GNU General Public License as published by
	  the Free Software Foundation, either version 3 of the License, or
	  (at your option) any later version.
	  
	  Tax-bash is distributed in the hope that it will be useful,
	  but WITHOUT ANY WARRANTY; without even the implied warranty of
	  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	  GNU General Public License for more details.
	  
	  You should have received a copy of the GNU General Public License
	  along with Tax-bash.  If not, see %lt;https://www.gnu.org/licenses/%gt;.
    </license>
    </taxline>
    </xalan:write>
  </xsl:template>
-->  
<!--  
  <xsl:template match="tPull">
    <xsl:variable name="file" select="concat('../../../Data/',$form, '_Copy',$copy, '_line', @number, '_', 'text', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">tPull</xsl:attribute>
      <xsl:attribute name="color">blue</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes></notes>
      <text><xsl:value-of select="./form2"/></text>
    </taxline>
    </xalan:write>
  </xsl:template>
-->  
  


  <!--
    <xsl:template match="line[type='dRef']">
    <xsl:variable name="file" select="concat('../../../Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">dRef</xsl:attribute>
      <xsl:attribute name="color">green</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes></notes>
      <override></override>
      <accounts>
      </accounts>
    </taxline>
    </xalan:write>
    </xsl:template>

  <xsl:template match="line[type='dPull']">
    <xsl:variable name="file" select="concat('../../../Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">dPull</xsl:attribute>
      <xsl:attribute name="color">red</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes></notes>
      <override></override>
      <accounts>
      </accounts>
    </taxline>
    </xalan:write>
  </xsl:template>

    

  
    <xsl:template match="line[type='textNav']">
    <xsl:variable name="file" select="concat('../../../Data/',$form, '_Copy',$copy, '_line', @number, '_', 'nav', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">textNav</xsl:attribute>
      <xsl:attribute name="color">purple</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="@copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions></IRSinstructions>
      <notes></notes>
      <from><xsl:value-of select="./from"/></from>
      <to><xsl:value-of select="./to"/></to>
    </taxline>
    </xalan:write>

  </xsl:template>
  


  <xsl:template match="line[type='addition']">
    <xsl:variable name="file" select="concat('../../../Data/',$form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">addition</xsl:attribute>
      <xsl:attribute name="color">green</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="@copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions></IRSinstructions>
      <notes></notes>
      <augend><xsl:value-of select="augend"/></augend>
      <addenda>
	<addend><xsl:value-of select="addend"/></addend>
      </addenda>
    </taxline>
    </xalan:write>

  </xsl:template>

  <xsl:template match="line[type='subtraction']">
  </xsl:template>

  <xsl:template match="line[type='multiplication']">
  </xsl:template>

  <xsl:template match="line[type='division']">
  </xsl:template>

  
  <xsl:template match="line[type='dataPull']">
  </xsl:template>

  <xsl:template match="line[type='smallerOf']">
  </xsl:template>

  <xsl:template match="line[type='subtractionToZero']">
  </xsl:template>

  <xsl:template match="line[type='no']">
  </xsl:template>

  <xsl:template match="line[type='yearOfSale']">
  </xsl:template>

  -->
</xsl:stylesheet>
