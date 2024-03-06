<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
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
     xmlns:vendor="http://www.gnucash.org/XML/vendor">

  <xsl:output method="xml"/>

  <!-- Note that the parameter(s) set from the CLI are global. -->

  <xsl:param name="AName" select="'Malpractice'"/>

<!-- Note that either of these methods work. -->
<!-- Note that the parameter when used as a test or argument does not have any quotes around it. If you put '' around the $parameter it doesn't work. -->

<!--
  <xsl:template match="/">
    <IRSForms>
      <accounts>
	<xsl:call-template name="accounts">
	  <xsl:with-param name="account" select="$AName"/>
	</xsl:call-template>
      </accounts>
    </IRSForms>
  </xsl:template>

  <xsl:template name="accounts">
    <xsl:param name="account"/>
    <xsl:for-each select="//account">
      <xsl:choose>
	<xsl:when test="./act:name=$account">
	  <xsl:copy-of select="."/>
	</xsl:when>
      </xsl:choose>
  </xsl:for-each>
  </xsl:template>
-->

<!-- This template makes a copy of all nodes and their attributes -->
  
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()">
	<xsl:sort select="trn:description"/>
      </xsl:apply-templates>
    </xsl:copy>

  </xsl:template>

<!-- The next template is empty so any matching node is not copied to output -->
<!-- Note the use of not() to match those nodes not matching the predicate expression contains() -->
<!-- This template removes all accounts that do have the name desired. -->


  <xsl:template match="account[not(contains(act:name,$AName))]">
    <!-- empty template removes the matched nodes -->
  </xsl:template>

</xsl:stylesheet>
