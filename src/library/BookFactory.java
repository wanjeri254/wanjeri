/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import net.proteanit.sql.DbUtils;

/**
 *
 * @author eva
 */
public class BookFactory {
     Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
   public  BookView getBookView(){
            try{
          Connection con = DatabaseConnection.ConnecrDb();
String sql="SELECT * FROM `book`";
pst = con.prepareStatement(sql);
rs =pst.executeQuery();

}catch(SQLException ex){
 JOptionPane.showMessageDialog(null, ex);
}
         return null;
    
    }
}
