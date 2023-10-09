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
  
<!-- *************************************************************************************************************
Available types:
   const
   tlin
   dlin
   tPull
   dPull
   dRef
   addit
   subtr
   subt0
   div
   mult
   rmult (rounded?)
   smOf
   lgOf
   ctext
   cnum
   cFS
   cCho
   tCalc

-->

<xsl:template match="line[type='const']">

  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&quot; select=&quot;</xsl:text>
  <xsl:value-of select="./value"/>
  <xsl:text disable-output-escaping="yes">&quot;&#047;&gt;</xsl:text><xsl:text>
</xsl:text>


</xsl:template>



<xsl:template match="tlin">

  <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@name"/>
  <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
</xsl:text>

      <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="document('../Data/</xsl:text>
      <xsl:value-of select="$form"/>
      <xsl:text>_Copy</xsl:text>
      <xsl:value-of select="$copy"/>
      <xsl:text>_line</xsl:text>
      <xsl:value-of select="@name"/>
      <xsl:text disable-output-escaping="yes">_text.xml&apos;)//text&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
  
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>

</xsl:template>


<!-- ****************************************************************************************************************** -->


<xsl:template match="dlin">
  
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

<!-- This version looks to see if the ../Data file exists.
     If it does, the value is pulled.
     If it doesn't, blank is returned.
-->
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


<!-- ********************************************************************************************************** -->
  
  
<!-- This version looks to see if the ../Output document exists. -->
<!-- If it does, the appropriate value is pulled. -->
<!-- If not, zero is pulled. -->
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
-->

<!-- ******************************************************************************************************** -->

<!-- This version looks to see if the ../Output document exists. -->
<!-- If it does, the appropriate value is pulled. -->
<!-- If not, the value of <dummy> is pulled. -->
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
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:when&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
    <xsl:value-of select="./dummy"/>
    <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text>      

    <xsl:text disable-output-escaping="yes">&lt;/xsl:otherwise&gt;</xsl:text>
    
    <xsl:text disable-output-escaping="yes">&lt;/xsl:choose&gt;</xsl:text>
    
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>
  

<!-- ******************************************************************************************************** -->

<!-- dRef simplly takes the value of another line. -->
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
      <xsl:text>-</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>
    
    
  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
</xsl:text>
  </xsl:template>

  
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
  <xsl:template match="line[type='choose']">

    <xsl:text disable-output-escaping="yes">&lt;xsl:variable name="</xsl:text>
    <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes"> &lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="$Form1040-Copy00-line4952 &gt; 0"</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="$Form1040-Copy00-lineSDTW"/&gt;</xsl:text><xsl:text>
</xsl:text>
  <xsl:text disable-output-escaping="yes'>&lt;/xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:choose&gt;</xsl:text><xsl:text>
</xsl:text>

<xsl:text disable-output-escaping
UNFINISHED!
<!-- ********************************************************* -->







  
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
  <xsl:value-of select="./test"/>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./value1"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./value2"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
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


<!--
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(</xsl:text>
  <xsl:value-of select="./value1"/>
  <xsl:text>,'</xsl:text>
  <xsl:value-of select="./format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>
-->

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./value1"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>


<xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:otherwise&gt;</xsl:text><xsl:text>
</xsl:text>

  <!--
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="format-number(</xsl:text>
  <xsl:value-of select="./value2"/>
  <xsl:text>,'</xsl:text>
  <xsl:value-of select="./format"/>
  <xsl:text disable-output-escaping="yes">')"/&gt;</xsl:text><xsl:text>
</xsl:text>
-->

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./value2"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>


  <!--
  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./value2"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>
-->

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

  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineFS_text.xml')//text = 'MFJ'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueMFJ"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineFS_text.xml')//text = 'S'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueS"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineFS_text.xml')//text = 'HOH'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueHOH"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>


  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineFS_text.xml')//text = 'QSS'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueQW"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>




  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineApart_text.xml')//text = 'All'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueAll"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>





  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineApart_text.xml')//text = 'None'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueNone"/>
  <xsl:text disable-output-escaping="yes">"/&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:when&gt;</xsl:text><xsl:text>
</xsl:text>



  <xsl:text disable-output-escaping="yes">&lt;xsl:when test="document('../Data/Bkg</xsl:text>
  <xsl:text>_Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>_lineApart_text.xml')//text = 'Some'</xsl:text>
  <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
</xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;xsl:value-of select="</xsl:text>
  <xsl:value-of select="./valueSome"/>
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

<!-- ************************************************************************************************************************************** -->


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

  <xsl:text disable-output-escaping="yes">&lt;xsl:call-template name="taxCalc"&gt;</xsl:text><xsl:text>
</xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:with-param name="filingStatus" select="$</xsl:text>
      <xsl:value-of select="$form"/>
      <xsl:text>-Copy</xsl:text>
      <xsl:value-of select="$copy"/>
      <xsl:text>-lineFS</xsl:text>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;xsl:with-param name="lineToBeTaxed" select="$</xsl:text>
      <xsl:value-of select="$form"/>
      <xsl:text>-Copy</xsl:text>
      <xsl:value-of select="$copy"/>
      <xsl:text>-</xsl:text>
      <xsl:value-of select="./line2"/>
      <xsl:text disable-output-escaping="yes">&quot;&#47;&gt;</xsl:text><xsl:text>
    </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:call-template&gt;</xsl:text><xsl:text>
  </xsl:text>

    <xsl:text disable-output-escaping="yes">&lt;&#47;xsl:variable&gt;</xsl:text><xsl:text>
  </xsl:text>

</xsl:template>

</xsl:stylesheet>

  
   

