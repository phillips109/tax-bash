<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output indent="yes"/>

  <xsl:template name="taxCalc">
    
    <xsl:param name="filingStatus"/>
    <xsl:param name="lineToBeTaxed"/>
    
<!-- *********************************************************************************************************** -->    
    <xsl:variable name="SBracketOne">
      <xsl:value-of select="11600"/>
    </xsl:variable>

    <xsl:variable name="SBracketTwo">
      <xsl:value-of select="47150"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketThree">
      <xsl:value-of select="100525"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFour">
      <xsl:value-of select="191950"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketFive">
      <xsl:value-of select="243725"/>
    </xsl:variable>
    
    <xsl:variable name="SBracketSix">
      <xsl:value-of select="609350"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFSBracketOne">
      <xsl:value-of select="11600"/>
    </xsl:variable>

    <xsl:variable name="MFSBracketTwo">
      <xsl:value-of select="47150"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketThree">
      <xsl:value-of select="100525"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFour">
      <xsl:value-of select="191950"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketFive">
      <xsl:value-of select="243725"/>
    </xsl:variable>
    
    <xsl:variable name="MFSBracketSix">
      <xsl:value-of select="365600"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="HOHBracketOne">
      <xsl:value-of select="16550"/>
    </xsl:variable>

    <xsl:variable name="HOHBracketTwo">
      <xsl:value-of select="63100"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketThree">
      <xsl:value-of select="100500"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFour">
      <xsl:value-of select="191950"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketFive">
      <xsl:value-of select="243700"/>
    </xsl:variable>
    
    <xsl:variable name="HOHBracketSix">
      <xsl:value-of select="609350"/>
    </xsl:variable>
    
<!-- **************************************************************************************************************** -->    

    <xsl:variable name="MFJQSSBracketOne">
      <xsl:value-of select="23200"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSBracketTwo">
      <xsl:value-of select="94300"/>
    </xsl:variable>
    
     <xsl:variable name="MFJQSSBracketThree">
       <xsl:value-of select="201050"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketFour">
      <xsl:value-of select="383900"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketFive">
      <xsl:value-of select="487450"/>
    </xsl:variable>
    
    <xsl:variable name="MFJQSSBracketSix">
      <xsl:value-of select="731200"/>
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
      <xsl:value-of select="1160"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketTwo">
	    <xsl:value-of select="5426"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketThree">
      <xsl:value-of select="17168.50"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketFour">
      <xsl:value-of select="39110.50"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketFive">
	    <xsl:value-of select="55678.50"/>
    </xsl:variable>

    <xsl:variable name="STaxOnBracketSix">
      <xsl:value-of select="183647.25"/>
    </xsl:variable>
    
    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFSTaxOnBracketOne">
      <xsl:value-of select="1160"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketTwo">
	    <xsl:value-of select="5426"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketThree">
      <xsl:value-of select="17168.50"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketFour">
      <xsl:value-of select="39110.50"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketFive">
      <xsl:value-of select="55678.50"/>
    </xsl:variable>

    <xsl:variable name="MFSTaxOnBracketSix">
      <xsl:value-of select="98334.75"/>
    </xsl:variable>
    
    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="HOHTaxOnBracketOne">
      <xsl:value-of select="1655"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketTwo">
	    <xsl:value-of select="7241"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketThree">
      <xsl:value-of select="15469"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketFour">
      <xsl:value-of select="37417"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketFive">
      <xsl:value-of select="53977"/>
    </xsl:variable>

    <xsl:variable name="HOHTaxOnBracketSix">
      <xsl:value-of select="181954.50"/>
    </xsl:variable>
    
    <!-- ****************************************************************************************************************** -->

    <xsl:variable name="MFJQSSTaxOnBracketOne">
      <xsl:value-of select="2320"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketTwo">
	    <xsl:value-of select="10852"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketThree">
      <xsl:value-of select="34337"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketFour">
      <xsl:value-of select="78221"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketFive">
	    <xsl:value-of select="111357"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSTaxOnBracketSix">
      <xsl:value-of select="196669.50"/>
    </xsl:variable>
    
    <!-- ****************************************************************************************************************** -->
    <xsl:variable name="SSubtractionAmtBracketThree">
      <xsl:value-of select="4947"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketFour">
      <xsl:value-of select="6957.50"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketFive">
      <xsl:value-of select="22313.50"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSix">
      <xsl:value-of select="29625.25"/>
    </xsl:variable>

    <xsl:variable name="SSubtractionAmtBracketSeven">
      <xsl:value-of select="41812.25"/>
    </xsl:variable>
