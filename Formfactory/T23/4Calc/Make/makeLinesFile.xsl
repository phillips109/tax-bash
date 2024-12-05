<?xml version="1.0" encoding="utf-8"?>
<!--
#This file creates the data files.
#
#Copyright(C) 2023, 2024 Phillips Wedemeyer
#
#This file is part of a program called Tax-bash.
#
#Tax-bash is free software: you can redistibute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Tax-bash is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Tax-bash.  If not, see <https://www.gnu.org/licenses/>.
#
#

-->

<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output omit-xml-declaration="yes"/>

  <xsl:param name="form"/>
  <xsl:param name="copy"/>
  
  
  <xsl:template match="/">
    <xsl:text disable-output-escaping="yes">&lt;Form xmlns:xsl="http://www.w3.org/1999/XSL/Transform" name="</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text disable-output-escaping="yes">&quot;&gt;</xsl:text>
    
    <xsl:apply-templates/>
    
    <xsl:text disable-output-escaping="yes">&lt;&#47;Form&gt;</xsl:text>
    
  </xsl:template>
  
  
  <!-- Note tlin uses "name" others use "number" -->
  
  <xsl:template match="line[type='tlin']">
		
    <xsl:text disable-output-escaping="yes">&lt;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text> color="</xsl:text>
    <xsl:value-of select="@color"/>
    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;</xsl:text>
    <xsl:text>xsl:value-of select="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text disable-output-escaping="yes">"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>


  
    <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;&#47;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@name"/>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  </xsl:template>

<xsl:template match="line[type = 'text'  or
		     type = 'tPull'      or
		     type = 'ctext'      or
		     type = 'c2text'     or
		     type = 'textNav'    or
		     type = 'dataNav'    or
		     type = 'no'         or
		     type = 'yearOfSale']">
    
    <xsl:text disable-output-escaping="yes">&lt;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text> color="</xsl:text>
    <xsl:value-of select="@color"/>
    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
  </xsl:text>

  
    <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;</xsl:text>
    <xsl:text>xsl:value-of select="$</xsl:text>
    <xsl:value-of select="$form"/>
    <xsl:text>-Copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>-line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">"&#47;&gt;</xsl:text><xsl:text>
  </xsl:text>


  
    <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;&#47;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>

  </xsl:template>
  
    
  <!-- ************************************************************************************* -->


  <xsl:template match="dlin">
    
    <xsl:text disable-output-escaping="yes">&lt;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text> color="</xsl:text>
    <xsl:value-of select="@color"/>
    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
  <xsl:text>xsl:value-of select="format-number($</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>, '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"&#47;&gt;</xsl:text><xsl:text>
</xsl:text>
  
  <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;&#47;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>

  <xsl:template match="line[type = 'dPull'  or
		       type = 'dRef'   or
		       type = 'addit'  or
		       type = 'subtr'  or
		       type = 'subt0'  or
		       type = 'mult'   or
		       type = 'rmult'  or
		       type = 'div'    or
		       type = 'smOf'   or
		       type = 'lgOf'   or
		       type = 'cnum'   or
                       TYPE = 'c2num'  or
		       type = 'choice' or
		       type = 'cFS'    or
		       type = 'const'  or
		       type = 'tCalc']">
    
    <xsl:text disable-output-escaping="yes">&lt;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text> color="</xsl:text>
    <xsl:value-of select="@color"/>
    <xsl:text disable-output-escaping="yes">"&gt;</xsl:text><xsl:text>
  </xsl:text>

  <xsl:text disable-output-escaping="yes">&lt;</xsl:text>
  <xsl:text>xsl:value-of select="format-number($</xsl:text>
  <xsl:value-of select="$form"/>
  <xsl:text>-Copy</xsl:text>
  <xsl:value-of select="$copy"/>
  <xsl:text>-line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text>, '</xsl:text>
  <xsl:value-of select="format"/>
  <xsl:text disable-output-escaping="yes">')"&#47;&gt;</xsl:text><xsl:text>
</xsl:text>
  
  <xsl:text disable-output-escaping="yes">&#x20;&#x20;&lt;&#47;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
  <xsl:value-of select="@number"/>
  <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
</xsl:text>
  
  </xsl:template>
  

  
</xsl:stylesheet>

<!--
    <xsl:text disable-output-escaping="yes">&lt;copy</xsl:text>
    <xsl:value-of select="$copy"/>
    <xsl:text>line</xsl:text>
    <xsl:value-of select="@number"/>
    <xsl:text disable-output-escaping="yes">&gt;</xsl:text><xsl:text>
  </xsl:text>
-->
