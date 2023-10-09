<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transformation">
  <xsl:template match="line[type='addit']">
    <xsl:variable name="$form-Copy$copy-line$@number">
      <xsl:choose>
	<xsl:when select="skip">
	  <!--
	  <xsl:choose>
	    <xsl:for-each select="skip">
	      <xsl:when test="$form-Copy-.line .action">
		<xsl:value-of select="0"/>
	      </xsl:when>
	    </xsl:for-each>
	    <xsl:otherwise>
	      $form-Copy-augend +
	      <xsl:for-each select="addend[position() != last()]">
		$form-Copy$copy-. +
	      </xsl:for-each>
	      $form-Copy$copy-addend[position = last()]"/>
	    </xsl:otherwise>
	  </xsl:choose>
	  -->
	</xsl:when>

	<xsl:otherwise>
	  <xsl:value-of select="0
<!--
	    $form-Copy$copy-$augend +

	    <xsl:for-each select="addend[position != last()]">
	      $form-Copy$copy-. +
	    </xsl:for-each>
	    $form-Copy$copy-$addend[position() = last()"
-->
	    "/>
	</xsl:otherwise>
      </xsl:choose>
      </xsl:variable>
    </xsl:template>
  </xsl:stylesheet>
