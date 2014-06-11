<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent = "yes" encoding="UTF-8"/>
    <xsl:template match="mods">
      <xsl:variable name="filename" select="concat(identifier/.,'.xml')"/>
      <xsl:result-document method="xml" href="{$filename}" encoding="UTF-8" indent="yes">
	<xsl:copy-of select="."/>
      </xsl:result-document>
    </xsl:template>
</xsl:stylesheet>
