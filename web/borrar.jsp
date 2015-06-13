<%@page import="base.Base"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>     
    </head>
    <body>
       <%
           String rfc = request.getParameter("rfc");
           Base bd = new Base();
           bd.conexion();
           bd.bajas(rfc);
           bd.cerrar();
           response.sendRedirect("/miformu/");
        %>  
    </body>
</html>