<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" indent = "no" />
<xsl:strip-space elements="*" />
<xsl:template match="itemContainer">
<xsl:apply-templates select="item"/>
</xsl:template> 
<xsl:template match="item">
<xsl:apply-templates select="OriginalFileLoadedIntoOmeka"/>
</xsl:template> 
<xsl:template match="text">
<xsl:if test="position() >1"><xsl:text>&#10;</xsl:text></xsl:if>
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="OriginalFileLoadedIntoOmeka">
<xsl:apply-templates/>
<xsl:text>&#10;</xsl:text>
</xsl:template> 
</xsl:stylesheet>
