<?xml version="1.0"?>

<!--
Copyright (C) 2008 Bastien ROUCARIES <bastien.roucaries+qucs@gmail.com>

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
     xmlns:svg="http://www.w3.org/2000/svg"
     version="1.0">
  
  <xsl:output method="xml" encoding="utf8" indent="yes"/>

  <!-- add comment -->
  <xsl:template match="/">
    <xsl:copy>
      <xsl:comment>Autogenerated by transform script</xsl:comment>
      <xsl:apply-templates/>
    </xsl:copy>
  </xsl:template>
  
  <!-- delete previous css styling -->
  <xsl:template match="/svg:svg/svg:defs/svg:style/">
    <xsl:apply-templates/>
  </xsl:template>

  <!-- add styling depending of group element  -->

  <!-- outline -->
  <xsl:template match="svg:g/@class[.='outline']">
    <xsl:attribute name="class">outline</xsl:attribute>
    <xsl:attribute name="fill">none</xsl:attribute>
    <xsl:attribute name="stroke">blue</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute>  
  </xsl:template>
  
  <!-- enclosure -->
  <xsl:template match="svg:g/@class[.='enclosure']">
    <xsl:attribute name="class">enclosure</xsl:attribute>
    <xsl:attribute name="fill">none</xsl:attribute>
    <xsl:attribute name="stroke">grey</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute> 
  </xsl:template>

  <!-- meta component enclosure -->
  <xsl:template match="svg:g/@class[.='metaenclosure']">
    <xsl:attribute name="class">enclosure</xsl:attribute>
    <xsl:attribute name="fill">none</xsl:attribute>
    <xsl:attribute name="stroke">teal</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute> 
    <xsl:attribute name="stroke-dasharray">5,5</xsl:attribute> 
  </xsl:template>
 

  <!-- noise -->
  <xsl:template match="svg:g/@class[.='noise']">
    <xsl:attribute name="class">noise</xsl:attribute>
    <xsl:attribute name="fill">grey</xsl:attribute>
    <xsl:attribute name="stroke">grey</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute> 
  </xsl:template>

  <!-- arrow -->
  <xsl:template match="svg:g/@class[.='arrow']">
    <xsl:attribute name="class">arrow</xsl:attribute>
    <xsl:attribute name="fill">green</xsl:attribute>
    <xsl:attribute name="stroke">green</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute> 
  </xsl:template>

  <!-- magnetic dot -->
  <xsl:template match="svg:g/@class[.='mdot']">
    <xsl:attribute name="class">mdot</xsl:attribute>
    <xsl:attribute name="fill">none</xsl:attribute>
    <xsl:attribute name="stroke">red</xsl:attribute>
    <xsl:attribute name="stoke-width">1</xsl:attribute> 
  </xsl:template>



  <!-- Copy all the other source tree nodes. -->
  <xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
  </xsl:template>

</xsl:stylesheet>

