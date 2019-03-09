<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/mariokart">
        <results>
            <xsl:for-each select="//name">
                <xsl:sort select="text()" order="ascending"/>
                <name>
                    <xsl:value-of select="text()"/>
                </name>
            </xsl:for-each>
        </results>
    </xsl:template>
</xsl:stylesheet>
