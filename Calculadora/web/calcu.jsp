<%-- 
    Document   : calcu
    Created on : 23/09/2015, 07:21:05 PM
    Author     : arturo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.math.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int num1 = Integer.parseInt(request.getParameter("numero1"));
            int num2 = Integer.parseInt(request.getParameter("numero2"));
            String sele = request.getParameter("oper");
            int resultado= 1;
            switch(sele) {
                case "Sumar":
                        resultado = num1 + num2;
                    break;
                case "Restar": 
                        resultado = num1 - num2;
                    break;
                case "Multiplicacion":
                        resultado = num1 * num2;
                    break;
                case "Division":
                        resultado = num1 / num2;
                    break;
                case "Raiz":
                        resultado = (int) Math.sqrt(num1);
                    break;
                case "Exponencial":
                        resultado = (int) Math.pow(num1,num2);
                    break;
                case "Factorial":
                    while(num1!=0){ 
                       resultado = num1 * resultado;
                        num1--;

                    }
            }
            
            out.print("<script>alert('"+resultado+"')</script>");
            out.print("<META HTTP-EQUIV='REFRESH' CONTENT='.0000001;URL=http://localhost:8080/Calculadora/calcu.html'/>");
            
       
        %>
    </body>
</html>
