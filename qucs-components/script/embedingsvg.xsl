<?xml version="1.0"?>

<!--
Copyright (C) 2007 Bastien ROUCARIES <bastien.roucaries+qucs@gmail.com>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

-->

<xsl:stylesheet
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     version="1.0">
  
  <xsl:output method="xml" encoding="utf8" indent="yes"/>
  
  <xsl:template match="/">
    <xsl:copy>
      <xsl:comment>Autogenerated by embeding svg script</xsl:comment>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="component/schematics/schematic">
    <xsl:choose>
      <xsl:when test="@href">
	<schematic>
	  <xsl:attribute name="name">
	    <xsl:value-of select="@name"/>
	  </xsl:attribute>
	<xsl:copy>
	  <xsl:copy-of select="child::node()"/>
	  <xsl:copy-of select="document(@href)"/>
	</xsl:copy>
	</schematic>
      </xsl:when>
      <xsl:otherwise>
	<xsl:copy-of select="node()"/>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
  </xsl:template>

</xsl:stylesheet>