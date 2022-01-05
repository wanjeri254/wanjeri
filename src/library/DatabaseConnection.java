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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import library.utils.DBConnectionInterface;

/**
 *
 * @author eva
 */
public class DatabaseConnection implements DBConnectionInterface {

    private static final long serialVersionUID = 1L;
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    private static final String host = "localhost";
    private static final int port = 3306;
    private static final String db = "library";
    private static final String username = "root";
    private static final String pass = "";

    public static Connection ConnecrDb() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + db, username, pass);

            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, ex);
            return null;
        }
    }

    boolean ConnectDb() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + db, username, pass);
        return false;

    }

    public static void main(String[] array) {
        DatabaseConnection database = new DatabaseConnection();
    }

    @Override
    public Connection connect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://" + host + ":" + port + "/" + db, username, pass);

            return conn;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "An exception occurred while trying to connect to the database.");
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnection.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "An exception occurred while trying to connect to the database.");
            return null;
        }
    }
}
