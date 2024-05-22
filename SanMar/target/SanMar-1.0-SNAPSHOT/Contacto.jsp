<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto</title>
        <link href="css/estilo_contactanos.css" rel="stylesheet" type="text/css"/>
        
        <!--ICONOS DE PIE DE PAGINA DE REDES SOCIALES-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" type="text/css"/>
        
        <%
            HttpSession ses = request.getSession();
            Clientes p = (Clientes)ses.getAttribute("datosCliente");
        %>
     
    <style>
        
            /*ESTILO CSS CONTACTO*/
            
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
            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionAntesNav{
                position: relative;
                width: 100%;
                height: 10vh;
            }
            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
           
            .SeccionTitulo{
                align-content: center;
                position: relative;
                width: 100%;
                height: 17vh;
            }

            .divTitulo{
                margin: 0 auto;
                text-align: center;
            }

            .titulo{
                font-family: "MS Sans Serif";
                font-size: 2rem;
                font-weight: 600;
                color: #333333; /* Negro medio claro */
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/


            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionInformacionAntesFormulario{
                align-content: center;
                position: relative;
                width: 100%;
                height: 4vh;
            }

            .divInformacion{
                margin: 0 auto;
                text-align: center;
            }

            .Informacion{
                font-family: "Comic Sans MS";
                font-size: 16px;
                font-weight: 500;
                color: #333333; /* Negro medio claro */
                text-shadow: silver 0px 0px 0.5px ;
                letter-spacing: 0px;
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/


            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionDespuesInformacion{
                position: relative;
                width: 100%;
                height: 6vh;
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/


            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionFormulario{
                position: relative;
                width: 100%;
                height: 140vh;
            }

            .divFormulario{
                position: relative;
                display: flex;
                justify-content: center;
            }
            
            
            .form-group {
                margin-bottom: 30px;
                width: 500px;
                
            }

            .tituloformulario {
                font-weight: 600;
                font-family: "MS Sans Serif";
                text-shadow: white 5px 5px 5px;
                letter-spacing: 0.5px;
                font-size: 15px;
            }

            input[type="text"],
            input[type="email"],
            textarea {
                margin-top: 5px;
                border: 2px solid #ccc;
                border-radius: 20px;
                border-color: lightslategrey;
                padding: 10px;
                box-sizing: border-box;
                font-family: "Comic Sans MS";
                width: 500px;


            }

            input[type="radio"],
            input[type="checkbox"] {
                margin-right: 10px;
                font-family: "Comic Sans MS";
            }

            input[type="radio"]:hover,
            input[type="checkbox"]:hover {
                cursor: pointer;
                font-family: "Comic Sans MS";
            }

            input[type="submit"] {
                width: 200px;
                border: none;
                border-radius: 20px;
                padding: 10px 20px;
                background-color: #024AFD;
                color: #fff;
                font-weight: bold;
                cursor: pointer;
                font-family: "Comic Sans MS";
                font-size: 15px;
            }

            input[type="submit"]:hover {
                background-color: #0056b3;
                font-family: "Comic Sans MS";
            }

            .motivoInfo{
                font-family: "Comic Sans MS";
                font-size: 15px;
            }

            .motivoLabel{
                font-family: "Comic Sans MS";
                font-size: 15px;
            }

            .condiciones{
                font-family: "Comic Sans MS";
                font-size: 15px;
            }

            .linkcondiciones{
                color: #024AFD;
                text-decoration: none;
                transition: color 0.3s ease;
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/

            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionDespuesFormulario{
                position: relative;
                width: 100%;
                height: 10vh;
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            
            
            
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            .SeccionMapa{
                position: relative;
                width: 100%;
                height: 180vh; /* Altura del 100% de la ventana */
                background-color: #f0f1fe; /* Color de fondo */
                background-size: cover;
                overflow-x: hidden; /* Evita que aparezca la barra de desplazamiento horizontal */
            }
            
            .SeccionDespuesMapa{
                position: relative;
                width: 100%;
                height: 5vh;
                background-color: #f0f1fe;
            }
            
            .SeccionEncuentranos{
                align-content: center;
                position: relative;
                width: 100%;
                height: 25vh;
            }
            
            .divEncuentranos{
                margin: 0 auto;
                text-align: center;
            }
            
            .tituloEncuentranos{
                font-family: "MS Sans Serif";
                font-size: 2rem;
                font-weight: 600;
                color: #333333; /* Negro medio claro */
            }
            
            
            .divContainerMapa{
                position: relative;
                display: flex;
                justify-content: center;
                width: 100%;
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                grid-template-rows: repeat(1, 1fr);
                grid-gap:1rem;
            }
            
            .divMapa{
                position: relative;
                background-color: white;
                width: auto;
                height: 130vh;
            }
            
            .divMapaNulo{
                position: relative;
                width: auto;
                height: 110vh;
            }
            
            .imagenLogoMapa {
                position: absolute;
                background-color: #2D2E32;
                z-index: 1;
                top: 210px;
                right: 250px;
                border-radius: 70px;
                box-shadow: 2px 2px 5px 0px rgba(0, 0, 0, 0.2) !important;
            }
            
            .linea {
                display: block;
                width: 90%; /* Ancho de la línea */
                height: 1px; /* Grosor de la línea */
                background-color: #2F3231; /* Color de la línea */
                margin: 10px 0; /* Margen superior e inferior para separar la línea de otros elementos */
                margin-left: 20px;
            }
            
            .tituloMapa{
                margin-top: 60px;
                margin-left: 20px;
                font-family: "Comic Sans MS";
                font-weight: bold;
                font-size: 18px;
                color: #2F3231;
            }
            
            .titulosDatosMapa{
               font-family: "Comic Sans MS";
               margin-left: 20px;
               font-weight: bold;
               font-size: 17px;
               color: #2F3231;
            }
            
            .datosMapita{
                font-family: "Comic Sans MS";
                margin-left: 20px;
                font-size: 17px;
                color: #2F3231;
            }

               
            /* Estilos para el botón negro */
            .botonNegro {
                margin-left: 8%;
                font-size: 15px;
                width: 85%;
                border: none;
                border-radius: 20px; /* Bordes redondeados */
                padding: 10px 20px;
                font-weight: bold;
                cursor: pointer;
                background-color: black;
                color: white;
                margin-top: 10px;
                margin-bottom: 10px; /* Espacio entre los botones */
            }

            /* Estilos para el botón blanco */
            .botonBlanco {
                margin-left: 8%;
                font-size: 15px;
                width: 85%;
                border: none;
                border-radius: 20px; /* Bordes redondeados */
                padding: 10px 20px;
                font-weight: bold;
                cursor: pointer;
                background-color: white;
                color: black;
                border: 2px solid black; /* Borde con línea de color negro */
                margin-bottom: 20px; /* Espacio entre los botones */
            }
            

            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            
            
            /*- - - - - - - - - -   ANIMACIÓN   - - - - - - - - - - - - -*/
            /* Agrega una clase para la animación del formulario */
            .formulario-animado {
                animation: slide-up 2s ease forwards;
                opacity: 0; /* Inicialmente oculto */
                transform: translateY(100%);
            }

            @keyframes slide-up {
                0% {
                    transform: translateY(10%); /* Posición inicial fuera de la pantalla */
                    opacity: 0;
                    
                }
                100% {
                    transform: translateY(0); /* Posición final en la pantalla */
                    opacity: 1;
                    
                }
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
            

            /*- - - - - - - - - -   ANIMACIÓN   - - - - - - - - - - - - -*/
            /* Definición de la animación */
            @keyframes slide-up-map {
                0% {
                    transform: translateY(5%);
                    opacity: 0;
                }
                100% {
                    transform: translateY(0);
                    opacity: 1;
                }
            }

            /* Aplicación de la animación al mapa */
            .mapa-animado {
                animation: slide-up-map 2s ease forwards;
                opacity: 0;
                transform: translateY(100%);
            }
            /*- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -*/
        </style>    
        
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
            margin-top: 2rem;
            font-weight: 500;    
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
        
        <section class="SeccionAntesNav"></section>

        <section class="SeccionTitulo">
            <div class="divTitulo">
                <p class="titulo">Queremos escucharte</p>
            </div>
        </section>

        <section class="SeccionInformacionAntesFormulario">
            <div class="divInformacion">
                <p class="Informacion">Si tienes alguna consulta usa el formulario de contacto y te contestaremos a la brevedad posible.</p>
            </div>
        </section>

        <section class="SeccionDespuesInformacion"></section>
        
        <section class="SeccionFormulario">
            <div class="divFormulario">
                <form method="POST">

                    <div class="form-group">
                        <label for="nombre" class="tituloformulario">Nombre</label><br>
                        <input type="text" id="nombre" name="nombre" placeholder="Ingresa tu nombre" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="apellidos" class="tituloformulario">Apellidos</label><br>
                        <input type="text" id="apellidos" name="apellidos" placeholder="Ingresa tus apellidos" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="telefono" class="tituloformulario">Teléfono</label><br>
                        <input type="text" id="telefono" name="telefono" placeholder="Ingresa tu número de teléfono" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email" class="tituloformulario">E-mail</label><br>
                        <input type="email" id="email" name="email" placeholder="Ingresa tu correo electrónico" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="motivo" class="tituloformulario">Motivo</label><br>
                        <p class="motivoInfo">Selecciona el motivo de reserva</p>
                        <input type="radio" id="salud" name="motivo" value="salud">
                        <label class="motivoLabel" for="salud">Consulta</label><br>
                        <input type="radio" id="belleza" name="motivo" value="belleza">
                        <label class="motivoLabel" for="belleza">Reservas Mesa</label><br>
                        <input type="radio" id="otras_consultas" name="motivo" value="otras_consultas">
                        <label class="motivoLabel" for="otras_consultas">Otras Consultas</label>
                    </div>
                    
                    <div class="form-group">
                        <label for="mensaje" class="tituloformulario">Mensaje</label><br>
                        <textarea id="mensaje" name="mensaje" rows="6" placeholder="Déjanos un mensaje" required></textarea>
                    </div>
                    
                    <div class="form-group">
                        <input type="checkbox" id="privacidad_spa" name="privacidad_spa" required>
                        <label class="condiciones" for="privacidad_spa">Acepto la <a href="#" class="linkcondiciones">Política de Privacidad</a> de SAN MAR.</label><br>
                        <br> 
                        <input type="checkbox" id="privacidad_google" name="privacidad_google" required>
                        <label class="condiciones" for="privacidad_google">Acepto los <a href="#" class="linkcondiciones">Términos de Servicio</a> de Google reCaptcha.</label>
                    </div>
                    
                    <input type="submit" value="Enviar">

                </form>
            </div>
        </section>

        <section class="SeccionDespuesFormulario"></section>

        <section class="SeccionMapa">
            
            <section class="SeccionEncuentranos">
                <div class="divEncuentranos">
                    <p class="tituloEncuentranos">Encuéntranos</p>
                </div>
            </section>
            
            

            <div class="divContainerMapa"> 
                
                <div class="divMapaNulo"></div>
                
                <div class="divMapa">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2007.8468285754325!2d-76.99145706865089!3d-12.086482191961762!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x91059f8a19bf6ff1%3A0x6bcc99643c610b3f!2sSANMAR%20Restobar!5e0!3m2!1ses!2spe!4v1715188824821!5m2!1ses!2spe" width="440px" height="312px" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                    <img class="imagenLogoMapa" src="Imagenes/logo01.png" width="130px" height="130px" alt=""/>
                    <p class="tituloMapa">SAN MAR (Javier Prado Este)</p>
                    <span class="linea"></span>
                    
                    <label for="datos" class="titulosDatosMapa">Dirección</label><br>
                    <label for="datos" class="datosMapita">Av. Javier Prado Este 3220</label><br>
                    <label for="datos" class="datosMapita">San Borja 15037</label>
                    <br><br>

                    <label for="datos" class="titulosDatosMapa">Horario</label><br>
                    <label for="datos" class="datosMapita">Lunes a Martes    : 9am-4pm</label><br>
                    <label for="datos" class="datosMapita">Miercoles a Jueves: 9am-4pm & 6pm-10:30pm</label><br>
                    <label for="datos" class="datosMapita">Viernes a Sabado  : 9am-4pm & 7pm-1am</label><br>
                    <label for="datos" class="datosMapita">Domingo           : 9am-5pm </label>
                    <br><br>
                    
                    <label for="datos" class="titulosDatosMapa">Teléfono</label><br>
                    <label for="datos" class="datosMapita">+51 923 988 647</label>
                    <br><br>
                    
                    <a href="https://api.whatsapp.com/send?phone=51923988647&text=%C2%A1Hola!%20Me%20encantar%C3%ADa%20reservar%20una%20mesa%20en%20el%20Restobar%20SANMAR.%20%C2%BFPodr%C3%ADan%20ayudarme%20con%20eso,%20por%20favor?" target="_blank"><button class="botonNegro">Contactanos</button></a>
                    
                    <br>
                    <a href="https://maps.app.goo.gl/EVRGx2ajUHVpbYit9" target="_blank"><button class="botonBlanco">Ver Ubicación</button></a>
                
                </div>
                
                <div class="divMapaNulo"></div>
            </div>   
            
            <section class="SeccionDespuesMapa"></section>
                
        </section>
                
        
        <section class="boletin"> 
            <div class="formulario">
                <h5>Sé parte de nuestro Boletín</h5>
                <h6>Entérate de nuestros eventos, ofertas y sorteos de nuestro Restobar. Al suscribirte aceptas nuestra <a href="#"style="text-decoration: none; color:black">Política de Privacidad.</a></h6>
                <form action="#">
                    <input type="email" id="email_Boletin" class="input_Email" placeholder="Ingresa tu correo" required>
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
        // Agrega una función para activar la animación cuando se cargue la página
        window.onload = function() {
            var formulario = document.querySelector('.SeccionFormulario');
            formulario.classList.add('formulario-animado');
        };
        </script>
         
        
        <script>
        // Función para activar la animación cuando se haga scroll hasta la sección del mapa
        window.onload = function() {
            var formulario = document.querySelector('.divContainerMapa');
            formulario.classList.add('mapa-animado');
        };
        </script>
    </body>
</html>
