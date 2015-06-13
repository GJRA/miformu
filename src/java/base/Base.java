package base;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author arturo
 */

public class Base {
    Connection c;
    Statement stm;
    ResultSet re;
    
    public void conexion() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        c= DriverManager.getConnection("jdbc:mysql://localhost/datos","root","n0m3l0");
        stm= c.createStatement();
    }
    
    public void altas(String t1,String t2, String t3, String t4,String t5, String t6, String t7, String t8, String t9) throws SQLException{
        
        if("Femenino".equals(t5)){
            char s = t5.charAt(0);
            stm.executeUpdate("Insert into datos values('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+s+"','"+t6+"','"+t7+"','"+t8+"','"+t9+"')");
        }else{
            if("Masculino".equals(t5)){
            char s = t5.charAt(0);
            stm.executeUpdate("Insert into datos values('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+s+"','"+t6+"','"+t7+"','"+t8+"','"+t9+"')");
            }
        }
     }
   
    public String [] consultar(String t1) throws SQLException{
        String [] select = new String [9];
        re = stm.executeQuery("select * from datos where Columna3 = '"+t1+"'");
        if(re.next()){
            for(int i = 1; i <= 9; ++i){
                select[i-1] = re.getString(i);
                System.out.println(re.getString(i));
            }
        }
        return select;
    }
    
    public String [] consultar2() throws SQLException{
        String [] select = new String [9];
        re = stm.executeQuery("select * from datos ");
        while(re.next()){
            for(int i = 1; i <= 9; ++i){
                select[i-1] = re.getString(i);
                System.out.println(re.getString(i));
            }
        }
        return select;
    }
    
    
    public void cerrar() throws SQLException{
        //Cerrar conexion
        c.close();
    }
}
