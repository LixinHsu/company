package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	public static void main(String[] args) {
		System.out.println(DbConnection.getDb());
	}
	
	public static Connection getDb()
	{
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/company";
		String user = "root";
		String password = "Aa1234..";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			System.out.println("no driver");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("no connection");
			e.printStackTrace();
		}
		return conn;
	}
}