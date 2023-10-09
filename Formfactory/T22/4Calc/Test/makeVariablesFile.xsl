<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:fo="http://www.w3.org/1999/XSL/Format"
		version="1.0">
  
  <xsl:output indent="yes"
	      omit-xml-declaration="yes"/>

  <xsl:param name="form"/>
  <xsl:param name="copy"/>


  <xsl:template match="/">
       <xsl:apply-templates/>
   </xsl:template>
  
<!-- ************************************************************************************************************* -->
<xsl:template match="line[type='text']">

  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:for-each select="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./line"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="./action"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
    </xsl:for-each>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text&quot;&#47;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>
    <xsl:otherwise>
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
      <xsl:value-of select="$form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="$copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="@number"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>

<!-- ****************************************************************************************************************** -->

<!-- replacing this skip version with a no-skip version -->
<!--
<xsl:template match="line[type='dlin']">
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:for-each select="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./line"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="./action"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
    </xsl:for-each>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>
    <xsl:otherwise>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:otherwise>
  </xsl:choose>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>
-->
<!-- *********************************************************************************************-->

<xsl:template match="line[type='dlin']">
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

      
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
<!-- This was already handled in dollarvalue
  <xsl:text>']) div -100, '</xsl:text>
-->
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>

<!-- *********************************************************************************************-->

<!-- Replacing this skip version with a no-skip version 
<xsl:template match="line[type='stud']">
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:for-each select="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./line"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="./action"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
    </xsl:for-each>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>
    <xsl:otherwise>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:otherwise>
  </xsl:choose>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>
-->
<!-- *********************************************************************************************-->
<!-- This version without skip -->
<xsl:template match="line[type='stud']">
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>


      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>

    
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="string(normalize-space(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">'])) !=''"&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(//override[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>'], '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(sum(//total[normalize-space(ancestor::taxline/linename)='</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
<!-- This was already handled in dollarvalue
  <xsl:text>']) div -100, '</xsl:text>
-->
 <xsl:text>']), '</xsl:text>
 <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>

<!-- *********************************************************************************************-->

<!--
<xsl:template match="line[type='tPull']">
    
  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:choose>
    <xsl:when test="skip">
	    
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>

      <xsl:for-each select="skip">

	<xsl:text disable-output-escaping="yes">&lt;xsl:when test=$"</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="./line"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="./action"/>
	<xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
      </xsl:text>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"/&gt;</xsl:text><xsl:text>
    </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      </xsl:for-each>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>
    
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>

    <xsl:otherwise>

      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    </xsl:otherwise>
    
  </xsl:choose>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
</xsl:template>
-->

<!-- ********************************************************************************************************** -->
<!-- This version looks to see if the ../Data document exists. -->
<!-- If it does, the appropriate value is pulled. -->
<!-- If not, zero is pulled. -->
  <xsl:template match="line[type='tPull']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
    </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"/&gt;</xsl:text>      

    <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text>
    
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>


<!-- ******************************************************************************************************** -->


<!--
<xsl:template match="line[type='dataNav']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      <xsl:for-each select="skip">

	<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="./line"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="./action"/>
	<xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
      </xsl:text>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      </xsl:for-each>
      
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Output/</xsl:text>
    <xsl:value-of select="./file"/>
    <xsl:text disable-output-escaping="yes">_data.xml&apos;)//override</xsl:text>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>
    <xsl:otherwise>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Output/</xsl:text>
      <xsl:value-of select="./file"/>
      <xsl:text disable-output-escaping="yes">_data.xml&apos;)//override</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>

    </xsl:otherwise>
  </xsl:choose>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>
-->

<!-- ******************************************************************************* -->

<!-- replacing this with a no-skip version -->
<!--
  <xsl:template match="line[type='dPull']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      <xsl:for-each select="skip">

	<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="./line"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="./action"/>
	<xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
      </xsl:text>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      </xsl:for-each>
      
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>



    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Output/</xsl:text>
    <xsl:value-of select="./form"/>
    <xsl:text>_Copy</xsl:text>
    <xsl:value-of select="./copy"/>
    <xsl:text disable-output-escaping="yes">.xml&apos;)//</xsl:text>
    <xsl:text>copy</xsl:text>
    <xsl:value-of select="./copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="./line2"/>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    </xsl:when>
    <xsl:otherwise>
      

      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Output/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text disable-output-escaping="yes">.xml&apos;)//</xsl:text>
      <xsl:text>copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>

    </xsl:otherwise>
  </xsl:choose>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>

-->
<!-- ******************************************************************************************************** -->
  
