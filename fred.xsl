<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent = "yes" encoding="UTF-8"/>

    <xsl:template match="rootElement">
      <ROOT1><xsl:value-of select="."/></ROOT1>
      <ROOT2><xsl:copy-of select="."/></ROOT2>
      <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="parent">
      <PPARENT><xsl:value-of select="."/></PPARENT>
      <PPARENT><xsl:copy-of select="."/></PPARENT>
    </xsl:template>

    <xsl:template match="parent">
      <PARENT1><xsl:value-of select="."/></PARENT1>
      <stuff> This is stuff </stuff>
      <PARENT2><xsl:copy-of select="."/></PARENT2>
      <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="child">
      <CHILD1><xsl:value-of select="."/></CHILD1>
      <CHILD2><xsl:copy-of select="."/></CHILD2>
      <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="/">
      <family>
	<xsl:apply-templates/>
      </family>
    </xsl:template>
</xsl:stylesheet>