<!-- **************************************************************** -->
    <xsl:variable name="MFSSubtractionAmtBracketThree">
      <xsl:value-of select="4947"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketFour">
      <xsl:value-of select="6957.50"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketFive">
      <xsl:value-of select="22313.50"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSix">
      <xsl:value-of select="29625.25"/>
    </xsl:variable>

    <xsl:variable name="MFSSubtractionAmtBracketSeven">
      <xsl:value-of select="36937.25"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    <xsl:variable name="HOHSubtractionAmtBracketThree">
      <xsl:value-of select="6641"/>
    </xsl:variable>
    
    <xsl:variable name="HOHSubtractionAmtBracketFour">
      <xsl:value-of select="8651"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketFive">
      <xsl:value-of select="24007"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSix">
      <xsl:value-of select="31318"/>
    </xsl:variable>

    <xsl:variable name="HOHSubtractionAmtBracketSeven">
      <xsl:value-of select="43505"/>
    </xsl:variable>

<!-- *************************************************************************************************************************** -->
    
    <xsl:variable name="MFJQSSSubtractionAmtBracketThree">
      <xsl:value-of select="9894"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketFour">
      <xsl:value-of select="13915"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketFive">
      <xsl:value-of select="44627"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketSix">
      <xsl:value-of select="59250.50"/>
    </xsl:variable>

    <xsl:variable name="MFJQSSSubtractionAmtBracketSeven">
      <xsl:value-of select="73874.50"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 25) + 0.50) * 25) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $SBracketOne">
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 50) + 0.50) * 50) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketOne and $lineToBeTaxed &lt;= $SBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $SBracketOne) * $TaxRateBracketTwo)  + $STaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $SBracketTwo and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $SBracketTwo) * $TaxRateBracketThree)  + $STaxOnBracketTwo)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $SBracketThree">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketThree) - $SSubtractionAmtBracketThree)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $SBracketThree and $lineToBeTaxed &lt;= $SBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFour) - $SSubtractionAmtBracketFour)"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 25) + 0.50) * 25) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $MFSBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) *50) * $TaxRateBracketOne) -0)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketOne and $lineToBeTaxed &lt;= $MFSBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFSBracketOne) * $TaxRateBracketTwo)  + $MFSTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFSBracketTwo and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFSBracketTwo) * $TaxRateBracketThree)  + $MFSTaxOnBracketTwo)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $MFSBracketThree">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketThree) - $MFSSubtractionAmtBracketThree)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $MFSBracketThree and $lineToBeTaxed &lt;= $MFSBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFour) - $MFSSubtractionAmtBracketFour)"/>
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
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 25) + 0.50) * 25) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 3000 and $lineToBeTaxed &lt;= $HOHBracketOne">
	    <xsl:value-of select="round((((floor($lineToBeTaxed div 50) + 0.50) * 50) - 0) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketOne and $lineToBeTaxed &lt;= $HOHBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - HOHBracketOne) * $TaxRateBracketTwo)  + $HOHTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $HOHBracketTwo and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $HOHBracketTwo) * $TaxRateBracketThree)  + $HOHTaxOnBracketTwo)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $HOHBracketThree">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketThree) - $HOHSubtractionAmtBracketThree)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $HOHBracketThree and $lineToBeTaxed &lt;= $HOHBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFour) - $HOHSubtractionAmtBracketFour)"/>
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
	  
	  <xsl:when test="$lineToBeTaxed &gt;= 25 and $lineToBeTaxed &lt; 3000">
	    <xsl:value-of select="round(((floor($lineToBeTaxed div 25) + 0.50) * 25) * $TaxRateBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketOne and $lineToBeTaxed &lt;= $MFJQSSBracketTwo">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQSSBracketOne) * $TaxRateBracketTwo)  + $MFJQSSTaxOnBracketOne)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketTwo and $lineToBeTaxed &lt;= 100000">
	    <xsl:value-of select="round(((((floor($lineToBeTaxed div 50) + 0.50) * 50) - $MFJQSSBracketTwo) * $TaxRateBracketThree)  + $MFJQSSTaxOnBracketTwo)"/>
	  </xsl:when>
	  
	  <xsl:when test="$lineToBeTaxed > 100000 and $lineToBeTaxed &lt;= $MFJQSSBracketThree">
	    <xsl:value-of select="round(($lineToBeTaxed * $TaxRateBracketThree) - $MFJQSSSubtractionAmtBracketThree)"/>
	  </xsl:when>

	  <xsl:when test="$lineToBeTaxed > $MFJQSSBracketThree and $lineToBeTaxed &lt;= $MFJQSSBracketFour">
	    <xsl:value-of select="round(($lineToBeTaxed  * $TaxRateBracketFour) - $MFJQSSSubtractionAmtBracketFour)"/>
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
