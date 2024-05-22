
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <script src="js/sweetalert.min.js" type="text/javascript"></script>
        <%
            HttpSession ses = request.getSession();
            String aviso = "";
            if (aviso.isEmpty()) {
                aviso = (String) request.getAttribute("aviso");
            }
        %>
        <link href="css/estilosUser.css" rel="stylesheet" type="text/css"/>
    </head>
    <body onload="validar()">
        <div class="box">
            <span class="borderLine"></span>
            <form action="control" name="fr">
                
                <center>
                <img src="Imagenes/iconoinicio.png" alt="icono" width="120" height="120"/>
                </center>
                
                <input type="hidden" name="opc" value="1">
                <div class="inputBox">
                    <input type="text" name="correo" required>
                    <span>Correo</span>
                    <i></i>
                </div>
                <div class="inputBox">
                    <input type="password" name="pass" required>
                    <span>Contraseña</span>
                    <i></i>
                </div>
                <div class="links">
                    <a href="LoginUsuario.jsp">Reload</a>
                </div>
                
                <div style="display: inline-flex;">
                    <input class="ingresar" type="submit" value="Ingresar">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="registro" href="RegistroUsuario.jsp" draggable="false">Registrarse</a>
                </div>
              
                <script>
                    function validar() {
                    <%=aviso%>   
                    }
                </script>
            </form>
        </div>
    </body>
</html>
