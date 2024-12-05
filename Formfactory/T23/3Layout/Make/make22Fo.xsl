<?xml version="1.0" encoding="UTF-8"?>
<!--

This file is Tax-bash/Formfactory/T??/3Layout/Make/make22Fo.xsl
The purpose is to create the ../2Fo/.2fo file from ../Layouts/$1_Copy$2.lo

Copyrigh(C) 2023, 2024 Phillips Wedemeyer

This file is part of a program called Tax-bash.

Tax-bash is free software: you can redistibute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Tax-bash is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xslt="Form6252.2fo"
		xmlns:fo="http://www.w3.org/1999/XSL/Format"
		version="1.0">
  
  <xsl:output indent="yes"/>
  
  <xsl:namespace-alias stylesheet-prefix="xslt"
		       result-prefix="xsl"/>
  
  <xsl:param name="form"/>
  <xsl:param name="copy"/>
  <xsl:param name="dev"/>
<!--
  <xsl:variable name="ckifif">
    <xsl:value-of select="Single"/>
  </xsl:variable>
-->  
  
  <xsl:template match="/">
    <xslt:stylesheet version="1.0"
		     xmlns:fo="http://www.w3.org/1999/XSL/Format">
     
     
      <xslt:template match="Form">

	  <fo:root>
	      <xslt:text disable-output-escaping="yes">

	  Copyrigh(C) 2023, 2024 Phillips Wedemeyer

	  This file is part of a program called Tax-bash.

	  Tax-bash is free software: you can redistibute it and/or modify
	  it under the terms of the GNU General Public License as published by
	  the Free Software Foundation, either version 3 of the License, or
	  (at your option) any later version.
	  
	  Tax-bash is distributed in the hope that it will be useful,
	  but WITHOUT ANY WARRANTY; without even the implied warranty of
	  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	  GNU General Public License for more details.
	  
	  You should have received a copy of the GNU General Public License
	  along with Tax-bash.  If not, see %lt;https://www.gnu.org/licenses/%gt;.

	</xslt:text>

	    <fo:layout-master-set>
	      <fo:simple-page-master master-name="page"
				     page-height="11.00in"
				     page-width="8.50in">
		<fo:region-body>
		</fo:region-body>
	      </fo:simple-page-master>
	    </fo:layout-master-set>
	    <fo:page-sequence master-reference="page">
	      <fo:flow flow-name="xsl-region-body">
		  <xsl:apply-templates/>
	      </fo:flow>
	    </fo:page-sequence>
	  </fo:root>
      </xslt:template>
    </xslt:stylesheet>
  </xsl:template>
  
  <xsl:template match="Form">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="pgS">
    <fo:block-container height="11in"
			width="8.5in"
			left="0.00in"
			top="0.00in"
			position="absolute">
      
      <xsl:attribute name="background-image">
	<xsl:value-of select="@bkgImage"/>
      </xsl:attribute>
      
      <xsl:apply-templates/>
      
    </fo:block-container>
     
  </xsl:template>

  
  <xsl:template match="pgF">
    <fo:block-container height="11in"
			width="8.5in"
			left="0.00in"
			top="0.00in"
			position="absolute">
      
      <xsl:attribute name="background-image">
	<xsl:value-of select="@bkgImage"/>
      </xsl:attribute>
      
      <xsl:apply-templates/>
      
    </fo:block-container>
    <fo:block break-after="page">
    </fo:block>
    
  </xsl:template>
  
  
  <xsl:template match="pgM">
    
    <fo:block break-before="page">
    </fo:block>
    
    <fo:block-container height="11in"
			width="8.5in"
			left="0.00in"
			top="0.00in"
			position="absolute">
      <xsl:attribute name="background-image">
	<xsl:value-of select="@bkgImage"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </fo:block-container>
    <fo:block break-after="page">
    </fo:block>
  </xsl:template>
  
  <xsl:template match="pgL">
    
    <fo:block break-before="page">
    </fo:block>
    
    <fo:block-container height="11in"
			width="8.5in"
			left="0.00in"
			top="0.00in"
			position="absolute">
      <xsl:attribute name="background-image">
	<xsl:value-of select="@bkgImage"/>
      </xsl:attribute>
      <xsl:apply-templates/>
    </fo:block-container>
  </xsl:template>
  
  
  <xsl:template match="col">
    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      <xsl:attribute name="left">
	<xsl:value-of select="@left"/>
      </xsl:attribute>
      <xsl:attribute name="width">
	<xsl:value-of select="@width"/>
      </xsl:attribute>
      <xsl:attribute name="background-color">transparent</xsl:attribute>
      <xsl:attribute name="font-family">
	<xsl:value-of select="@font-family"/>
      </xsl:attribute>
      <xsl:attribute name="font-size">
	<xsl:value-of select="@font-size"/>
      </xsl:attribute>
      <xsl:attribute name="text-align">
	<xsl:value-of select="@text-align"/>
      </xsl:attribute>
      
      <xsl:apply-templates/>
    </fo:block-container>
  </xsl:template>

  
  <!--**********************************************************************************************************-->
  
  
  <xsl:template match="tlin">
    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>


	<xsl:attribute name="background-color">transparent</xsl:attribute>

	  
	  <xsl:text disable-output-escaping="yes">&lt;xslt:attribute name="color"&gt;</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="document('../Data/</xsl:text>
	  <xsl:value-of select="$form"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>_line</xsl:text>
	  <xsl:value-of select="@name"/>
	  <xsl:text disable-output-escaping="yes">_text.xml')//taxline/@color"/&gt;</xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:attribute&gt;</xsl:text>
	  
	  
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="document('../Data/</xsl:text>
	  <xsl:value-of select="$form"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>_line</xsl:text>
	  <xsl:value-of select="@name"/>
	  <xsl:text disable-output-escaping="yes">_text.xml')//text"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	
      </fo:block>
    </fo:block-container>
    
  </xsl:template>


