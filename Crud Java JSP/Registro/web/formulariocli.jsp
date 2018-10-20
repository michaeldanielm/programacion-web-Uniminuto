<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>ALTA</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">Programacion Web</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">INICIO</a></li>
                    <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">OPCIONES
                        <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="formulariocli.jsp">AÑADIR PERFIL</a></li>
                            <li><a href="borrado.jsp">BORRAR PERFIL</a></li>
                        </ul>
                    </li>
                    <li><a href="cliente.jsp">Usuarios</a></li>
                    
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="page-header">
                <div class="well"><h1>D A T O S </h1></div>
            </div>
        </div>
        
        <form  class="navbar-form navbar-left" action="guardaclienta.jsp"  method="post" style="margin-left: 100px" >
            <div class="form-group">
                <label for="Nombre">Nombre</label>
                <input type="text" class="form-control" name="Nombre" required="">
            </div>
            <div class="form-group" style="margin-left: 20px">
                <label for="Apellidos">Apellidos</label>
                <input type="text" class="form-control" name="Apellido" required="">
            </div>
            </br>
            <div class="form-group" style="margin-top: 50px" style="margin-right: 20px">
                <label for="Edad">Edad</label>
                <input type="text" class="form-control" name="Edad" required="" pattern="([0-9]{2})">
            </div>
            </br>
            <div class="form-group" style="margin-top: 50px" >
                <label for="tlf">Celular</label>
                <input type="text" class="form-control" name="Celular" required="" pattern="[3-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]">
            </div>
            </br>
            <input type="submit" value="Aceptar" style="margin-top: 100px" >
            
        </form>
    </body>
</html>
