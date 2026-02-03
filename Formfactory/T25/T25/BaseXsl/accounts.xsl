<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:act="http://www.gnucash.org/XML/act"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan"
		version="1.0">

<xsl:output omit-xml-declaration="no"
	    method="xml"
	    indent="yes"/>

  <xsl:template match="/">
    <IRSForms>
      <accounts>
	<xsl:apply-templates/>
      </accounts>    
    </IRSForms>
  </xsl:template>

  <xsl:template match="account">
    <xsl:variable name="file" select="concat(./act:name, '.xml')"/>

    <file name="{$file}"/>

    <xalan:write select="$file">
      <xsl:copy-of select="."/>
    </xalan:write>

  </xsl:template>

</xsl:stylesheet>
