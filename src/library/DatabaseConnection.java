/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author eva
 */
public class DatabaseConnection {
   private static final long serialVersionUID = 1L;
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

 public static Connection ConnecrDb() throws SQLException {
      try {
          Class.forName("com.mysql.jdbc.Driver");
          
         String host="localhost";
         int port=3306;
         String db="library";
          String username="Library";
           String pass="";
           
Connection conn = DriverManager.getConnection("jdbc:mysql://"+host+":"+port+"/"+db,username,pass); 
			
          return conn;
   } catch (ClassNotFoundException ex) {
         JOptionPane.showMessageDialog(null, ex);
          return null;
      }
   }
     
     boolean ConnectDb() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
          String host="localhost";
         int port=3306;
         String db="library";
          String username="Library";
           String pass="";
        Connection conn = DriverManager.getConnection("jdbc:mysql://"+host+":"+port+"/"+db,username,pass);
     return false;

     
     
     }
     public static void main(String[]array){
     DatabaseConnection database = new DatabaseConnection();
     }
}
