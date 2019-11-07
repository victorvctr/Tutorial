package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	 public static Connection getConexao() throws SQLException {
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            return DriverManager.getConnection("jdbc:mysql://localhost:3306/timehouse","root","root");  
	         } catch (ClassNotFoundException e) {
	            System.out.println("erro "+e);
	        }
	        return null;
	 }
}
