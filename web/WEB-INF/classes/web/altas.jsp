<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="base.Base"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             
           String name, ape, r, sex, contra, fech,dom, mail, suel;
            name = request.getParameter("nom");
            ape = request.getParameter("ape");
            r = request.getParameter("r");
            sex = request.getParameter("sex");
            contra = request.getParameter("clave");
            fech = request.getParameter("dia");
            mail = request.getParameter("meil");
            dom = request.getParameter("comment");
            suel = request.getParameter("numero");
            
            Base bd = new Base();
            bd.conexion();
            bd.altas(name,ape,r,contra,sex,fech, mail, dom, suel);
            bd.cerrar();
            response.sendRedirect("/miformu/as.html");
            
        %>
        <br><br><h1>ALGO DE POR AQUI</h1>
    </body>
</html>
