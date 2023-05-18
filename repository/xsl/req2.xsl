<?xml version="1.0" ?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/ite">

        <ite>
            <instituto>
                <!-- Atributos -->
                <xsl:attribute name="empresa">
                    <xsl:value-of select="empresa"/>
                </xsl:attribute>
                <xsl:attribute name="region">
                    <xsl:value-of select="substring-before(telefono, ' ')"/>
                </xsl:attribute>
                <xsl:attribute name="telefono">
                    <xsl:value-of select="substring-after(telefono, ' ')"/>
                </xsl:attribute>
                <!-- Contenido -->
                <nombre><xsl:value-of select="@nombre"/></nombre>
                <web>
                    <xsl:attribute name="enlace">
                        <xsl:value-of select="@web"/>
                    </xsl:attribute>        
                </web>
            </instituto>

            <plantilla>
                <profesorado>
                    <xsl:for-each select="profesores/profesor">
                        <personal>
                            <!-- Atributos Profesorado/Personal-->
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </personal>
                    </xsl:for-each> 
                </profesorado>
                <direccion>   
                    <xsl:for-each select="director | jefe_estudios">
                        <personal>
                            <xsl:attribute name="id">
                                <xsl:value-of select="name()"/>
                            </xsl:attribute>
                            <nombre><xsl:value-of select="nombre"/></nombre>
                            <despacho>                              
                                <xsl:attribute name="numero">
                                    <xsl:value-of select="substring-before(substring-after(despacho, 'Numero '),',')"/>
                                </xsl:attribute>
                                <xsl:attribute name="planta">
                                    <xsl:value-of select="substring-before(substring-after(despacho, ','), ' Planta')"/>
                                </xsl:attribute>
                                <xsl:attribute name="edificio">
                                    <xsl:value-of select="substring-after(despacho, 'Edificio ')"/>
                                </xsl:attribute>
                            </despacho>
                        </personal>
                    </xsl:for-each>                    
                </direccion>
            </plantilla>
            
        </ite>                    
    </xsl:template>
</xsl:stylesheet>