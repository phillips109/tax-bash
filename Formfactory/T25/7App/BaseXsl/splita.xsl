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


  <xsl:key name="KeyActID2Splt" match="trn:split" use="split:account"/>
  <xsl:key name="KeyActID2Act" match="gnc:account" use="act:id"/>

  <xsl:template match="/">
    <xsl:variable name="unique-account-IDs"
		  select="//gnc:account/act:id"/>

 <Split>
    <accounts>
      <xsl:for-each select="$unique-account-IDs">
	<account>
	  <xsl:copy-of select="key('KeyActID2Act' , . )/act:name"/>
	  <xsl:copy-of select="key('KeyActID2Act' , . )/act:type"/>
	  <xsl:copy-of select="key('KeyActID2Act' , . )//slot[slot:key='code']/slot:value"/>
	  <xsl:for-each select="key('KeyActID2Splt', .)">
	    <transaction>
	      <xsl:copy-of select="ancestor::gnc:transaction/trn:date-posted"/>
	      <xsl:copy-of select="ancestor::gnc:transaction/trn:description"/>
	      <split:dollarvalue>
		<xsl:value-of select="substring-before(./split:value, '/')"/>
	      </split:dollarvalue>
	    </transaction> 
	  </xsl:for-each> 
	</account>
      </xsl:for-each>
    </accounts>
<!-- Not needed because tl.xml is not aggregated at this point 
   <taxlines>
      <xsl:for-each select="//taxline">
      <xsl:copy-of select="."/>
      </xsl:for-each>
    </taxlines>
-->
 </Split>
  </xsl:template>

</xsl:stylesheet>
