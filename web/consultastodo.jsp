<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css" media="screen"/>
        <title>Registros</title>
    </head>
    <body id="a">
        <div class="d">
        <%
            Connection c= null;
            Statement s=null;
            ResultSet r=null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c= DriverManager.getConnection("jdbc:mysql://localhost/datos","root","n0m3l0");
                s = c.createStatement();
                }
            catch(SQLException  error){
                System.out.println(error.toString());
            }
            try{
                String queryStr = "select*from datos";
                PreparedStatement pstmt = c.prepareStatement(queryStr);
           
                r = pstmt.executeQuery();
                while(r.next()){
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
                }
            }
            catch(SQLException error){
                System.out.print(error.toString());
            }
            %>
            <input type="button" value="Volver al menu" onclick="window.location.href='/miformu/'">
        </div>
    </body>
</html>
<!--
Lista de cambios:
-Redirecciones corregidas (Usa un boton con funcion javascript, es mas eficiente)
-Codigo optimizado
-Mejoras de rendimiento (No es necesario importar java.io)
-Mejoras de importaciones 
-Bajas funcional (Incluido dentro de consultas)
-Mejoradas excepciones (En caso de excepcion, busca en la pestaña de GlassFish)
-Incluido archivo de script dentro del proyecto
-Corregido pagina de inicio (Ya inicia en as.html
-->