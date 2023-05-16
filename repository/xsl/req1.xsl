<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/ite">    
        
       <html>
            <head>        
                <title>Grupo6_Actividad3</title>
                <link rel="stylesheet" href="../css/styles.css"/>
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
                        <div class="contenedor-tabla">
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
                        </div>
                        <div class="contenedor-tabla">
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
                    </div>
                     <div class="titulo">
                        <h1>Ciclos formativos</h1>
                        <hr/>
                    </div>   
                    <div class="contenedor-secundario">
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
                                            <li>Decreto titulado en <xsl:value-of select="decretoTitulo/@año"/></li>
                                        </ul>                                    
                                    </div>
                                </fieldset> 
                            </xsl:for-each>
                        </div>             
                        <form action="peticion.jsp" method="get">
                            <fieldset>
                                <legend>Contacto</legend>
                                <div class="contenedor-nombre">
                                    <label for="nombre">Nombre: </label>
                                    <input id="nombre" type="text" name="nombre"/>
                                    <label for="apellidos">Apellidos: </label>
                                    <input id="apellidos" type="text" name="apellidos"/>
                                </div>
                                <div class="contenedor-correo">
                                    <label for="correo">Correo: </label>
                                    <input type="text"/>
                                </div>
                                <div class="contenedor-comentario">
                                    <label for="comentario">Comentario: </label>
                                    <textarea style="resize: none;" rows="5" cols="80" name="observaciones"></textarea>                                                        
                                </div>
                                <input type="submit" value="Enviar"/>
                            </fieldset>
                        </form>   
                    </div>
                                          
                </main>
                <footer>
                     <a href="tel: +34 91 787 39 91">Teléfono: 
                        <xsl:value-of select="telefono"/>
                    </a>
                    
                    <a href="https://institutotecnologico.edix.com" target="_blank">
                        Enlace: 
                        <xsl:value-of select="@web"/>
                    </a>
                   
                    <a href="https://www.grupoproeduca.com/" target="_blank"><xsl:value-of select="empresa"/></a>
            
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