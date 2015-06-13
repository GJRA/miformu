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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String texto1;
            String [] datos;
            texto1 = request.getParameter("busca");
            Base bd = new Base();
            bd.conexion();
            datos = bd.consultar(texto1);
            bd.cerrar();
            for(int i = 0; i < datos.length; ++i){
                out.println("<br>");
                out.println(datos[i]);
            }
        %>
        
    </body>
</html>
