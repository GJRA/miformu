<%-- 
    Document   : Registrarse
    Created on : 23/09/2015, 05:33:05 PM
    Author     : arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             
           String name, usr, contra, grupo, mail;
           int boleta;
            name = request.getParameter("name");
            usr = request.getParameter("ape");
            contra = request.getParameter("contra");
            grupo = request.getParameter("grupo");
            mail = request.getParameter("mail");
            boleta = Integer.parseInt(request.getParameter("boleta"));
            
            BD.Base bd = new BD.Base();
            bd.conectar();
            bd.altas(name, usr, contra, grupo, mail, boleta);
            bd.cierraConexion();
            response.sendRedirect("/Calculadora/index.html");
            
        %>
    </body>
</html>
