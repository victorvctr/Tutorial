package Model;

import Util.ConnectionFactory;
import java.sql.*;


public class Usuarios_DAO {
	public int validar(Usuarios MyUser) {
        
		Connection conn = null;
	        Statement st = null;
		ResultSet rs = null;
		int Validado = 0;
		
	try {
		
		conn = ConnectionFactory.getConexao();
		String SQL = null;
		String Login =  MyUser.getLogin();
        String Senha = MyUser.getSenha();
                SQL = " where LOGIN = '" + Login + "' and SENHA = '" + Senha + "'";
		st = conn.createStatement();   
	        rs = st.executeQuery("select count(*) valido from usuario " + SQL);
	    
	    while(rs.next()) {
	 	
	     	  Validado = Integer.parseInt(rs.getString("valido"));   

	     		
	      } // fim do while
   	  rs.close();
   	  st.close();
	  conn.close();
	  
	    } catch (Exception ex) {
	 	   ex.printStackTrace();
	    } 
           return Validado;	
	 	   
	}}
