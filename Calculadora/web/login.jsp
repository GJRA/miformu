<%-- 
    Document   : login
    Created on : 23/09/2015, 06:19:56 PM
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
          String usr = request.getParameter("usr");
          String contra = request.getParameter("contra");
          BD.Base bd = new BD.Base();
          bd.conectar();
          String rsLog= bd.login(usr,contra);
          out.print(rsLog);
          if(rsLog.equals("existe")){
              out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Calculadora/calcu.html'/>");
          }
          else{
              out.print("<script>alert('No esta registrado, registrarse')</script>");
              out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Calculadora/index.html'/>");
          }
          bd.cierraConexion();
            %>
    </body>
</html>
