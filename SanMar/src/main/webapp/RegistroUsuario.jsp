

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
        <link href="css/estilosRegistroUser.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="box">
            <span class="borderLine"></span>
            <form action="control" name="fr">
                <h2>Registro de Usuario</h2>
                <input type="hidden" name="opc" value="2">
                <table style="position: relative; left: 25px;">
                    <tr>
                        <td>
                            <div class="inputBox">
                                <input type="text" name="nom" required>
                                <span>Nombre</span>
                                <i></i>
                            </div>
                        </td>
                        <td>
                            <div class="inputBox">
                                <input type="text" name="ape" required>
                                <span>Apellidos</span>
                                <i></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="inputBox">
                                <input type="text" name="correo" required>
                                <span>Correo</span>
                                <i></i>
                            </div>
                        </td>
                        <td>
                            <div class="inputBox">
                                <input type="password" name="pass" required>
                                <span>Contraseña</span>
                                <i></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="inputBox">
                                <input type="text" name="celular" required>
                                <span>Celular</span>
                                <i></i>
                            </div>
                        </td>
                        <td>
                            <input style="position: relative; left: 190px; top: 15px;" type="submit" value="Registrar">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="links">
                                <a href="LoginUsuario.jsp">Volver a Inicio de Sesión</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
