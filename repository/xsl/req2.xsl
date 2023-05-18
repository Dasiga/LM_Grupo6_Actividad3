<?xml version="1.0" ?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/ite">

        <instituto>
            <!-- Atributos -->
            <xsl:attribute name="empresa">
                <xsl:value-of select="empresa"/>
            </xsl:attribute>
            <xsl:attribute name="region">
                <xsl:value-of select="substring-before(telefono, ' ')"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="telefono">
                <xsl:value-of select="substring-after(telefono, ' ')"></xsl:value-of>
            </xsl:attribute>
            <!-- Contenido -->
            <nombre><xsl:value-of select="@nombre"/></nombre>
            <web>
                <xsl:attribute name="enlace">
                    <xsl:value-of select="@web"></xsl:value-of>
                </xsl:attribute>        
            </web>
        </instituto>
        
        


    </xsl:template>
</xsl:stylesheet>