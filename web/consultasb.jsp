<%-- 
    Document   : consultasb
    Created on : 12/06/2015, 07:32:11 AM
    Author     : Gaby <3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            function borra(){
                var result = confirm("¿Desea borrar a este cliente?");
                if(result === true){
                    document.getElementByID("borrar1").submit();
                }else{
                    alert("No se borrara el registro");
               }
           }
        </script>
    </head>
    <body>
        <%@page import="java.sql.*, java.io.*" %>
        <%
            Connection c= null;
            Statement s=null;
            ResultSet r=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c= DriverManager.getConnection("jdbc:mysql://localhost/datos","root","n0m3l0");
                s = c.createStatement();
                }
            catch(SQLException  error)
            {
                out.println(error.toString());
            }
            try{
                String cadbus = request.getParameter("cuadro");
                String queryStr = "select*from datos where columna3 = '"+cadbus+"';";
                PreparedStatement pstmt = c.prepareStatement(queryStr);
           
                r = pstmt.executeQuery();
                out.println("<script>alert('consulta exitosa.')</script>");
                if(r.next()){
                    String cad1 = r.getString("columna1");
                    String cad2 = r.getString("columna2");
                    String cad3 = r.getString("columna3");
                    String cad4 = r.getString("columna4");
                    String cad5 = r.getString("columna5");
                    String cad6 = r.getString("columna6");
                    String cad7 = r.getString("columna7");
                    String cad8 = r.getString("columna8");
                    String cad9 = r.getString("columna9");
                     out.println("<br>");
                    out.println("----------------------------------------");
                    out.println("<br>");
                    out.println("Nombre: "+cad1);
                     out.println("<br>");
                    out.println("Apellido: "+cad2);
                     out.println("<br>");
                    out.println("RFC: "+cad3);
                     out.println("<br>");
                    out.println("Contraseña: "+cad4);
                     out.println("<br>");
                    out.println("Sexo: "+cad5);
                     out.println("<br>");
                    out.println("Fecha de nacimiento: "+cad6);
                     out.println("<br>");
                    out.println("Correo: "+cad7);
                     out.println("<br>");
                    out.println("Domicilio: "+cad8);
                     out.println("<br>");
                    out.println("Sueldo: "+cad9);
                     out.println("<br>");
                     
                     out.println("<form id='borrar' action='borrar.jsp' method='post'>");
                     out.println("<input type='text' name='rfc' value='"+cad3+"'>");
                     
                    out.println("</form>");
         
                    out.println("<script>borra();</script>");
                }
            }
            catch(SQLException error){
                out.print(error.toString());
            }
            %>
    </body>
</html>
