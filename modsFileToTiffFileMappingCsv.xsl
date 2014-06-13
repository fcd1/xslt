<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent = "no" />

    <xsl:template match="mods">
      <xsl:value-of select="concat(identifier/.,'.xml')"/>
      <xsl:apply-templates select="note"/>
    </xsl:template>

    <xsl:template match="note">
      <xsl:if test="starts-with(.,'original filename')">
	<xsl:value-of select="."/>
      </xsl:if>
    </xsl:template>

    <xsl:template match="/">
      <family>
	<xsl:apply-templates/>
      </family>
    </xsl:template>

</xsl:stylesheet>
