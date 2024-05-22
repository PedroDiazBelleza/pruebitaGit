<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva</title>
        <!--ICONOS DE PIE DE PAGINA DE REDES SOCIALES-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo_contactanos.css" rel="stylesheet" type="text/css"/>
        <%
            HttpSession ses = request.getSession();
            Clientes p = (Clientes)ses.getAttribute("datosCliente");
        %>
    
        <style>
        
            /*ESTILO CSS NOSOTROS*/
            
            body{
                margin: 0; /* Elimina el margen */
                padding: 0; /* Elimina el relleno */
            }
            
            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionEncabezado{
                position: relative;
                width: 100%;
                height: 15vh;
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            
            /*ESTILO CSS RESERVA BODY*/
        
            
            
            
        </style>   
    
        
    
    </head>
    <body>
        <header class="headerSanMar">
            <a href="#" class="logo"><img src="Imagenes/logo01.png" class="imgLogo" alt="logo"/></a>
            <br><br>
            <nav class="container_header">
                <ul class="header_ul">
                    <li class="header_li"><a href="pagPrincipal.jsp">Inicio</a></li>
                    <li class="header_li"><a href="Nosotros.jsp">Nosotros</a></li>
                    <li class="header_li"><a href="MESAS1.jsp">Reserva</a></li>
                    <li class="header_li"><a href="Carta.jsp">Carta</a></li>
                    <li class="header_li"><a href="Contacto.jsp">Contáctanos</a></li>
                    <li class="header_li"><div>Bienvenido, <%=p.getNombreCli()%> <%=p.getApellidoCli()%></div></li>
                </ul>
            </nav>
        </header>
        
                
        <section class="SeccionEncabezado"></section>
        

        
        
            
        
        
      
        <footer class="footer">
            <div class="container_footer">
                <div class="footer-row">
                    <div class="footer-links">
                        <h4> <b>Más información </b> </h4>
                        <ul>
                            <li><a href="#">Nosotros</a></li>
                            <li><a href="#">Nuestros servicios</a></li>                            
                            <li><a href="#">Politica de privacidad</a></li>
                            <li><a href="#">Afiliate</a></li>                                                         
                        </ul>
                    </div>
                     <div class="footer-links">
                        <h4> <b>Servicios </b> </h4>
                        <ul>
                            <li><a href="#">Preguntas</a></li>
                            <li><a href="#">Compras</a></li>                            
                            <li><a href="#">Envios</a></li>
                            <li><a href="#">Pagos</a></li>                                                         
                        </ul>
                    </div>
                    <div class="footer-links">
                        <h4> <b> Tienda </b></h4>
                        <ul>
                            <li><a href="#">Preguntas</a></li>
                            <li><a href="#">Compras</a></li>                            
                            <li><a href="#">Envios</a></li>
                            <li><a href="#">Pagos</a></li>                                                         
                        </ul>
                    </div>
                    <div class="footer-links">
                        <div class="button-reserva"><a href="#"  role="button">Reservar una cita</a></div>
                        <br>
                        <h4> <b>Siguenos  </b></h4>
                        <div class="social-link">
                            <a href="https://www.facebook.com/sanmarrestobar"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://www.instagram.com/sanmar_restobar?igsh=M2hqcnBveWJoOHky"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        

    </body>
</html>
