<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/ite">    
        
        <html>
            <head>        
                <title>Grupo6_Actividad3</title>
            </head>
            <body>
                <header>                                        
                    <img src="../img/edix-logo.png"/>                  
                    <hr/>
                    <a href="https://www.edix.com/es/" target="_blanck">
                        <h2><xsl:value-of select="@nombre"/></h2>
                    </a>
                </header>
                <main>
                    <div class="titulo">
                        <h1><xsl:value-of select="@nombre"/></h1>
                        <hr/>
                    </div>                    
                    <div class="personal">
                        <h2>Profesorado</h2>                        
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Numero</th>
                                    <th>Nombre</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="profesores/profesor">
                                    <tr>                                    
                                        <td><xsl:value-of select="id"/></td>
                                        <td><xsl:value-of select="nombre"/></td>                                   
                                    </tr>                                
                                </xsl:for-each>
                            </tbody>
                        </table>     

                        <h2>Direccion</h2>      
                        <table border="1">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Cargo</th>
                                    <th>Lugar</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><xsl:value-of select="director/nombre"/></td>
                                    <td>Director</td>
                                    <td><xsl:value-of select="director/despacho"/></td>
                                </tr>
                                 <tr>
                                    <td><xsl:value-of select="jefe_estudios/nombre"/></td>
                                    <td>Jefe de estudios</td>
                                    <td><xsl:value-of select="jefe_estudios/despacho"/></td>
                                </tr>
                            </tbody>
                        </table>          
                    </div>
                    <div class="ciclos">
                        <xsl:for-each select="ciclos/ciclo">
                            <fieldset>
                                <legend>
                                    <xsl:value-of select="nombre"/> &#40;
                                    <xsl:value-of select="@id"/>&#41; 
                                </legend>
                                <div class="contenedor-ciclo">
                                    <ul>
                                        <li>Grado <xsl:value-of select="grado"/></li>
                                        <li>año <xsl:value-of select="decretoTitulo/@año"/></li>
                                    </ul>                                    
                                </div>
                            </fieldset> 
                        </xsl:for-each>
                                                          
                    </div>
                </main>
                <footer>
                    <div class="contenedor-enlaces">
                        <a href="tel: +34 91 787 39 91">
                            <xsl:value-of select="telefono"/>
                        </a>
                        <hr/>
                        <a href="https://institutotecnologico.edix.com" target="_blanck"><xsl:value-of select="@web"/></a>
                        <hr/>
                        <a href="https://www.grupoproeduca.com/"><xsl:value-of select="empresa"></a>
                    </div>
                </footer>

            </body>        
        </html>    
    </xsl:template>
</xsl:stylesheet>


<!-- Estrcutura con:
    . 2+ tablas
    . 2+ enlaces
    . 1+ lista
    . 1+ formulario contacto
-->