<%-- 
    Document   : borrar
    Created on : 11/06/2015, 08:29:09 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
            
    </head>
    <body>
      <%@page import="java.sql.*, java.io.*" %>
       <%
            String cadbus;
            //Investigar lo siguiente
            Connection c = null;
            Statement s = null;
            ResultSet r = null;
            cadbus = request.getParameter("rfc");
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/base", "root","n0m3l0");
                s = c.createStatement();
            }
            catch(SQLException error){
                out.print(error.toString());
            }
            
            cadbus = request.getParameter("rfc");
            r = s.executeQuery("SELECT * FROM datos WHERE columna3 = '"+cadbus+"';");
            
            if(!r.next()){
                out.println("<script>alert('Se eliminó a la persona')</script>");
            }else{
                try{
                    s.executeUpdate("delete from datos where columna3 = '"+cadbus+"';");
                    //out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Formulario/index.html'/>");
                }catch(SQLException error){
                    out.print(error.toString());
                }
            }
            //out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Formulario/index.html'/>");
            
         %>  
    </body>
</html>
