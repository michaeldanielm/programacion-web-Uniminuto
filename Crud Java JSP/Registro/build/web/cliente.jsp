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
        <title>CLIENTES</title>
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
                <li><a href="cliente.jsp">CLIENTES</a></li>
              
            </ul>
        </div>
    </nav>
        <div class="container">
            <div class="page-header">
                <div class="well"><h1>C L I E N T E S <span class="glyphicon glyphicon-user"></span></h1></div>
            </div>
        </div>
        <div class="container">
            <table class="table table-bordered">
                 <thead>
                        <tr>
                            <th>Código cliente</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                            <th>Telefono</th>
                            </tr>
                     </thead>
                <tbody id="tabla">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
                        Statement s = conexion.createStatement();
                        ResultSet listado = s.executeQuery ("SELECT * FROM USUARIO");
                        
                    %>
                    
                    <%
                      while (listado.next()) {
                        out.println("<tr><td>");
                        out.println(listado.getString("CodigoUsu") + "</td>");
                        out.println("<td>" + listado.getString("Nombre") + "</td>");
                        out.println("<td>" + listado.getString("Apellido") + "</td>");
                        out.println("<td>" + listado.getString("Edad") + "</td>");
                        out.println("<td>" + listado.getString("Celular") + "</td>");
                       
                    %>
                 <td>
                      <form method="get" action="modificar.jsp">
                        <input type="hidden" name="CodigoUsu" value="<%=listado.getString("CodigoUsu") %>"/>
                        <input type="submit" value="modificar">
                      </form>
                      </td>
       
                <%
                        }
                        conexion.close();
                %>
            </tbody>   
       </table>
    </body>
</html>

