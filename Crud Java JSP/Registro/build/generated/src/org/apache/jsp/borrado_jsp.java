package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class borrado_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("       <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("       <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\n");
      out.write("       <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("       <title>BORRADO</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("      <nav class=\"navbar navbar-inverse\">\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            <div class=\"navbar-header\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"index.jsp\">Programacion Web</a>\n");
      out.write("            </div>\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                <li class=\"active\"><a href=\"index.jsp\">INICIO</a></li>\n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a class=\"dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">OPCIONES\n");
      out.write("                        <span class=\"caret\"></span></a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"formulariocli.jsp\">AÑADIR PERFIL</a></li>\n");
      out.write("                        <li><a href=\"borracliente.jsp\">BORRAR PERFIL</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("                <li><a href=\"cliente.jsp\">Usuario</a></li>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("      <div class=\"container\">\n");
      out.write("            <div class=\"page-header\">\n");
      out.write("                <div class=\"well\"><h1>B O R R A D O </h1></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <table class=\"table table-bordered\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Código</th>\n");
      out.write("                        <th>Nombre</th>\n");
      out.write("                        <th>Apellidos</th>\n");
      out.write("                        <th>Edad</th>\n");
      out.write("                        <th>Teléfono</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody id=\"tabla\">\n");
      out.write("                    ");

                      Class.forName("com.mysql.jdbc.Driver");
                      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
                      Statement s = conexion.createStatement();
                      ResultSet listado = s.executeQuery ("SELECT * FROM USUARIO");
                    
      out.write("\n");
      out.write("\n");
      out.write("                    ");

                      while (listado.next()) {
                          out.println("<tr><td>");
                          out.println(listado.getString("CodigoUsu") + "</td>");
                          out.println("<td>" + listado.getString("Nombre") + "</td>");
                          out.println("<td>" + listado.getString("Apellido") + "</td>");
                          out.println("<td>" + listado.getString("Edad") + "</td>");
                          out.println("<td>" + listado.getString("Celular") + "</td>");
                    
      out.write("\n");
      out.write("                      <td>\n");
      out.write("                      <form method=\"get\" action=\"borracliente.jsp\">\n");
      out.write("                        <input type=\"hidden\" name=\"codigo\" value=\"");
      out.print(listado.getString("CodigoUsu") );
      out.write("\"/>\n");
      out.write("                        <input type=\"submit\" value=\"borrar\">\n");
      out.write("                      </form>\n");
      out.write("                      </td>\n");
      out.write("                    ");

                      } // while   
                      conexion.close();
                     
      out.write("\n");
      out.write("            </tbody>\n");
      out.write("           \n");
      out.write("    </table>\n");
      out.write("  </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
