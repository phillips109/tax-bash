<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output indent="yes"/>

  <xsl:template name="taxCalc">
    
    <xsl:param name="filingStatus"/>
    <xsl:param name="lineToBeTaxed"/>
    
<!-- *********************************************************************************************************** -->    
    <xsl:variable name="SBracketOne">
      <xsl:value-of select="10275"/>
    </xsl:variable>

    <xsl:variable name="SBracketTwo">
      <xsl:value-of select="41775"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketThree">
      <xsl:value-of select="89075"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFour">
      <xsl:value-of select="170050"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFive">
      <xsl:value-of select="215950"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketSix">
      <xsl:value-of select="539900"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFSBracketOne">
      <xsl:value-of select="10275"/>
    </xsl:variable>

    <xsl:variable name="MFSBracketTwo">
      <xsl:value-of select="41775"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketThree">
      <xsl:value-of select="89075"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFour">
      <xsl:value-of select="170050"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFive">
      <xsl:value-of select="215950"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketSix">
      <xsl:value-of select="323925"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="HOHBracketOne">
      <xsl:value-of select="14650"/>
    </xsl:variable>

    <xsl:variable name="HOHBracketTwo">
      <xsl:value-of select="55900"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketThree">
      <xsl:value-of select="89050"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFour">
      <xsl:value-of select="170050"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFive">
      <xsl:value-of select="215950"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketSix">
      <xsl:value-of select="539900"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFJQWBracketOne">
      <xsl:value-of select="20550"/>
    </xsl:variable>

    <xsl:variable name="MFJQWBracketTwo">
      <xsl:value-of select="83550"/>
    </xsl:variable>
    
     <xsl:variable name="MFJQWBracketThree">
       <xsl:value-of select="178150"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQWBracketFour">
      <xsl:value-of select="340100"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQWBracketFive">
      <xsl:value-of select="431900"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQWBracketSix">
      <xsl:value-of select="647850"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

<xsl:variable name="TaxRateBracketOne">
      <xsl:value-of select="0.10"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketTwo">
      <xsl:value-of select="0.12"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketThree">
      <xsl:value-of select="0.22"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketFour">
      <xsl:value-of select="0.24"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketFive">
      <xsl:value-of select="0.32"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketSix">
      <xsl:value-of select="0.35"/>
    </xsl:variable>
    
    <xsl:variable name="TaxRateBracketSeven">
      <xsl:value-of select="0.37"/>
    </xsl:variable>
    
    <!-- ************************************************************************************************************* -->    

    <xsl:variable name="STaxOnBracketOne">
      <xsl:value-of select="10275"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketTwo">
	    <xsl:value-of select="4807.50"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketThree">
      <xsl:value-of select="15213.50"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFSTaxOnBracketOne">
      <xsl:value-of select="10275"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketTwo">
	    <xsl:value-of select="4807.50"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketThree">
      <xsl:value-of select="15213.50"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketFour">
      <xsl:value-of select="34647.50"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="HOHTaxOnBracketOne">
      <xsl:value-of select="1465"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketTwo">
	    <xsl:value-of select="6415"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketThree">
      <xsl:value-of select="13708"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketFour">
      <xsl:value-of select="33148"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFJQWTaxOnBracketOne">
      <xsl:value-of select="2055"/>
    </xsl:variable>

    <xsl:variable name="MFJQWTaxOnBracketTwo">
	    <xsl:value-of select="9615"/>
    </xsl:variable>

    <xsl:variable name="MFJQWTaxOnBracketThree">
      <xsl:value-of select="30427"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="SSubtractionAmtBracketFour">
      <xsl:value-of select="6164"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketFive">
      <xsl:value-of select="19768.50"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSix">
      <xsl:value-of select="26247"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSeven">
      <xsl:value-of select="37045"/>
    </xsl:variable>
