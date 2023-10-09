<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xalan="org.apache.xalan.xslt.extensions.Redirect"
		extension-element-prefixes="xalan">

  <xsl:output indent="yes"
	      omit-xml-declaration="yes"/>

  <xsl:param name="form"/>
  <xsl:param name="copy"/>
  
  <xsl:template match="/">
    <Form>
      <xsl:attribute name="name"><xsl:value-of select="$form"/></xsl:attribute>
      <xsl:apply-templates/>
    </Form>
  </xsl:template>

  <xsl:template match="line[type='tPull']">
   
    <xsl:variable name="file" select="concat('../../7App/Data/',$form, '_Copy',$copy, '_line', @number, '_', 'text', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">tPull</xsl:attribute>
      <xsl:attribute name="color">green</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes><xsl:value-of select="notes"/></notes>
      <text><xsl:value-of select="text"/></text>
    </taxline>
    </xalan:write>
    
  </xsl:template>

  

  <xsl:template match="line[type='dlin']">
    <xsl:variable name="file" select="concat('../../7App/Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
      <taxline>
	<xsl:attribute name="type">number</xsl:attribute>
	<xsl:attribute name="color">red</xsl:attribute>
	<linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
	<instructions><xsl:value-of select="instructions"/></instructions>
	<IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
	<notes><xsl:value-of select="notes"/></notes>
	<override><xsl:value-of select="blank"/></override>
	<accounts>
	  <item>
	    <xsl:value-of select="blank"/>
	  </item>
	</accounts>
      </taxline>
    </xalan:write>
  </xsl:template>

 <xsl:template match="line[type='stud']">
    <xsl:variable name="file" select="concat('../../7App/Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
      <taxline>
	<xsl:attribute name="type">stud</xsl:attribute>
	<xsl:attribute name="color">red</xsl:attribute>
	<linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
	<instructions><xsl:value-of select="instructions"/></instructions>
	<IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
	<notes><xsl:value-of select="notes"/></notes>
	<override><xsl:value-of select="blank"/></override>
	<accounts>
	  <item>
	    <xsl:value-of select="blank"/>
	  </item>
	</accounts>
      </taxline>
    </xalan:write>
  </xsl:template>

  
    <xsl:template match="line[type='dRef']">
<!--
      <xsl:variable name="file" select="concat('../../7App/Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">dRef</xsl:attribute>
      <xsl:attribute name="color">green</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes><xsl:value-of select="notes"/></notes>
      <override><xsl:value-of select="override"/></override>
      <accounts>
	<item>
	  <xsl:value-of select="item"/>
	</item>
      </accounts>
    </taxline>
    </xalan:write>
-->
</xsl:template>

  <xsl:template match="line[type='dPull']">
<!--
    <xsl:variable name="file" select="concat('../../7App/Data/', $form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">dPull</xsl:attribute>
      <xsl:attribute name="color">orange</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="$copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes><xsl:value-of select="notes"/></notes>
      <override><xsl:value-of select="override"/></override>
      <accounts>
	<item>
	  <xsl:value-of select="item"/>
	</item>
      </accounts>
    </taxline>
    </xalan:write>
-->
</xsl:template>

    

  
    <xsl:template match="line[type='textNav']">
<!--
      <xsl:variable name="file" select="concat('../../7App/Data/',$form, '_Copy',$copy, '_line', @number, '_', 'nav', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">textNav</xsl:attribute>
      <xsl:attribute name="color">purple</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="@copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions></IRSinstructions>
      <notes></notes>
      <from><xsl:value-of select="./from"/></from>
      <to><xsl:value-of select="./to"/></to>
    </taxline>
    </xalan:write>
-->
  </xsl:template>
  


  <xsl:template match="line[type='addition']">
<!--
    <xsl:variable name="file" select="concat('../../7App/Data/',$form, '_Copy',$copy, '_line', @number, '_', 'data', '.xml')"/>
    <xalan:write select="$file">
    <taxline>
      <xsl:attribute name="type">addition</xsl:attribute>
      <xsl:attribute name="color">green</xsl:attribute>
      <linename><xsl:value-of select="$form"/>-Copy<xsl:value-of select="@copy"/>-line<xsl:value-of select="@number"/></linename>
      <instructions><xsl:value-of select="instructions"/></instructions>
      <IRSinstructions><xsl:value-of select="IRSinstructions"/></IRSinstructions>
      <notes><xsl:value-of select="notes"/></notes>
      <augend><xsl:value-of select="augend"/></augend>
      <addenda>
	<addend><xsl:value-of select="addend"/></addend>
      </addenda>
    </taxline>
    </xalan:write>
-->
  </xsl:template>

  <xsl:template match="line[type='subtraction']">
  </xsl:template>

  <xsl:template match="line[type='multiplication']">
  </xsl:template>

  <xsl:template match="line[type='division']">
  </xsl:template>

  
  <xsl:template match="line[type='dataPull']">
  </xsl:template>

  <xsl:template match="line[type='smallerOf']">
  </xsl:template>

  <xsl:template match="line[type='subtractionToZero']">
  </xsl:template>

  <xsl:template match="line[type='no']">
  </xsl:template>

  <xsl:template match="line[type='yearOfSale']">
  </xsl:template>

  
</xsl:stylesheet>
