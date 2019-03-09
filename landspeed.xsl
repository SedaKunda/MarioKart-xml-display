<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/mariokart">
        <results>
            <xsl:for-each select="tires/tire">
                <xsl:variable name="tirename" select="name"/>
                <xsl:variable name="tirespeed" select="speed/land"/>
                <xsl:for-each select="//bodies/body">
                    <result>
                        <tire>
                            <xsl:value-of select="$tirename"/>
                        </tire>
                        <body>
                            <xsl:value-of select="name"/>
                        </body>
                        <speed>
                            <xsl:value-of select="sum(($tirespeed | speed/land)[number(.) = .])"/>
                        </speed>
                    </result>
                </xsl:for-each>
            </xsl:for-each>
        </results>
    </xsl:template>
</xsl:stylesheet>
