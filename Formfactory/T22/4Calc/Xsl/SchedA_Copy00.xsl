<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:xalan="http://xml.apache.org/xalan"
                exclude-result-prefixes="xalan">

  <xsl:output indent="yes"/>

<xsl:variable name="SchedA-Copy00-line">
<xsl:choose>
<xsl:when test="">
<xsl:value-of select=""/>
</xsl:when>
<xsl:otherwise>
<xsl:value-of select="cnum		!05q		!#####0		!$SchedA-Copy00-lineFS = MFS	!5000		!10000"/>
</xsl:otherwise>
</xsl:choose>
</xsl:variable>

<xsl:include href="../BaseXsl/taxCalc.xsl"/>

<xsl:template match="/">
<IRSForms>
<Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="SchedA-Copy00">


cnum		!05q		!#####0		!$SchedA-Copy00-lineFS = MFS	!5000		!10000





</Form></IRSForms>
</xsl:template>
</xsl:stylesheet>
