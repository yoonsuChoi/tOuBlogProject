package com.newlecture.web;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class OracleConnectionTest {

   private static final String className = "oracle.jdbc.driver.OracleDriver";
   private static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
   private static final String user = "scott";
   private static final String password = "tiger";
   
   @Test
   public void testConnection() throws Exception {
       
      Class.forName(className);
      try(Connection  con = DriverManager.getConnection(url, user, password)) {
      
         System.out.println("> " +con);
      
      } catch (Exception e) { 
         
      }
   
   
   }

}
