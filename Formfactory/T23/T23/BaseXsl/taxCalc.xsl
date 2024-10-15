<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output indent="yes"/>

  <xsl:template name="taxCalc">
    
    <xsl:param name="filingStatus"/>
    <xsl:param name="lineToBeTaxed"/>
    
<!-- *********************************************************************************************************** -->    
    <xsl:variable name="SBracketOne">
      <xsl:value-of select="11000"/>
    </xsl:variable>

    <xsl:variable name="SBracketTwo">
      <xsl:value-of select="44725"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketThree">
      <xsl:value-of select="95375"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFour">
      <xsl:value-of select="182100"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFive">
      <xsl:value-of select="231250"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketSix">
      <xsl:value-of select="578125"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFSBracketOne">
      <xsl:value-of select="11000"/>
    </xsl:variable>

    <xsl:variable name="MFSBracketTwo">
      <xsl:value-of select="44725"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketThree">
      <xsl:value-of select="95375"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFour">
      <xsl:value-of select="182100"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFive">
      <xsl:value-of select="231250"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketSix">
      <xsl:value-of select="346875"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="HOHBracketOne">
      <xsl:value-of select="15700"/>
    </xsl:variable>

    <xsl:variable name="HOHBracketTwo">
      <xsl:value-of select="59850"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketThree">
      <xsl:value-of select="95350"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFour">
      <xsl:value-of select="182100"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFive">
      <xsl:value-of select="231250"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketSix">
      <xsl:value-of select="578100"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFJQSSBracketOne">
      <xsl:value-of select="22000"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSBracketTwo">
      <xsl:value-of select="89450"/>
    </xsl:variable>
    
     <xsl:variable name="MFJQSSBracketThree">
       <xsl:value-of select="190750"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketFour">
      <xsl:value-of select="364200"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketFive">
      <xsl:value-of select="462500"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketSix">
      <xsl:value-of select="693750"/>
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
      <xsl:value-of select="1100"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketTwo">
	    <xsl:value-of select="5147"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketThree">
      <xsl:value-of select="16290"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFSTaxOnBracketOne">
      <xsl:value-of select="1100"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketTwo">
	    <xsl:value-of select="5147"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketThree">
      <xsl:value-of select="16290"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketFour">
      <xsl:value-of select="37104"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="HOHTaxOnBracketOne">
      <xsl:value-of select="1570"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketTwo">
	    <xsl:value-of select="6868"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketThree">
      <xsl:value-of select="14678"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketFour">
      <xsl:value-of select="335498"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFJQSSTaxOnBracketOne">
      <xsl:value-of select="2200"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketTwo">
	    <xsl:value-of select="10294"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketThree">
      <xsl:value-of select="32580"/>
    </xsl:variable>

    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="SSubtractionAmtBracketFour">
      <xsl:value-of select="6600"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketFive">
      <xsl:value-of select="21168"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSix">
      <xsl:value-of select="28105.50"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSeven">
      <xsl:value-of select="39668"/>
    </xsl:variable>
<!-- **************************************************************** -->
    <xsl:variable name="MFSSubtractionAmtBracketFour">
      <xsl:value-of select="6600"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketFive">
      <xsl:value-of select="21168"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSix">
      <xsl:value-of select="28105.50"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSeven">
      <xsl:value-of select="35043"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    
    <xsl:variable name="HOHSubtractionAmtBracketFour">
      <xsl:value-of select="8206"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketFive">
      <xsl:value-of select="22774"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSix">
      <xsl:value-of select="29711.50"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSeven">
      <xsl:value-of select="41273.50"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    
    <xsl:variable name="MFJQSSSubtractionAmtBracketThree">
      <xsl:value-of select="9385"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketFour">
      <xsl:value-of select="13200"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketFive">
      <xsl:value-of select="42336"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketSix">
      <xsl:value-of select="56211"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketSeven">
      <xsl:value-of select="70086"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
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

      <xsl:when test="$filingStatus='MFJ' or $filingStatus='QSS'">

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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.125) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $MFJQSSBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) * 50) - 0) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketOne and $lineToBeTaxed &lt;= $MFJQSSBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQSSBracketOne) * $TaxRateBracketTwo)  + $MFJQSSTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketTwo and $lineToBeTaxed &lt;= $MFJQSSBracketThree">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQSSBracketTwo) * $TaxRateBracketThree)  + $MFJQSSTaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketThree and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQSSBracketThree) * $TaxRateBracketFour)  + $MFJQSSTaxOnBracketThree)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $MFJQSSBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketFour) - $MFJQSSSubtractionAmtBracketFour)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketFour and $lineToBeTaxed &lt;= $MFJQSSBracketFive">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFive) - $MFJQSSSubtractionAmtBracketFive)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketFive and $lineToBeTaxed &lt;= $MFJQSSBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSix) - $MFJQSSSubtractionAmtBracketSix)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt; $MFJQSSBracketSix">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketSeven) - $MFJQSSSubtractionAmtBracketSeven)"/>
	  </xsl:when>
	  
	</xsl:choose>
	
      </xsl:when>

    </xsl:choose>
    
  </xsl:template>
  
</xsl:stylesheet>