<!-- This version looks to see if the ../Output document exists. -->
<!-- If it does, the appropriate value is pulled. -->
<!-- If not, zero is pulled. -->
  <xsl:template match="line[type='dPull']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Output/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text disable-output-escaping="yes">.xml&apos;)</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
    </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Output/</xsl:text>
      <xsl:value-of select="./form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text disable-output-escaping="yes">.xml&apos;)//</xsl:text>
      <xsl:text>copy</xsl:text>
      <xsl:value-of select="./copy"/>
      <xsl:text>line</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text>      

    <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text>
    
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>


<!-- ******************************************************************************************************** -->

<!-- This is an older version -->
<!--

  <xsl:template match="line[type='dRef']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:choose>

    <xsl:when test="skip">


<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text>><xsl:text>
</xsl:text>

<xsl:for-each select="skip">

      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
      <xsl:value-of select="$form"/>
      <xsl:text>-Copy</xsl:text>
      <xsl:value-of select="$copy"/>
      <xsl:text>-</xsl:text>
      <xsl:value-of select="./line"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="./action"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    </xsl:for-each>


    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
    <xsl:value-of select="./form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="./copy"/>
    <xsl:text disable-output-escaping="yes">-line</xsl:text>
    <xsl:value-of select="./line2"/>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:when>
<xsl:otherwise>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
    <xsl:value-of select="./form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="./copy"/>
    <xsl:text disable-output-escaping="yes">-line</xsl:text>
    <xsl:value-of select="./line2"/>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
</xsl:otherwise>
</xsl:choose>

<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text>

  </xsl:template>
-->
<!-- ***************************************************************************************************** -->

<xsl:template match="line[type='dRef']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
    <xsl:value-of select="./form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="./copy"/>
    <xsl:text disable-output-escaping="yes">-line</xsl:text>
    <xsl:value-of select="./line2"/>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>


<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text>

</xsl:template>


<!-- ****************************************************************************************************** -->

  <xsl:template match="line[type='addit']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:choose>
    <xsl:when test="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
    </xsl:text>
    <xsl:for-each select="skip">
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./line"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="./action"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    <!-- On next line select would be "0" for data lines -->
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
    </xsl:for-each>
    
	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="augend"/>
	<xsl:text> +</xsl:text><xsl:text>
      </xsl:text>
      <xsl:for-each select="addend[position() != last()]">
	<xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="."/>
	<xsl:text> +</xsl:text><xsl:text>
      </xsl:text>
      </xsl:for-each>
      <xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="addend[position() = last()]"/>
	<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
      </xsl:text>  
      <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    </xsl:when>
    <xsl:otherwise>
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="augend"/>
	<xsl:text> +</xsl:text><xsl:text>
      </xsl:text>
      <xsl:for-each select="addend[position() != last()]">
	<xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="."/>
	<xsl:text> +</xsl:text><xsl:text>
      </xsl:text>
      </xsl:for-each>
      <xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>  
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="addend[position() = last()]"/>
      <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    </xsl:otherwise>
  </xsl:choose>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

  </xsl:template>
  
  
  
  <!-- *********************************************************************************************************  -->  

  <xsl:template match="line[type='cCho']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-lineFilingStatus='MarriedFilingJointly'</xsl:text>
	<xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>


    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:text disable-output-escaping="yes">line95 &gt;= 149300"&gt;</xsl:text><xsl:text>
      </xsl:text>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="/></xsl:text>
      <xsl:value-of select="./valuec"/>
      <xsl:text>"/&gt;</xsl:text><xsl:text>
    </xsl:text>
    
      <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line95</xsl:text>
    <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

    
  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
    
    
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
    
  </xsl:template>

  <!-- ****************************************************************************************************** -->
  <!--
  <xsl:template match="line[type='subtr']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
      <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
      </xsl:text>
      </xsl:for-each>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-</xsl:text>
    <xsl:value-of select="./minuend"/>
    <xsl:text> - </xsl:text><xsl:text>
    </xsl:text>
    <xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>  
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
    <xsl:value-of select="./subtrahend"/>
    <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      </xsl:when>
      <xsl:otherwise>
	<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="./minuend"/>
	<xsl:text> - </xsl:text><xsl:text>
      </xsl:text>
      <xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>  
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./subtrahend"/>
      <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
    </xsl:text>  
      </xsl:otherwise>
    </xsl:choose>
    
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  </xsl:template>
-->
<!-- ****************************************************************************************************** -->  
  <xsl:template match="line[type='subtr']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number($</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-</xsl:text>
  <xsl:value-of select="./minuend"/>
  <xsl:text> - </xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&#9;&#9;&#9;$</xsl:text>  
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-</xsl:text>
  <xsl:value-of select="./subtrahend"/>
  <xsl:text disable-output-escaping="yes">,'</xsl:text>
  <xsl:value-of select="./format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>  

<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>

  

