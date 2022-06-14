package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class PgConnector {
	public Connection getConnection() throws SQLException, ClassNotFoundException {

	    Connection conn = null; 
	    Class.forName("org.postgresql.Driver");
	    conn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/DB_AracSatisKiralama", "postgres", "int");
	    System.out.println("Connected to database");
	    return conn;
	}

}
