<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:template match="/">
    <fo:root>
      <fo:layout-master-set>
	<fo:simple-page-master master-name="page">
	  <fo:region-body region-name="body"
			  margin-top="0.50in"
			  margin-bottom="1.0in"
			  margin-left="0.5in"
			  margin-right="0.5in"/>
	</fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="page">
	<fo:flow flow-name="body">
	  <xsl:apply-templates/>
	</fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>

</xsl:stylesheet>
