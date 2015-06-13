<%-- 
    Document   : consultas
    Created on : 3/06/2015, 08:32:34 PM
    Author     : arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="base.Base"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css.css" media="screen"/>
        <title>JSP Page</title>
    </head>
    <body id="g">
        <form action="as.html" method ="get">
        <div class="j">
        <%
            
            String texto1;
            String [] datos;
            texto1 = request.getParameter("busca");
            Base bd = new Base();
            bd.conexion();
            datos = bd.consultar(texto1);
            bd.cerrar();
            out.println("<br>");
            out.print("<h2>"+"Nombre:   "+datos[0]+"</h2>");
            out.print("<h2>"+"Apellido:   "+datos[1]+"</h2>");
            out.print("<h2>"+"RFC:  "+datos[2]+"</h2>");
            out.print("<h2>"+"Contraseña:   "+datos[3]+"</h2>");
            out.print("<h2>"+"Sexo:   "+datos[4]+"</h2>");
            out.print("<h2>"+"Fecha de nacimiento:   "+datos[5]+"</h2>");
            out.print("<h2>"+"Correo:   "+datos[6]+"</h2>");
            out.print("<h2>"+"Domicilio:   "+datos[7]+"</h2>");
            out.print("<h2>"+"Sueldo:   "+datos[8]+"</h2>");
           
        %>
        <input type="submit" value="Menu">
        </div>
        </form>
    </body>
</html>
