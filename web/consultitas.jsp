<%@page contentType="text/html" pageEncoding="UTF-8" import="base.Base"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String [] datos;
            Base bd = new Base();
            bd.conexion();
            datos = bd.consultar2();
            bd.cerrar();
            for(int i = 0; i < datos.length; ++i){
                out.println(datos[i]);
            }
        %>
    </body>
</html>
