<?xml version="1.0" encoding="utf-8"?>

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
-->

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan">

  <xsl:output indent="yes"
	      omit-xml-declaration="yes"/>

  
  
  <xsl:template match="Form">
    <Form>
      <xsl:attribute name="name">
	<xsl:value-of select="@name"/>
      </xsl:attribute>
      <xsl:variable name="file" select="concat('../Output/', @name, '.xml')"/>
      <xalan:write select="$file">
	<Form>
	  <xsl:attribute name="name">
	    <xsl:value-of select="@name"/>
	  </xsl:attribute>
	  <xsl:apply-templates/>
	</Form>
      </xalan:write>
    </Form>
  </xsl:template>
       

  <xsl:template match="Form/*">
      <xsl:copy-of select="."/>
  </xsl:template>
    
</xsl:stylesheet>
