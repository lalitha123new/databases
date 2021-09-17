<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="text()"/>

  <xsl:template match="root">
    <project><xsl:text>&#10;</xsl:text>
      <xsl:apply-templates/>
    </project>
  </xsl:template>

  <xsl:template match="*">
    <mkdir>
      <xsl:attribute name="dir">
        <xsl:for-each select="ancestor::*">
          <xsl:if test="position() != 1">
            <xsl:value-of select="name()"/>
            <xsl:text>/</xsl:text>
          </xsl:if>
        </xsl:for-each>
        <xsl:value-of select="name()"/>
      </xsl:attribute>
    </mkdir><xsl:text>&#10;</xsl:text>

    <xsl:apply-templates/>
  </xsl:template>
</xsl:transform>