<!--  ********************************************************************************************************** -->  

  
  <xsl:template match="line[type='subt0']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
      <xsl:for-each select="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
	<xsl:value-of select="./line"/>
	<xsl:text> </xsl:text>
	<xsl:value-of select="./action"/>
	<xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
      </xsl:text>
      <!-- On next line select would be "0" for data lines -->
      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
    </xsl:text>
      <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
    </xsl:text>
      </xsl:for-each>
      
      <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="subtrahend"/>
      <xsl:text disable-output-escaping="yes"> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="minuend"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
    <xsl:value-of select="minuend"/>
    <xsl:text> - $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
    <xsl:value-of select="subtrahend"/>
    <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      </xsl:when>
      <xsl:otherwise>
    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="subtrahend"/>
      <xsl:text disable-output-escaping="yes"> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="minuend"/>
      <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="./minuend"/>
  <xsl:text> - $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="./subtrahend"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    
    
    
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>
  
</xsl:template>




  <xsl:template match="line[type='div']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

   <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./divisor"/>
      <xsl:text disable-output-escaping="yes"> = 0"&gt; </xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="dividend"/>
  <xsl:text> div $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="divisor"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>



	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
   <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>
  
      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
      <xsl:value-of select="./divisor"/>
      <xsl:text disable-output-escaping="yes"> = 0"&gt; </xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
  </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="./dividend"/>
  <xsl:text> div $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="./divisor"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	
      </xsl:otherwise>
    </xsl:choose>


  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>


<!--  *************************************************************************************  -->


  <xsl:template match="line[type='mult']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplicand"/>
  <xsl:text> * $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplier"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplicand"/>
  <xsl:text> * $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplier"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>
      </xsl:otherwise>
    </xsl:choose>


  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>

<!--  *********************************************************************************************  -->
  <xsl:template match="line[type='rmult']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round($</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplicand"/>
  <xsl:text> * $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplier"/>
  <xsl:text disable-output-escaping="yes">)"/&gt;</xsl:text><xsl:text>
</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round($</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplicand"/>
  <xsl:text> * $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="multiplier"/>
  <xsl:text disable-output-escaping="yes">)"/&gt;</xsl:text><xsl:text>
</xsl:text>
      </xsl:otherwise>
    </xsl:choose>


  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>

<!--  *********************************************************************************************  -->

  <xsl:template match="line[type='smOf']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="first"/>
  <xsl:text> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="second"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="second"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="first"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="first"/>
  <xsl:text> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="second"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="second"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="first"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      </xsl:otherwise>
    </xsl:choose>



  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>


<!--   **********************************************************************************************  -->

  <xsl:template match="line[type='lgOf']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="first"/>
  <xsl:text> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="second"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="first"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="second"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="first"/>
  <xsl:text> &gt;= $</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="second"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="first"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
<xsl:value-of select="second"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      </xsl:otherwise>
    </xsl:choose>



  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>


<!--   **********************************************************************************************  -->

  <xsl:template match="line[type='no']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  <!-- On next line select would be "0" for data lines -->
	  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  
  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="yes"/>
  <xsl:text> = ''"</xsl:text>
  <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="'x'"</xsl:text>
<xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"</xsl:text>
<xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>-Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>-</xsl:text>
  <xsl:value-of select="yes"/>
  <xsl:text> = ''"</xsl:text>
  <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="'x'"</xsl:text>
<xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"</xsl:text>
<xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	
      </xsl:otherwise>
    </xsl:choose>


  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>



  <xsl:template match="line[type='yearOfSale']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	  </xsl:text>
	  
	      <!-- On next line select would be "0" for data lines -->
	      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  

	    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text> 

              <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

         <xsl:text disable-output-escaping="yes">&lt;xsl:when test="substring(</xsl:text>
	 <xsl:value-of select="$form"/>
	 <xsl:text disable-output-escaping="yes">-Copy</xsl:text>
	 <xsl:value-of select="$copy"/>
	 <xsl:text disable-output-escaping="yes">-line02b, 7, 4) = $</xsl:text>
	 <xsl:value-of select="$form"/>
	 <xsl:text disable-output-escaping="yes">-Copy</xsl:text>
	 <xsl:value-of select="$copy"/>
	 <xsl:text disable-output-escaping="yes">-lineFilingYear"</xsl:text>

                <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>

                  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
		    <xsl:value-of select="entry"/>
		    <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

               <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

               <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

                 <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"</xsl:text>
		   <xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

               <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

             <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

	    <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>

        <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;xsl:when test="substring($form-Copy$copy-line02b, 7, 4) = $FilingYear"</xsl:text>
	  <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>

            <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
	    <xsl:value-of select="entry"/>
	    <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

            <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="0"</xsl:text>
	    <xsl:text disable-output-escaping="yes">/&gt;</xsl:text><xsl:text>
