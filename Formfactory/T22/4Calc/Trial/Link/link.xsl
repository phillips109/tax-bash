<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template match="link">
    <fo:basic-link bacground-color="lightblue"
		   internal-destination="{@idref}">
      Page<fo:page-number-citation ref-id="intro"/>
  </fo:basic-link>
  </xsl:template>

</xsl:stylesheet>
