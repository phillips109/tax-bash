<?xml version="1.0" encoding="utf-8"?>

<!--
Copyright(C) 2023, 2024 Phillips Wedemeyer

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
along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
-->

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan">

  <xsl:output indent="yes"
	      omit-xml-declaration="yes"/>

  <xsl:param name="form"/>
  
  <xsl:template match="/">
    <Form>
      <xsl:attribute name="name">
	<xsl:value-of select="$form"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </Form>
  </xsl:template>
       

  <xsl:template match="taxline[@type='tlin']">
    <xsl:variable name="file" select="concat('../Data/', $form, '_Copy00_line', @name, '_text.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">
	<xsl:value-of select="'tlin'"/>
      </xsl:attribute>
      <xsl:attribute name="color">
	<xsl:value-of select="'black'"/>
      </xsl:attribute>
      <linename>
	<xsl:value-of select="$form"/><xsl:text>-Copy00-line</xsl:text><xsl:value-of select="@name"/>
      </linename>
      <instructions>
	<xsl:value-of select="./menuEntry"/>
      </instructions>
      <IRSinstructions>
	<xsl:value-of select="concat( '../IRS/', ./IRSInstructions, '#', ./pgNo )"/>
      </IRSinstructions>
      <notes/>
      <text/>
      <license>
	  Copyright(C) 2023, 2024 Phillips Wedemeyer

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

  <xsl:template match="taxline[@type='dlin']">
    <xsl:variable name="file" select="concat('../Data/', $form, '_Copy00_line', @name, '_data.xml')"/>
    <xalan:write select="$file">
      <taxline>
	<xsl:attribute name="type">
	  <xsl:value-of select="'dlin'"/>
	</xsl:attribute>
	<xsl:attribute name="color">
	  <xsl:value-of select="'black'"/>
	</xsl:attribute>
	<linename>
	  <xsl:value-of select="$form"/>-Copy00-line<xsl:value-of select="@name"/>
	</linename>
	<instructions>
	  <xsl:value-of select="./menuEntry"/>
	</instructions>
	<IRSInstructions>
	  <xsl:value-of select="concat( '../IRS/', ./IRSInstructions, '#', ./pgNo )"/>
	</IRSInstructions>
	<notes/>
	<override/>
	<accounts/>
	<license>
	  Copyright(C) 2023, 2024 Phillips Wedemeyer
	  
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
  
</xsl:stylesheet>
