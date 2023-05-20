<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>      
                <title>Actividad 3</title>
                <link rel="stylesheet" href="css/style.css" />
            </head>
            <body>
            <div class = "contenidor">
                <h1>Profesores</h1>
                <xsl:for-each select="/ite/profesores/profesor">
                    <!-- Ahora las rutas relativas son relativas al nodo "cruceros/crucero" -->
                    <div>
                        <h2>Id: <xsl:value-of select="id"/> </h2>
                        <h2>Nombre: <xsl:value-of select="nombre"/> </h2>
                    </div>
                </xsl:for-each>
            </div>

             <div class = "contenidor">
                <h1>Director</h1>
                    <div>
                        <h2>Nombre: <xsl:value-of select="/ite/director/nombre"/> </h2>
                        <h2>Despacho: <xsl:value-of select="/ite/director/despacho"/> </h2>
                    </div>
            </div>

            <div class = "contenidor">
                <h1>Jefe de estudios</h1>
                    <div>
                        <h2>Nombre: <xsl:value-of select="/ite/jefe_estudios/nombre"/> </h2>
                        <h2>Despacho: <xsl:value-of select="/ite/jefe_estudios/despacho"/> </h2>
                    </div>
            </div>

            <div class = "ciclos">
                <h1>Ciclos</h1>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                    <!-- Ahora las rutas relativas son relativas al nodo "cruceros/crucero" -->
                    <div>
                        <h2>Nombre:  <xsl:value-of select="nombre"/> </h2>
                        <h2>id: <xsl:value-of select="@id"/> </h2>
                        <h2>Grado: <xsl:value-of select="nombre"/> </h2>
                        <h2>Decreto: <xsl:value-of select="decretoTitulo/@año"/> </h2>
                    </div>
                </xsl:for-each>
            </div>
            </body>
        </html>     
    </xsl:template>
</xsl:stylesheet>