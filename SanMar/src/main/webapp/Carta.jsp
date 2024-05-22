<%@page import="modelo.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilo_contactanos.css" rel="stylesheet" type="text/css"/>
        
        <%
            HttpSession ses = request.getSession();
            Clientes p = (Clientes)ses.getAttribute("datosCliente");
        %>
    </head>

    <style>
        .carta{
            position: relative;
            width: 100%;
            height:560vh;
          
        }
        
        .container_carta{
            position: relative;
            width: 100%;
            height: 100%;

        }
        .container_comida{
            position: relative;
            background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("Imagenes/fondo03.jpg");
            background-size: cover;
            background-position:  center center;
            width: 100%;
            height: 50%;
            padding: 3rem;
            display: grid;
            text-align: center;
            justify-content: center;
            align-items: center;
            align-content: center;
        }
        .container_comida .info_comida{
            width: 100%;
            text-align: center;
            margin-bottom: 2rem; 
            padding-left: 5rem;
            padding-right: 5rem;
            color:white;
        } 
        .container_comida .info_comida h1{
            margin-bottom: 2rem;
            font-size: 50px;
            text-shadow: 4px 4px 8px rgba(255,255,255, 0.5);
        } 
        .container_comida .info_comida p{
            font-size: 20px; 
        } 
        .container_comida .img_comida{
            width: 100%;
        } 
        .container_comida .img_comida img{
            width: 70%;
            box-shadow: 5px 5px 10px 5px rgba(255, 255, 255, 0.5);
            transition: all .3s ease;
        }
        .container_comida .img_comida img:hover{
            width: 75%;
        } 
        .container_bebida{
            position: relative;
            background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("Imagenes/fondo04.jpg");
            background-size: cover;
            background-position:  center center;
            width: 100%; 
            height: 50%;
            padding: 3rem;
            display: grid;
            text-align: center;
            justify-content: center;
            align-items: center;
            align-content: center;
        }
        .container_bebida .info_bebida{
            width: 100%;
            text-align: center;
            margin-bottom: 2rem;
            padding-left: 5rem;
            padding-right: 5rem;
            color:white;
        } 
        .container_bebida .info_bebida h1{
            margin-bottom: 2rem;
            font-size: 50px; 
            text-shadow: 4px 4px 8px rgba(255,255,255, 0.5);
        } 
         .container_bebida .info_bebida p{
            font-size: 20px; 
        } 
        .container_bebida .img_bebida{
            width: 100%;
          
        }  
        .container_bebida .img_bebida img{
            width: 70%;
            box-shadow: 5px 5px 10px 5px rgba(255, 255, 255, 0.5);
            transition: all .3s ease;
        }
        .container_bebida .img_bebida img:hover{
            width: 75%;
        } 
    </style>
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
                
        <section class="carta">
            <div class="container_carta">
                <div class="container_comida">
                    <div class="info_comida">
                        <h1>
                            Nuestros Platos a la Carta
                        </h1>
                        <p>
                            Sumérgete en una explosión de sabores con nuestros exquisitos platos artesanales, cuidadosamente elaborados para deleitar tus sentidos. Desde clásicos reconfortantes hasta innovadoras fusiones culinarias, cada bocado es una experiencia única que te transportará a nuevos horizontes gastronómicos.
                        </p>
                    </div>
                    <div class="img_comida">
                        <img src="Imagenes/Carta_Comidas.jpg" alt=""/>
                    </div>
                </div>                
                <div class="container_bebida">  
                    <div class="info_bebida">
                        <h1>
                            Nuestros Bebidas Especiales
                        </h1>
                        <p>
                            Refresca tu sed con nuestra selección de bebidas cuidadosamente elegidas para complementar cada momento y cada sabor. Desde cócteles artesanales que despiertan tus sentidos hasta vinos cuidadosamente seleccionados que elevan cada comida, cada sorbo es una invitación a disfrutar de la vida con estilo.
                        </p>
                    </div>
                    <div class="img_bebida">
                        <img src="Imagenes/Carta_Bebidas.jpg" alt=""/>
                    </div>
                </div>

            </div>
        </section>
        
            
        </div>
    </body>
</html>
