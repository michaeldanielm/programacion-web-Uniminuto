<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                <a class="navbar-brand" href="index.jsp">Programacion Web </a>
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
      
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
      Statement s = conexion.createStatement();
      
      request.setCharacterEncoding("UTF-8");
      String insercion = "INSERT INTO USUARIO(Nombre,Apellido,Edad,Celular) VALUES (" + "'" +  request.getParameter("Nombre")
                         + "','" + request.getParameter("Apellido")
                         + "','" + request.getParameter("Edad")
                         + "', '" + request.getParameter("Celular") + "')";
      s.execute(insercion); 
      out.println("Cliente Guardado correctamente.");
      conexion.close();
    %>
  </body>
</html>

