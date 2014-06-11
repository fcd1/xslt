<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent = "yes" encoding="UTF-8"/>

    <xsl:template match="rootElement">
      <ROOT><xsl:value-of select="."/></ROOT>
      <ROOT><xsl:copy-of select="."/></ROOT>
      <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="parent">
      <PPARENT><xsl:value-of select="."/></PPARENT>
      <PPARENT><xsl:copy-of select="."/></PPARENT>
    </xsl:template>

    <xsl:template match="parent">
      <PARENT><xsl:value-of select="."/></PARENT>
      <stuff> This is stuff </stuff>
      <PARENT><xsl:copy-of select="."/></PARENT>
      <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="parent/child">
      <CHILD><xsl:value-of select="."/></CHILD>
      <CHILD><xsl:copy-of select="."/></CHILD>
    </xsl:template>

    <xsl:template match="/">
      <family>
	<xsl:apply-templates/>
	<xsl:apply-templates/>
      </family>
    </xsl:template>
</xsl:stylesheet>
