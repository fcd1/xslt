<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xpath-default-namespace="http://www.loc.gov/mods/v3">
  <xsl:output method="text" indent = "no" />
  <xsl:strip-space elements="*" />

  <xsl:template match="/modsCollection">
    <xsl:for-each select="mods/identifier">
      <xsl:sort select="."/>
      <xsl:call-template name="identifier"/>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="identifier">
    <xsl:value-of select="concat(.,'.xml')"/>
    <xsl:text>,</xsl:text>
    <xsl:apply-templates select="../note"/>
  </xsl:template>

  <xsl:template match="note">
    <xsl:if test="starts-with(.,'original filename')">
      <xsl:value-of select="replace(.,'original filename: ','')"/>
      <xsl:choose>
	<xsl:when test="position() = last()">
	  <xsl:text>&#10;</xsl:text>
	</xsl:when>
	<xsl:otherwise>
	  <xsl:text> </xsl:text>
	</xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
