<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:act="http://www.gnucash.org/XML/act"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan"
		version="1.0">

<xsl:output omit-xml-declaration="yes"
	    method="xml"/>

  <xsl:template match="/">
    <IRSForms>
      <accounts>
	<xsl:apply-templates/>
      </accounts>    
    </IRSForms>
  </xsl:template>

  <xsl:template match="file">
    <xsl:copy-of select="document(@name)"/>
  </xsl:template>

</xsl:stylesheet>
