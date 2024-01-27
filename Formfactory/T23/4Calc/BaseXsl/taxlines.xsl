<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:gnc="http://www.gnucash.org/XML/gnc"
		xmlns:act="http://www.gnucash.org/XML/act"
		xmlns:book="http://www.gnucash.org/XML/book"
		xmlns:cd="http://www.gnucash.org/XML/cd"
		xmlns:cmdty="http://www.gnucash.org/XML/cmdty"
		xmlns:price="http://www.gnucash.org/XML/price"
		xmlns:slot="http://www.gnucash.org/XML/slot"
		xmlns:split="http://www.gnucash.org/XML/split"
		xmlns:sx="http://www.gnucash.org/XML/sx"
		xmlns:trn="http://www.gnucash.org/XML/trn"
		xmlns:ts="http://www.gnucash.org/XML/ts"
		xmlns:fs="http://www.gnucash.org/XML/fs"
		xmlns:bgt="http://www.gnucash.org/XML/bgt"
		xmlns:recurrence="http://www.gnucash.org/XML/recurrence"
		xmlns:lot="http://www.gnucash.org/XML/lot"
		xmlns:cust="http://www.gnucash.org/XML/cust"
		xmlns:job="http://www.gnucash.org/XML/job"
		xmlns:addr="http://www.gnucash.org/XML/addr"
		xmlns:owner="http://www.gnucash.org/XML/owner"
		xmlns:taxtable="http://www.gnucash.org/XML/taxtable"
		xmlns:tte="http://www.gnucash.org/XML/tte"
		xmlns:employee="http://www.gnucash.org/XML/employee"
		xmlns:order="http://www.gnucash.org/XML/order"
		xmlns:billterm="http://www.gnucash.org/XML/billterm"
		xmlns:bt-days="http://www.gnucash.org/XML/bt-days"
		xmlns:bt-prox="http://www.gnucash.org/XML/bt-prox"
		xmlns:invoice="http://www.gnucash.org/XML/invoice"
		xmlns:entry="http://www.gnucash.org/XML/entry"
		xmlns:vendor="http://www.gnucash.org/XML/vendor"
		xmlns:xalan="http://xml.apache.org/xalan"
		exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

  <xsl:template match="/">
    <IRSForms>
      <taxlines>
	  <xsl:apply-templates select="//taxline"/>
      </taxlines>
    </IRSForms>
  </xsl:template>

  <xsl:template match="//taxline">
    <xsl:for-each select=".">
      <taxline  color="{@color}">
	<xsl:copy-of select="linename"/>
	<xsl:copy-of select="text"/>
	<xsl:copy-of select="number"/>
	<xsl:copy-of select="override"/>
	<xsl:for-each select="./accounts/item">
	  <xsl:copy-of select="ancestor::IRSForms/accounts/account[normalize-space(act:name)=normalize-space(current())]"/>
	</xsl:for-each>
      </taxline>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
