<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:param name="txl" select="charity"/>

  <xsl:template match="/">
        <fo:root>
      <fo:layout-master-set>
	<fo:simple-page-master master-name="page"
				page-width="8.50in"
				page-height="11.0in">
	  <fo:region-body/>
	</fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="page">
	<fo:flow flow-name="xsl-region-body">
	  
	  <fo:block-container position="absolute"
			      top="0.00in"
			      left="0.00in"
			      width="8.5in"
			      height="11.0in">
	    <fo:block height="0.15in"
		      font-family="Times"
		      color="green">
	      <xsl:call-template name="taxline">
		<xsl:with-param name="txl"/>
	      </xsl:call-template>
	    </fo:block>
	  </fo:block-container>

	</fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
  
'  <xsl:template name="taxline">
    <xsl:param name="txl" select="line11"/>
    <xsl:value-of select="S
	       
  </xsl:template>



  
</xsl:stylesheet>
