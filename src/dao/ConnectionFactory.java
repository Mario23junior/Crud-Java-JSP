package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
	// Conexao com banco de dados 
	 public Connection getConexao() {
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/mercado", "root" ,"123456789");
			 
		  }catch(Exception erro) {
				 throw new RuntimeException("erro 1: "+ erro);
			 }
	 }
}