<!--  ***************************************************************************************************** -->



  
  <xsl:template match="tPull">
    
    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>

	<xsl:attribute name="background-color">transparent</xsl:attribute>
	

	  <xsl:text disable-output-escaping="yes">&lt;xslt:attribute name="color"&gt;</xsl:text><xsl:text>
	</xsl:text>
	  <xsl:value-of select="./@color"/>
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:attribute&gt;</xsl:text><xsl:text>
	</xsl:text>


	  <xsl:text disable-output-escaping="yes">&lt;fo:basic-link external-destination="../Pdf/</xsl:text>	  
	  <xsl:value-of select="$form"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text disable-output-escaping="yes">.pdf"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="document('../Data/</xsl:text>
	  <xsl:value-of select="./form"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="./copy"/>
	  <xsl:text>_</xsl:text>
	  <xsl:value-of select="./line2"/>
	  <xsl:text disable-output-escaping="yes">_text.xml')//text"/&gt;</xsl:text><xsl:text>
      </xsl:text>
	  

        <xsl:text disable-output-escaping="yes">&lt;/fo:basic-link&gt;</xsl:text><xsl:text>
      </xsl:text>

	
      </fo:block>
    </fo:block-container>
    
  </xsl:template>

<!--  ****************************************************************************************************  -->

    

  
    <xsl:template match=" dPull | ctxt ">
    
    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>

	<xsl:attribute name="background-color">transparent</xsl:attribute>

	
	<xsl:attribute name="color">
	  <xsl:value-of select="./@color"/>
	</xsl:attribute>

	
	<xsl:text disable-output-escaping="yes">&lt;fo:basic-link external-destination="../Pdf/</xsl:text>	  
	<xsl:value-of select="$form"/>
	<xsl:text>_Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text>_</xsl:text>
	<xsl:value-of select="./line2"/>
	<xsl:text disable-output-escaping="yes">.pdf"&gt;</xsl:text><xsl:text>
      </xsl:text>
	
        <xsl:text disable-output-escaping="yes">&lt;xslt:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
      
        <xsl:text disable-output-escaping="yes">&lt;xslt:when test="document('../Output/</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>_Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text disable-output-escaping="yes">.xml')"&gt;</xsl:text><xsl:text>
      </xsl:text>
      
	<xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="document('../Output/</xsl:text>
	<xsl:value-of select="$form"/>
	<xsl:text>_Copy</xsl:text>
	<xsl:value-of select="$copy"/>
	<xsl:text disable-output-escaping="yes">.xml')//copy</xsl:text>
	<xsl:value-of select="./copy"/>
	<xsl:value-of select="./line2"/>
	<xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
      </xsl:text>
      
        <xsl:text disable-output-escaping="yes">&lt;/xslt:when&gt;</xsl:text><xsl:text>
      </xsl:text>
      
        <xsl:text disable-output-escaping="yes">&lt;xslt:otherwise&gt;</xsl:text><xsl:text>
      </xsl:text>
      
        <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="''"/&gt;</xsl:text><xsl:text>
    </xsl:text>
    
	<xsl:text disable-output-escaping="yes">&lt;/xslt:otherwise&gt;</xsl:text><xsl:text>
      </xsl:text>
      
        <xsl:text disable-output-escaping="yes">&lt;/xslt:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
	
        <xsl:text disable-output-escaping="yes">&lt;/fo:basic-link&gt;</xsl:text><xsl:text>
      </xsl:text>

      </fo:block>
    </fo:block-container>
    
    </xsl:template>


<!--   ***************************************************************************************************  -->

    
    <xsl:template match="dlin | addit | subtr | subt0 | smOf | tcalc | calc |cnum ">

    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>
	
	<xsl:attribute name="background-color">transparent</xsl:attribute>
	

	  <xsl:text disable-output-escaping="yes">&lt;xslt:attribute name="color"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">/@color"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:attribute&gt;</xsl:text><xsl:text>
	</xsl:text>

	
          <xsl:text disable-output-escaping="yes">&lt;xslt:choose&gt;</xsl:text><xsl:text>
	</xsl:text>
	  
	  <xsl:text disable-output-escaping="yes">&lt;xslt:when test="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">='0'"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	<!-- Note that this "when" is empty. That give the blank desired rather than 0. -->
	
	  <xsl:text disable-output-escaping="yes">&lt;&#47;xslt:when&gt;</xsl:text><xsl:text>
	</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
          <xsl:text disable-output-escaping="yes">&lt;&#47;xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>

	<xsl:text disable-output-escaping="yes">&lt;&#47;xslt:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
	  
		
      </fo:block>
    </fo:block-container>
      
    
    </xsl:template>
    

<!--   ****************************************************************************************************  -->

    <xsl:template match="ctext">

    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>
	
	<xsl:attribute name="background-color">transparent</xsl:attribute>
	

	  <xsl:text disable-output-escaping="yes">&lt;xslt:attribute name="color"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">/@color"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:attribute&gt;</xsl:text><xsl:text>
	</xsl:text>

	
          <xsl:text disable-output-escaping="yes">&lt;xslt:choose&gt;</xsl:text><xsl:text>
	</xsl:text>
	  
	  <xsl:text disable-output-escaping="yes">&lt;xslt:when test="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">=''"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	<!-- Note that this "when" is empty. That give the blank desired rather than 0. -->
	<!-- Note This is a variation on the previous in that 0 is changed to '', not sure this makes any difference. -->
	  <xsl:text disable-output-escaping="yes">&lt;&#47;xslt:when&gt;</xsl:text><xsl:text>
	</xsl:text>

          <xsl:text disable-output-escaping="yes">&lt;xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="copy</xsl:text>
	  <xsl:value-of select="$copy"/>
	  <xsl:text>line</xsl:text>
	  <xsl:value-of select="@number"/>
	  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
          <xsl:text disable-output-escaping="yes">&lt;&#47;xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>

	<xsl:text disable-output-escaping="yes">&lt;&#47;xslt:choose&gt;</xsl:text><xsl:text>
      </xsl:text>
	  
		
      </fo:block>
    </fo:block-container>
      
    
    </xsl:template>
    

<!--   ****************************************************************************************************  -->

    

  <xsl:template match="shwif">
    <fo:block-container position="absolute">
      <xsl:attribute name="top">
	<xsl:value-of select="@top"/>
      </xsl:attribute>
      
      <fo:block>
	<xsl:attribute name="height">
	  <xsl:value-of select="@height"/>
	</xsl:attribute>

	<xsl:attribute name="background-color">transparent</xsl:attribute>

	
	<fo:wrapper>

	  
	  <xsl:text disable-output-escaping="yes">&lt;xslt:attribute name="color"&gt;</xsl:text><xsl:text>
	</xsl:text>
	<xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="'blue'"/&gt;</xsl:text><xsl:text>
      </xsl:text>
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:attribute&gt;</xsl:text><xsl:text>
	</xsl:text>

	  <xsl:text disable-output-escaping="yes">&lt;xslt:choose&gt;</xsl:text><xsl:text>
        </xsl:text>
	
          <xsl:text disable-output-escaping="yes">&lt;xslt:when test="document('../Data/</xsl:text>
          <xsl:value-of select="./tform"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="./tcopy"/>
	  <xsl:text>_line</xsl:text>
	  <xsl:value-of select="./tline"/>
	  <xsl:text disable-output-escaping="yes">_text.xml')//text = '</xsl:text>
	  <xsl:value-of select="./if"/>
	  <xsl:text disable-output-escaping="yes">'"&gt;</xsl:text><xsl:text>
	</xsl:text>
	
          <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="document('../Data/</xsl:text>
	  <xsl:value-of select="./vform"/>
	  <xsl:text>_Copy</xsl:text>
	  <xsl:value-of select="./vcopy"/>
	  <xsl:text>_line</xsl:text>
	  <xsl:value-of select="./vline"/>
	  <xsl:text disable-output-escaping="yes">_text.xml')//text</xsl:text>
	  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
          <xsl:text disable-output-escaping="yes">&lt;/xslt:when&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;xslt:value-of select="''"/&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:otherwise&gt;</xsl:text><xsl:text>
	</xsl:text>
	
	  <xsl:text disable-output-escaping="yes">&lt;/xslt:choose&gt;</xsl:text><xsl:text>
	</xsl:text>

	</fo:wrapper>
	
      </fo:block>
    </fo:block-container>
    
  </xsl:template>

  
</xsl:stylesheet>


	

