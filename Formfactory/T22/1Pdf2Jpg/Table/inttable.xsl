<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format">
  
  <xsl:strip-space elements="*"/>
  <xsl:include href="rootrule.xsl"/>

  <xsl:attribute-set name="borders">
    <xsl:attribute name="border-before-style">solid</xsl:attribute>
    <xsl:attribute name="border-after-style">solid</xsl:attribute>
    <xsl:attribute name="border-start-style">solid</xsl:attribute>
    <xsl:attribute name="border-end-style">solid</xsl:attribute>
    <xsl:attribute name="border-before-width">1pt</xsl:attribute>
    <xsl:attribute name="border-after-width">1pt</xsl:attribute>
    <xsl:attribute name="border-start-width">1pt</xsl:attribute>
    <xsl:attribute name="border-end-width">1pt</xsl:attribute>
    <xsl:attribute name="padding-before">3pt</xsl:attribute>
    <xsl:attribute name="padding-after">3pt</xsl:attribute>
    <xsl:attribute name="padding-start">3pt</xsl:attribute>
    <xsl:attribute name="padding-end">3pt</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="header-cell">
    <xsl:attribute name="display-align">before</xsl:attribute>
  </xsl:attribute-set>

    <xsl:attribute-set name="header">
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="font-weight">bold</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="cell-padding">
    <xsl:attribute name="padding-start">2pt</xsl:attribute>
    <xsl:attribute name="padding-end">2pt</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:template match="background">

    <fo:block-container top="1.00in"
			space-after="0.5in">
      
      <fo:block font-family="Times"
		font-weight="bold"
		font-size="20pt"
		text-align="center">
	Collected Data
      </fo:block>
    </fo:block-container>

    <fo:block-container top="2.50in"
			space-after="0.5in">
      
      <fo:block font-family="Times"
		font-weight="bold"
		font-size="15pt"
		text-align="center">
	Form1099int
      </fo:block>
    </fo:block-container>
    
    <fo:table table-layout="fixed"
	      width="100%"
	      border-collapse="separate"
	      table-omit-header-at-break="true"
	      table-omit-footer-at-break="true">
      
      <fo:table-column column-number="1"
		       column-width="60%"
		       text-align="start"/>
      <fo:table-column column-number="2"
		       column-width="10%"
		       text-align="start"/>
      <fo:table-column column-number="3"
		       column-width="10%"
		       text-align="start"/>
      <fo:table-column column-number="4"
		       column-width="10%"
		       text-align="start"/>
      <fo:table-column column-number="4"
		       column-width="10%"
		       text-align="start"/>
      
      <fo:table-header>
	<fo:table-cell xsl:use-attribute-sets="header-cell">
	  <fo:block xsl:use-attribute-sets="header">
	    Payor
	  </fo:block>
	</fo:table-cell>
	<fo:table-cell xsl:use-attribute-sets="header-cell">
	  <fo:block xsl:use-attribute-sets="header">
	    Interest Income
	  </fo:block>
	</fo:table-cell>
	<fo:table-cell xsl:use-attribute-sets="header-cell">
	  <fo:block xsl:use-attribute-sets="header">
	    Tax-exempt Interest
	  </fo:block>
	</fo:table-cell>
	<fo:table-cell xsl:use-attribute-sets="header-cell">
	  <fo:block xsl:use-attribute-sets="header">
	    Federal Income Tax Withheld
	  </fo:block>
	</fo:table-cell>
	<fo:table-cell xsl:use-attribute-sets="header-cell">
	  <fo:block xsl:use-attribute-sets="header">
	    Foreign Tax Paid
	  </fo:block>
	</fo:table-cell>
      </fo:table-header>
      
      <fo:table-body>
	<xsl:apply-templates/>
      </fo:table-body>

    </fo:table>
  </xsl:template>

  <xsl:template match="data">
    <fo:table-row>
      <xsl:apply-templates/>
    </fo:table-row>
  </xsl:template>

  <xsl:template match="payor">
    <fo:table-cell xsl:use-attribute-sets="borders">
      <fo:block text-align="left">
	<xsl:value-of select="."/>
      </fo:block>
    </fo:table-cell>
  </xsl:template>
  
  <xsl:template match="interest | exempt | federal | foreign">
    <fo:table-cell xsl:use-attribute-sets="borders">
      <fo:block text-align="right">
	<xsl:value-of select="."/>
      </fo:block>
    </fo:table-cell>
  </xsl:template>
</xsl:stylesheet>
