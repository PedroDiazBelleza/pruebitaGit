<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nosotros</title>
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
            
            /*ESTILO CSS NOSOTROS BODY*/
        
            .SeccionNosotrosInicial{
                position: relative;
                width: 100%;
                height: 70vh; 
                background-color: white; 
                background-size: cover;
            }
            
            .DivContainerNosotros{
                position: relative;
                display: flex;
                justify-content: center;
                width: 100%;
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(1, 1fr);
                grid-gap:0rem; /*ESPACIOS ENTRE DIVS*/
            }
            
            
            .DivNosotrosFoto{
                position: relative;
                width: auto;
                height: 70vh;
            }
            
            .DivNostrosInformacion{
                position: relative;
                background-color: white;
                width: auto;
                height: 70vh;
                text-align: center;
            }
            
            
            .tituloNosotros{
                font-family: "MS Sans Serif";
                font-size: 30px;
                font-weight: 600;
                color: #333333; /* Negro medio claro */
            }
            
            .line {
                width: 70px; /* ajustar según la longitud deseada */
                height: 3px;
                background-color: #2D2E32;
                display: block;
                margin: 0 auto; /* Centra horizontalmente el span */
            }
            
            .parrafoNosotros{
                font-family: cursive;
                font-size: 16px;
                padding-left: 10px;
                padding-right: 10px;
            }
            
            .parrafo_t_Nosotros{
                font-family: cursive;
            }
            
            /*------------------------------------------*/
            
            .SeccionSlide{
                position: relative;
                width: 100%;
                height: 70vh; 
                background-color: white; 
                background-size: cover;
            }
            
            .Divslide{
                position: relative;
                justify-content: center;
                width: 100%;
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-template-rows: repeat(1, 1fr);
                grid-gap:0rem; /*ESPACIOS ENTRE DIVS*/
            }
            
            .slider-inner {
                position: relative;
                width: auto;
                height: 70vh;
                overflow: hidden;
            }

            .slider-inner img {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                transition: opacity 0.5s ease-in-out; /* Transición suave */
                opacity: 0; /* Oculta todas las imágenes inicialmente */
            }

            .slider-inner img:first-child {
                opacity: 1; /* Muestra la primera imagen al principio */
            }

            .InfoTragos{
                position: relative;
                width: auto;
                height: 70vh;
                text-align: center;
                background-color: white;
            }

            .InfoTragos img{
                position: relative;
                width: 100%;
                height: 99%;
            }


            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/

            .SeccionTituloComida{
                position: relative;
                width: 100%;
                height: 20vh;
                background-color: #2D2E32;
            }
            
            .tituloComida{
                text-align: center;
                font-family: "MS Sans Serif";
                font-size: 30px;
                font-weight: 600;
                color: white; /* Negro medio claro */
            }
            
            .lineComida {
                width: 100px; /* ajustar según la longitud deseada */
                height: 3px;
                background-color: whitesmoke;
                display: block;
                margin: 0 auto; /* Centra horizontalmente el span */
                margin-top: 10px;
            }
            
            .SeccionNosotrosComida {
                position: relative;
                width: 100%;
                height: 180vh;
                background-color: white;
                background-size: cover;
            }
            
            .DivComidan{
               position: relative;
               justify-content: center;
               width: 100%;
               display: grid;
               grid-template-columns: repeat(3, 1fr);
               grid-template-rows: repeat(1, 1fr);
               grid-gap:0rem; /*ESPACIOS ENTRE DIVS*/
            }
            
            .Comidita{
                position: relative;
                width: auto;
                height: 80vh;
            }
            
            .Comidita img{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
            }

            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            
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
        

        <section class="SeccionNosotrosInicial">
            
            <div class="DivContainerNosotros">
                <div class="DivNosotrosFoto">
                    <img src="Imagenes/fondo1Nosotros.jpg" width="100%" height="101%" alt="alt"/>

                </div>

                <div class="DivNostrosInformacion">
                    
                    <p class="tituloNosotros">Nosotros 👨‍🍳</p>
                    <span class="line"></span>
                    <br>
                    <p class="parrafoNosotros">
                        ¡Bienvenido a SanMar Restobar! Nos esforzamos por brindar
                        experiencias memorables con una combinación única de buena
                        comida, atención excepcional y un ambiente acogedor. Desde
                        pizza 🍕 hasta pescados y mariscos 🦑 🦞 🦐, ofrecemos una variedad
                        culinaria que satisface todos los gustos, respaldada por la
                        calidad de nuestros ingredientes y la maestría de nuestro equipo
                        de cocina.
                    </p>
                    <br>
                    <p class="parrafoNosotros">
                        Además, ofrecemos servicios adicionales como eventos especiales🥳,
                        áreas de juegos para niños 👦 y un bar bien surtido.🍹 
                        Ven y únete a nosotros en Av. Javier Prado Este 3220, San Borja, Lima, 
                        para disfrutar de momentos inolvidables con buena comida y un servicio excepcional.
                    </p>
                    <br>
                    <p class="parrafo_t_Nosotros">
                        Te esperamos!!!
                    </p>
                </div>
            </div>

        </section>
        
        <section class="SeccionNosotrosComida">
            
            <section class="SeccionTituloComida">
                <p class="tituloComida">Best Dishes 🍽️</p>
                <span class="lineComida"></span>
            </section>
            
            
            <div class="DivComidan">
                <div class="Comidita">
                    <img src="Imagenes/SlideMejoradoComida1.jpg" alt=""/>
                 </div>
                
                <div class="Comidita">
                    <img src="Imagenes/SlideMejoradoComida2.jpg" alt=""/>
                </div>
                    
                <div class="Comidita">    
                    <img src="Imagenes/SlideMejoradoComida3.jpg" alt=""/>
                </div>   
                    
                <div class="Comidita">
                    <img src="Imagenes/SlideMejoradoComida4.jpg" alt=""/>
                </div>   
                    
                <div class="Comidita">   
                    <img src="Imagenes/SlideMejoradoComida5.jpg" alt=""/>
                </div>
                
                <div class="Comidita">   
                    <img src="Imagenes/SlideMejoradoComida6.jpg" alt=""/>
                </div>
            </div>
        </section>  

        
        <section class="SeccionTituloComida">
                <p class="tituloComida">Best Drinks 🥂 ️</p>
                <span class="lineComida"></span>
            </section>
        
        <section class="SeccionSlide">
            
            <div class="Divslide">
                <div class="InfoTragos">
                    <img src="Imagenes/DiseñoSlideTrago.png" alt=""/>
                </div> 
                
                <div class="slider-inner">
                    <img src="Imagenes/SlideTrago1.jpg" alt=""/>
                    <img src="Imagenes/SlideTrago2.jpg" alt=""/>
                    <img src="Imagenes/SlideTrago3.jpg" alt=""/>
                    <img src="Imagenes/SlideTrago4.jpg.png" alt=""/>
                    <img src="Imagenes/SlideTrago5.jpg" alt=""/>
                </div>
                   
            </div>
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
        // Obtenemos el contenedor del slider y todas las imágenes
        const sliderInner = document.querySelector(".slider-inner");
        const images = sliderInner.querySelectorAll("img");

        // Variable para controlar el índice de la imagen actual
        let currentIndex = 0;

        // Función para cambiar la imagen actual
        function changeSlide() {
            // Ocultamos la imagen actual
            images[currentIndex].style.opacity = 0;

            // Incrementamos el índice de la imagen actual
            currentIndex++;

            // Si alcanzamos el final de las imágenes, volvemos al inicio
            if (currentIndex >= images.length) {
                currentIndex = 0;
            }

            // Mostramos la nueva imagen
            images[currentIndex].style.opacity = 1;
        }

        // Cambiamos de slide cada 2 segundos
        setInterval(changeSlide, 2000);
        </script>
     
        
    </body>
</html>
