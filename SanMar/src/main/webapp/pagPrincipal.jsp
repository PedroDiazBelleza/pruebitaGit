
<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PrincipalCliente</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo_carrusel.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
        
        <script src="//code.tidio.co/wvfvbbyyidnc5eyomi97hfkv4nflzivj.js" async></script>
        
        <%
            HttpSession ses = request.getSession();
            
            Clientes p = (Clientes)ses.getAttribute("datosCliente");
            
            String aviso = "";
            if (aviso.isEmpty()) {
                aviso = (String) request.getAttribute("aviso");
            }
        %>
    </head>
    
    <style>

        .boletin{
            position: relative;
            width: 100%;
            background: white;
            padding: 0;
            display:flex;
        }
        .formulario{
            margin-left:10rem;
            margin-right:6rem;
            width:45%
        }

        .formulario h5{
            font-family: "Public Sans", sans-serif;
            font-size: 25px;
            font-weight:600;
        }
        .formulario h6{
            font-family: "Public Sans", sans-serif;
            font-size: 17px;
            margin-top: 2rem

        }
        .formulario form {
            display: flex;
            margin-top: 2rem
        }
        .formulario form .input_Email{
            background-color: #ffffff;
            border-radius: 20px;
            padding-left: 1rem;
            width: 70%;
            margin-right: 1rem;

        }
        .formulario form .btn_Email{
            background-color: black;
            border-radius: 20px;
            color:white;
            width: 30%;
            height: 3rem;
            border: none;
            font-weight: 600
        }
        .formulario form .btn_Email:hover{
            background-color: white;
            color:black;

            border:2px solid black;
            transition: all .3s ease-in;
        }

        .imagenForm img{
            position:relative;
            width: 70%;
            padding: 0;
            margin: 0;
        }

    </style>

    

    <body onload="validar()">
       
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
                
                
                
        <section class="zona1"></section>
               
        <section class="servicios">
            <div class="container">
            <div class="carousel carousel-slider center " data-indicators="true">
                <div class="carousel-fixed-item center middle-indicator">
                    <div class="left">
                        <a href="Previo" class="movePrevCarousel middle-indicator-text waves-effect waves-light content-indicator"><i class="material-icons left  middle-indicator-text">chevron_left</i></a>
                    </div>

                    <div class="right">
                        <a href="Siguiente" class=" moveNextCarousel middle-indicator-text waves-effect waves-light content-indicator"><i class="material-icons right middle-indicator-text">chevron_right</i></a>
                    </div>
                </div>
                <div class="carousel-item  " href="#one!" style=" height: 400px; background-image: url('Imagenes/servicioPrincipal.png'); background-size: cover; background-position: center; background-repeat: no-repeat;">

                    <div style="margin-left: 300px;">
                        <h1 class="white-text" style="margin-bottom: 0px;">VARIEDAD DE</h1>
                        <h1 class="white-text" style="margin-top: 0;">SERVICIOS</h1>
                    </div>

                    <h2 style="margin-left:400px; color: white"></h2>
                </div>
                <div class="carousel-item " href="#two!" style=" height: 400px; background-image: url('Imagenes/servicioBar.png'); background-size: cover; background-position: center; background-repeat: no-repeat;">
                    <br><br>
                    <h1 class="white-text" style="margin-bottom: 0px; font-family: fantasy; font-size: 80px;">SERVICIO DE BAR</h1>
                    <br>
                    <h2 class="white-text" style="margin-top: 10px; margin-bottom: 10px; font-size: 30px; font-style: italic;">Un refugio acogedor donde las historias</h2>
                    <h2 class="white-text" style="margin-top: 0; font-size: 30px; font-style: italic;">fluyen con cada copa servida</h2>


                </div>
                <div class="carousel-item " href="#three!" style=" height: 400px; background-image: url('Imagenes/servicioJuegos.png'); background-size: cover; background-position: center; background-repeat: no-repeat;">
                    <br><br><br><br><br><br><br><br><br><br><br><br>
                    <h2  style="margin-top: 00;margin-bottom: 10px; font-size: 30px; font-style: italic;">Los pequeños se divierten </h2>
                    <h2  style="margin-top: 0; font-size: 30px; font-style: italic;">y los mayores se relajan.</h2>
                </div>

            </div>
        </div>
        </section> 
      
        <section class="menu">
            <h4>MENÚ</h4>
            <div class="container_menu">
                
                <div class="collage_menu">
                    <div class="container_img"><img src="Imagenes/plato01.jpg" alt=""/><span class="text_overlay">Texto 1</span></div>
                    <div class="container_img"><img src="Imagenes/plato02.jpg" alt=""/><span class="text_overlay">Texto 2</span></div>
                    <div class="container_img"><img src="Imagenes/plato03.jpg" alt=""/><span class="text_overlay">Texto 3</span></div>
                    <div class="container_img"><img src="Imagenes/plato04.jpg" alt=""/><span class="text_overlay">Texto 4</span></div>
                    <div class="container_img"><img src="Imagenes/plato05.jpg" alt=""/><span class="text_overlay">Texto 5</span></div>
                    <div class="container_img"><img src="Imagenes/plato06.jpg" alt=""/><span class="text_overlay">Texto 6</span></div>
                    <div class="container_img"><img src="Imagenes/plato07.jpg" alt=""/><span class="text_overlay">Texto 7</span></div>
                    <div class="container_img"><img src="Imagenes/plato08.jpg" alt=""/><span class="text_overlay">Texto 8</span></div>
                    <div class="container_img"><img src="Imagenes/plato09.jpg" alt=""/><span class="text_overlay">Texto 9</span></div>
                    <div class="container_img"><img src="Imagenes/plato10.jpg" alt=""/><span class="text_overlay">Texto 10</span></div>
                    <div class="container_img"><img src="Imagenes/plato11.jpg" alt=""/><span class="text_overlay">Texto 11</span></div>                    
                    <div class="container_img"><img src="Imagenes/plato12.jpg" alt=""/><span class="text_overlay">Texto 12</span></div>
                </div>
            </div>
        </section>
        
        
        <section class="boletin"> 
            <div class="formulario">
                <h5>Sé parte de nuestro Boletín</h5>
                <h6>Entérate de nuestros eventos, ofertas y sorteos de nuestro Restobar. Al suscribirte aceptas nuestra <a href="#"style="text-decoration: none; color:black">Política de Privacidad.</a></h6>
                <form action="#">
                    <input type="email" id="email_Boletin" class="input_Email" placeholder="Ingresa tu correo">
                    <input type="submit" id="btn_Boletin" class="btn_Email" value="Enviar">
                </form>
            </div>
            <div class="imagenForm"><img src="Imagenes/ChefBoletin.png" alt=""/></div>
            
        </section>
        

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
        
        
        
        <script>
            function validar() {
                <%=aviso%>   
            }
        </script>
        
        <script type="text/javascript">
            window.addEventListener("scroll",function (){
                var header = document.querySelector("header");
                header.classList.toggle("abajo",window.scrollY>0);
                var logo = document.querySelector("imgLogo");
            })
        </script>
        <script>
            // start carrousel
            $('.carousel.carousel-slider').carousel({
                fullWidth: true,
                indicators: false
            });


            // move next carousel
            $('.moveNextCarousel').click(function (e) {
                e.preventDefault();
                e.stopPropagation();
                $('.carousel').carousel('next');
            });

            // move prev carousel
            $('.movePrevCarousel').click(function (e) {
                e.preventDefault();
                e.stopPropagation();
                $('.carousel').carousel('prev');
            });
        </script>
    </body>
</html>