</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

        <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

      </xsl:otherwise>
    </xsl:choose>

  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

  </xsl:template>

  
  <!-- The following is a general template that handles skips -->
  <!-- i.e. situations where lines are skipped if a prededing line were to be zero, a loss, greater-than, etc -->
<!--
  <xsl:template match="line[type='']">
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:choose>
      <xsl:when test="skip">
	<xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
          <xsl:for-each select="skip">
	    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
	    <xsl:value-of select="$form"/>
	    <xsl:text>-Copy</xsl:text>
	    <xsl:value-of select="$copy"/>
	    <xsl:text>-</xsl:text>
	    <xsl:value-of select="./line"/>
	    <xsl:text> </xsl:text>
	    <xsl:value-of select="./action"/>
	    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
	    </xsl:text>
	    
-->
          <!-- On next line select would be "0" for data lines -->
<!--

    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="''"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>
          </xsl:for-each>

	  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
-->
          <!-- Insert "value-of" in here -->
<!--

  <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>
	  
      </xsl:when>
      <xsl:otherwise>
      
-->
    <!-- Insert same "value-of" here -->
<!--
	
</xsl:otherwise>
    </xsl:choose>
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

  </xsl:template>
-->
<!-- ******************************************************************************************* -->


<xsl:template match="line[type='ctext']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="</xsl:text>
  <xsl:value-of select="./testvalue"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="'</xsl:text>
<xsl:value-of select="./value1"/>
<xsl:text disable-output-escaping="yes">'"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="'</xsl:text>
<xsl:value-of select="./value2"/>
<xsl:text disable-output-escaping="yes">'"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>

</xsl:template>

<!--  ************************************************************************ -->

<xsl:template match="line[type='cnum']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="</xsl:text>
  <xsl:value-of select="./testvalue"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(</xsl:text>
<xsl:value-of select="./value1"/>
<xsl:text>,'</xsl:text>
<xsl:value-of select="./format"/>
<xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(</xsl:text>
<xsl:value-of select="./value2"/>
<xsl:text>,'</xsl:text>
<xsl:value-of select="./format"/>
<xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>

</xsl:template>







<xsl:template match="line[type='cFS']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineFilingStatus_text.xml')//text = 'MarriedFilingJointly'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueMFJ"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineFilingStatus_text.xml')//text = 'Single'</xsl:text>

  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueS"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineFilingStatus_text.xml')//text = 'HeadofaHousehold'</xsl:text>


  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueHoH"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineFilingStatus_text.xml')//text = 'QualifiedWidow(er)'</xsl:text>

  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueQW"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineApart100_text.xml')//text = 'yes'</xsl:text>

  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueAy"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg_Copy01_lineApart100_text.xml')//text = 'no'</xsl:text>

  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./valueAn"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

<!--
  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
<xsl:value-of select="./value2"/>
<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>
-->
<xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>

</xsl:template>

<!--  *************************************************************************************************** -->


<xsl:template match="line[type='tCalc']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt;= 100000"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; 0 and $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketOne"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(((floor($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> div 50) + 0.5) * 50) * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">TaxRateBracketOne)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>

      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketOne and $</xsl:text>
  <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketTwo"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">"&lt;xsl:value-of select="round(((floor($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> div 50) + 0.5) * 50) * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">TaxOnBracketOne)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>


      <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketTwo and $</xsl:text>
  <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThree"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">"&lt;xsl:value-of select="round(((((floor($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> div 50) + 0.5) * 50) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketTwo) * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketThree) + $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">TaxOnBracketTwo)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>
  

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThreeA = 100000 and $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt;= $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThreeA"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">"&lt;xsl:value-of select="round(((((floor($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> div 50) + 0.5) * 50) - $</xsl:text>
        <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThree) * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketFour) + $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">TaxOnBracketThree)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>
  

<xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>



    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>

      <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
      <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThreeA != 100000 and $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThreeA"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketThree) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketThreeASubtractionAmt)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>


<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketThreeA and $</xsl:text>
  <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketFour"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketFour) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketFourSubtractionAmt)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>


    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>



<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketFour and $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketFive"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketFive) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketFiveSubtractionAmt)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>


<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketFive and $</xsl:text>
  <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text> &lt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>BracketSix"</xsl:text>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketSix) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketSixSubtractionAmt)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>



    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>


<xsl:text disable-output-escaping="yes">&lt;xsl:when test="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> &gt; $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketSix"&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="round(($</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="./lineToBeTaxed"/>
    <xsl:text disable-output-escaping="yes"> * $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text>TaxRateBracketSeven) - $</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:text disable-output-escaping="yes">BracketSevenSubtractionAmt)"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>

    
      
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
  </xsl:text>



<xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:otherwise&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>

</xsl:template>
     
</xsl:stylesheet>

  
   

