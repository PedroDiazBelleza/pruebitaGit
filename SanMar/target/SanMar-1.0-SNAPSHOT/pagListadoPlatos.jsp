<%-- 
    Document   : pagListadoPlatos
    Created on : 13 may. 2024, 12:35:22
    Author     : Pedro Jesus
--%>

<%@page import="java.util.List"%>
<%@page import="modelo.Platos"%>
<%@page import="dao.PlatosDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <style>
        #productos{
            position: relative;
            padding-left: 4rem;
            padding-right:  4rem;
            width: 100%;
            padding-top:10rem;
            background: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("Imagenes/fondo02.jpg");
            background-size: cover;
            background-position:  center center;
        }
        .container_listado{
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-template-rows: repeat(2, 1fr);
        }
        .container_prod{
            background: white;
            box-shadow: 10px 10px 5px #888888;
            width:13rem;
            height: 21rem;
            margin:2rem;
            border-radius:16px;
        }
        .img_prod{
            display: grid;
            justify-content: center;
        }
        .img_prod img{
            border: 1px solid #1F173C;
            margin: 10px;
            border-radius:16px;
            width: 11rem;
            height: 13rem;
        }
        .nom_prod{
            display: grid;
            justify-content: center;
            align-content: center;
            align-items: center;
        }
        .nom_prod h3{
            font-family:system-ui;
            font-size:18px;
            margin: 0;
            padding: 0;
            height: 3rem;
        }
        .act_prod {
            display: grid;
            justify-content: center;
            align-content: center;
            align-items: center;
        }
        .act_prod button{
            background: #0099E1;
            border: 1px solid #1F173C;
            padding:0.3rem;
            border-radius:5px;
            width:8rem;
            color: white;
        }
        .titulo_filter{
            color: white;
            font-size: 30px;
            font-weight: 700;
            text-align: center;
        }
        .checkbox-container{
            margin: 1rem;
            color:white;
            text-align: center;
            font-size: 20px;
        }
    </style>
    <body>

        <section id="productos"> 
            <h1 class="titulo_filter">Seleccione la categoría: </h1>

            <form id="filterForm" action="ControlFiltro">
                <div class="checkbox-container">
                    <label><input type="checkbox" name="caracter" value="T" onchange="autoSubmit()"> Todo</label>
                    <label><input type="checkbox" name="caracter" value="C" onchange="autoSubmit()"> Platos</label>
                    <label><input type="checkbox" name="caracter" value="B" onchange="autoSubmit()"> Bebidas</label>
                </div>
            </form>
<%
    
String car = (String) request.getAttribute("c");
                    PlatosDao obj = new PlatosDao();
                    List<Platos> p;
                    String Tcate = "";
                    if (car == null || car.isEmpty()) {
                        p = obj.ListadoPlatos();
                        Tcate = "Nuestro Menu Disponible";
                    } else {
                        if (car.equals("C")) {
                            Tcate = "Comidas Disponibles";
                        } else {
                            if (car.equals("B")) {
                                Tcate = "Bebidas Disponibles";
                            }
                        }

                        p = obj.ListadoPlatos(car);
                    }
%>
<h2 style="text-align: center; color: white;"><%= Tcate %></h2>

            <div class="container_listado">
                <%
                    

                    for (Platos pa : p) {
                %>
                
                <div class="container_prod">
                    <div class="img_prod">
                        <img src="Imagenes/plato0<%=pa.getCod_plato()%>.jpg" alt="alt"/>
                    </div>
                    <div class="nom_prod" >
                        <h3><%=pa.getNombre_plato()%></h3>
                    </div>
                    <div class="act_prod">
                        <button onclick="window.location = 'control?opc=2&cod_plato=<%=pa.getCod_plato()%>'" >Comprar ahora</button>
                        <!-- Se pasa 'cod_plato' como parámetro para identificar el plato -->
                    </div>       
                </div>
                <%
                    }
                %>
            </div>
        </section>
    </body>
</html>
<script>

    function autoSubmit() {
        document.getElementById('filterForm').submit();
    }
    // Inicialmente mostrar todos los items

</script>