<!-- **************************************************************** -->
    <xsl:variable name="MFSSubtractionAmtBracketFour">
      <xsl:value-of select="6164.50"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketFive">
      <xsl:value-of select="19768.50"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSix">
      <xsl:value-of select="26247"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSeven">
      <xsl:value-of select="32725.50"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    
    <xsl:variable name="HOHSubtractionAmtBracketFour">
      <xsl:value-of select="7664"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketFive">
      <xsl:value-of select="21268"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSix">
      <xsl:value-of select="27746.50"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSeven">
      <xsl:value-of select="38544.59"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    
    <xsl:variable name="MFJQWSubtractionAmtBracketThree">
      <xsl:value-of select="8766"/>
    </xsl:variable>

    <xsl:variable name="MFJQWSubtractionAmtBracketFour">
      <xsl:value-of select="12329"/>
    </xsl:variable>

    <xsl:variable name="MFJQWSubtractionAmtBracketFive">
      <xsl:value-of select="39537"/>
    </xsl:variable>

    <xsl:variable name="MFJQWSubtractionAmtBracketSix">
      <xsl:value-of select="52494"/>
    </xsl:variable>

    <xsl:variable name="MFJQWSubtractionAmtBracketSeven">
      <xsl:value-of select="65451"/>
    </xsl:variable>

    <!-- *************************************************************************************************************************** -->
    
    <xsl:choose>
      
      <xsl:when test="$filingStatus='S'">

	<xsl:choose>

	  <xsl:when test="$lineToBeTaxed &lt;= 5">
	    <xsl:value-of select="0"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 5 and $lineToBeTaxed &lt; 15">
	    <xsl:value-of select="1"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 15 and $lineToBeTaxed &lt; 25">
	    <xsl:value-of select="2"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 25 and $lineToBeTaxed &lt; 3000">
	    <xsl:value-of select="round(((floor(lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $SBracketOne">
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.50) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketOne and $lineToBeTaxed &lt;= $SBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $SBracketOne) * $TaxRateBracketTwo)  + $STaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketTwo and $lineToBeTaxed &lt;= $SBracketThree">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $SBracketTwo) * $TaxRateBracketThree)  + $STaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $SBracketThree and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $SBracketThree) * $TaxRateBracketFour)  + $STaxOnBracketThree)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $SBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketFour) - $SSubtractionAmtBracketFour)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketFour and $lineToBeTaxed &lt;= $SBracketFive">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFive) - $SSubtractionAmtBracketFive)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketFive and $lineToBeTaxed &lt;= $SBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSix) - $SSubtractionAmtBracketSix)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt; $SBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSeven) - $SSubtractionAmtBracketSeven)"/>
	  </xsl:when>
	  
	</xsl:choose>

      </xsl:when>


      <xsl:when test="$filingStatus='MFS'">

	<xsl:choose>
	  
	  <xsl:when test="$lineToBeTaxed &lt;= 0">
	    <xsl:value-of select="0"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &lt; 5">
	    <xsl:value-of select="0"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 5 and $lineToBeTaxed &lt; 15">
	    <xsl:value-of select="1"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 15 and $lineToBeTaxed &lt; 25">
	    <xsl:value-of select="2"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 25 and $lineToBeTaxed &lt; 3000">
	    <xsl:value-of select="round(((floor(lineToBeTaxed div 25) + 0.5) * 25) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $MFSBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) *50) * $TaxRateBracketOne) -0)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketOne and $lineToBeTaxed &lt;= $MFSBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFSBracketOne) * $TaxRateBracketTwo)  + $MFSTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketTwo and $lineToBeTaxed &lt;= $MFSBracketThree">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFSBracketTwo) * $TaxRateBracketThree)  + $MFSTaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $MFSBracketThree and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFSBracketThree) * $TaxRateBracketFour)  + $MFSTaxOnBracketThree)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $MFSBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketFour) - $MFSSubtractionAmtBracketFour)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketFour and $lineToBeTaxed &lt;= $MFSBracketFive">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFive) - $MFSSubtractionAmtBracketFive)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketFive and $lineToBeTaxed &lt;= $MFSBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSix) - $MFSSubtractionAmtBracketSix)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt; $MFSBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSeven) - $MFSSubtractionAmtBracketSeven)"/>
	  </xsl:when>
	  
	</xsl:choose>
	
      </xsl:when>
      
      <xsl:when test="$filingStatus='HOH'">

	<xsl:choose>

	  <xsl:when test="$lineToBeTaxed &lt;= 5">
	    <xsl:value-of select="0"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 5 and $lineToBeTaxed &lt; 15">
	    <xsl:value-of select="1"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 15 and $lineToBeTaxed &lt; 25">
	    <xsl:value-of select="2"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 25 and $lineToBeTaxed &lt; 3000">
	    <xsl:value-of select="round(((floor(lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $HOHBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) * 50) - 0) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketOne and $lineToBeTaxed &lt;= $HOHBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - HOHBracketOne) * $TaxRateBracketTwo)  + $HOHTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketTwo and $lineToBeTaxed &lt;= $HOHBracketThree">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $HOHBracketTwo) * $TaxRateBracketThree)  + $HOHTaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $HOHBracketThree and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $HOHBracketThree) * $TaxRateBracketFour)  + $HOHTaxOnBracketThree)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $HOHBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketFour) - $HOHSubtractionAmtBracketFour)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketFour and $lineToBeTaxed &lt;= $HOHBracketFive">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFive) - $HOHSubtractionAmtBracketFive)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketFive and $lineToBeTaxed &lt;= $HOHBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSix) - $HOHSubtractionAmtBracketSix)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt; $HOHBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSeven) - $HOHSubtractionAmtBracketSeven)"/>
	  </xsl:when>

	</xsl:choose>

      </xsl:when>

      <xsl:when test="$filingStatus='MFJ' or $filingStatus='QW'">

	<xsl:choose>

	  <xsl:when test="$lineToBeTaxed &lt;= 5">
	    <xsl:value-of select="0"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 5 and $lineToBeTaxed &lt; 15">
	    <xsl:value-of select="1"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 15 and $lineToBeTaxed &lt; 25">
	    <xsl:value-of select="2"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed &gt;= 25 and $lineToBeTaxed &lt; 3000">
	    <xsl:value-of select="round(((floor(lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $MFJQWBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) * 50) - 0) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQWBracketOne and $lineToBeTaxed &lt;= $MFJQWBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQWBracketOne) * $TaxRateBracketTwo)  + $MFJQWTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQWBracketTwo and $lineToBeTaxed &lt;= $MFJQWBracketThree">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQWBracketTwo) * $TaxRateBracketThree)  + $MFJQWTaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $MFJQWBracketThree and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQWBracketThree) * $TaxRateBracketFour)  + $MFJQWTaxOnBracketThree)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $MFJQWBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketFour) - $MFJQWSubtractionAmtBracketFour)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQWBracketFour and $lineToBeTaxed &lt;= $MFJQWBracketFive">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFive) - $MFJQWSubtractionAmtBracketFive)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQWBracketFive and $lineToBeTaxed &lt;= $MFJQWBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSix) - $MFJQWSubtractionAmtBracketSix)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt; $MFJQWBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSeven) - $MFJQWSubtractionAmtBracketSeven)"/>
	  </xsl:when>
	  
	</xsl:choose>
	
      </xsl:when>

    </xsl:choose>
    
  </xsl:template>
  
</xsl:stylesheet>
