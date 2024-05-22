<%@page import="dao.MesaDao"%>
<%@page import="modelo.*"%>
<!DOCTYPE html>
<html>

    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reserva</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <!--ICONOS DE PIE DE PAGINA DE REDES SOCIALES-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo_contactanos.css" rel="stylesheet" type="text/css"/>      
        <link href="css/estilosReserva.css" rel="stylesheet" type="text/css"/>
        <style>

        </style>
    </head>
    <body onload="validar()">
        <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>

        <%

            String aviso = "";
            if (aviso.isEmpty()) {
                aviso = (String) request.getAttribute("avisoreserva");
            }
            String b1 = "", b2 = "", b3 = "", b4 = "", b5 = "", b6 = "", b7 = "", b8 = "", b9 = "", b10 = "";
            String estado = "Seleccione", des = "Seleccione";
            int nmesa = 0, nasientos = 0;

            String FECHA = "-------------------";

            if ((String) session.getAttribute("FECHA") != null) {

                FECHA = (String) session.getAttribute("FECHA");
                request.getParameter("mesa");
                MesaDao obj = new MesaDao();

                if (request.getParameter("mesa") != null) {

                    switch (Integer.parseInt(request.getParameter("mesa"))) {

                        case 1:
                            b1 = "verde";
                            break;
                        case 2:
                            b2 = "verde";
                            break;
                        case 3:
                            b3 = "verde";
                            break;
                        case 4:
                            b4 = "verde";
                            break;
                        case 5:
                            b5 = "verde";
                            break;
                        case 6:
                            b6 = "verde";
                            break;
                        case 7:
                            b7 = "verde";
                            break;
                        case 8:
                            b8 = "verde";
                            break;
                        case 9:
                            b9 = "verde";
                            break;
                        case 10:
                            b10 = "verde";
                            break;
                    }
                }
                for (Reserva p : obj.ListadoReservas(FECHA)) {
                    String color = "";
                    if (p.getEstado().equals("R")) {

                        if (request.getParameter("mesa") != null) {

                            switch (Integer.parseInt(request.getParameter("mesa"))) {

                                case 1:
                                    b1 = "verde";
                                    break;
                                case 2:
                                    b2 = "verde";
                                    break;
                                case 3:
                                    b3 = "verde";
                                    break;
                                case 4:
                                    b4 = "verde";
                                    break;
                                case 5:
                                    b5 = "verde";
                                    break;
                                case 6:
                                    b6 = "verde";
                                    break;
                                case 7:
                                    b7 = "verde";
                                    break;
                                case 8:
                                    b8 = "verde";
                                    break;
                                case 9:
                                    b9 = "verde";
                                    break;
                                case 10:
                                    b10 = "verde";
                                    break;
                            }
                        }
                        switch (p.getCod_mesa()) {
                            case 1:
                                b1 = "rojo";
                                break;
                            case 2:
                                b2 = "rojo";
                                break;
                            case 3:
                                b3 = "rojo";
                                break;
                            case 4:
                                b4 = "rojo";
                                break;
                            case 5:
                                b5 = "rojo";
                                break;
                            case 6:
                                b6 = "rojo";
                                break;
                            case 7:
                                b7 = "rojo";
                                break;
                            case 8:
                                b8 = "rojo";
                                break;
                            case 9:
                                b9 = "rojo";
                                break;
                            case 10:
                                b10 = "rojo";
                                break;
                        }

                    }

                }

                if (request.getParameter("mesa") != null) {

                    if (Integer.parseInt(request.getParameter("mesa")) > 0) {

                        Mesa a = obj.buscamesa(Integer.parseInt(request.getParameter("mesa")));
                        nmesa = a.getNmesa();
                        nasientos = a.getNasientos();
                        estado = a.getEstado();
                        des = a.getDes();
                    }

                }
            }

            HttpSession ses = request.getSession();
            Clientes p = (Clientes) ses.getAttribute("datosCliente");


        %>

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
        <div class="contenedor"> 
            <div class="table-container">
                

                        <form action="controlMesas">
                            <table style=" text-align: center">
                    ´       <input type="hidden" name="opc" value="2">

                            <td><input type="text" id="fecha" name="fecha" placeholder="Selecciona fecha y hora">
                            <td><button class="button-reserva" type="submit" style="width: 100%">FILTRAR</button>
                             
                </table>
                            
                        </form>

                        <h4 style="color:white">Mesas disponibles para : <%=FECHA%></h4>
                        <br>
                   
            </div> 


            <br>



            <div class="miDiv">

                <div class="divboton10"><div style="" class="button-container"><button style="width: 60px;height: 92px;" class="<%= b10%>" onclick="guardarMesa(10)" onmouseover="showTooltip('tooltip10', '6 asientos')"><h2>10</h2></button><div class="tooltip" id="tooltip10">Mesa 10</div></div></div>
                <div class="divboton9"><div class="button-container"><button class="<%= b9%>" onclick="guardarMesa(9)" onmouseover="showTooltip('tooltip9', '4 asientos')"><h2>9</h2></button><div class="tooltip" id="tooltip9">Mesa 9</div></div></div>
                <div class="divboton8"><div class="button-container"><button class="<%= b8%>" onclick="guardarMesa(8)" onmouseover="showTooltip('tooltip8', '2 asientos')"><h2>8</h2></button><div class="tooltip" id="tooltip8">Mesa 8</div></div></div>
                <div class="divboton7"><div class="button-container"><button class="<%= b7%>" onclick="guardarMesa(7)" onmouseover="showTooltip('tooltip7', '4 asientos')"><h2>7</h2></button><div class="tooltip" id="tooltip7">Mesa 7</div></div></div>   
                <div class="divboton6"><div class="button-container"><button class="<%= b6%>" onclick="guardarMesa(6)" onmouseover="showTooltip('tooltip6', '2 asientos')"><h2>6</h2></button><div class="tooltip" id="tooltip6">Mesa 6</div></div></div>
                <div class="divboton5"><div class="button-container"><button class="<%= b5%>" onclick="guardarMesa(5)" onmouseover="showTooltip('tooltip5', '2 asientos')"><h2>5</h2></button><div class="tooltip" id="tooltip5">Mesa 5</div></div></div>
                <div class="divboton4"><div class="button-container"><button class="<%= b4%>" onclick="guardarMesa(4)" onmouseover="showTooltip('tooltip4', '4 asientos')"><h2>4</h2></button><div class="tooltip" id="tooltip4">Mesa 4</div></div></div>
                <div class="divboton3"><div class="button-container"><button class="<%= b3%>" onclick="guardarMesa(3)" onmouseover="showTooltip('tooltip3', '4 asientos')"><h2>3</h2></button><div class="tooltip" id="tooltip3">Mesa 3</div></div></div>
                <div class="divboton2"><div class="button-container"><button class="<%= b2%>" onclick="guardarMesa(2)" onmouseover="showTooltip('tooltip2', '2 asientos')"><h2>2</h2></button><div class="tooltip" id="tooltip2">Mesa 2</div></div></div>
                <div class="divboton1"><div class="button-container"><button class="<%= b1%>" onclick="guardarMesa(1)" onmouseover="showTooltip('tooltip1', '2 asientos')"><h2>1</h2></button><div class="tooltip" id="tooltip1">Mesa 1</div></div></div>

                <img src="Imagenes/bosquejomesa.png" alt="Descripción de la imagen">
            </div>    
            <br>
            <form action="controlMesas">
                <input type="hidden" name="opc" value="1">
                <input type="hidden" name="mesa" value=<%=nmesa%>>
                <input type="hidden" name="clientecod" value=<%=p.getCodigoCli()%>>
                <button type="submit" class="button-reserva">RESERVAR</button>


            </form>  
        </div>    

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
    <script>
        function guardarMesa(numeroMesa) {
            // Enviar el valor de la mesa a una página JSP que maneje la sesión
            window.location.href = "MESAS1.jsp?mesa=" + numeroMesa;
        }
        function showTooltip(tooltipId, mensaje) {
            var tooltip = document.getElementById(tooltipId);
            tooltip.innerHTML = mensaje;
        }
    </script>
    <script>
        // Configuración de Flatpickr
        flatpickr("#fecha", {
            enableTime: true, // Permitir selección de hora
            dateFormat: "Y-m-d H:i", // Formato de fecha y hora
            time_24hr: true, // Formato de 24 horas
            locale: {
                weekdays: {
                    shorthand: ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'],
                    longhand: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
                },
                months: {
                    shorthand: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
                    longhand: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                },
                rangeSeparator: ' a ',
                weekAbbreviation: 'Sm',
                scrollTitle: 'Desplazar para incrementar',
                toggleTitle: 'Haz clic para cambiar',
            }
        }
        
            );
    
    </script>
    <script>
        function validar() {
        <%=aviso%>
                
        }
    </script>

</html>