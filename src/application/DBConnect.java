package application;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	static Connection connect() {
		String user;
		String password;
		user = "nudiyand";
		password = "ygroas";
		
		//user = "sbulusu2";
		//password = "oomtab";
		
		Connection con=null;
		try{  
		//step1 load the driver class  
		Class.forName("oracle.jdbc.driver.OracleDriver");  
		//step2 create  the connection object  
		con = DriverManager.getConnection("jdbc:oracle:thin:@apollo.ite.gmu.edu:1521:ite10g", user, password);
		System.out.println("Connected to Database successfully");
		}
		catch(Exception e)
		{ System.out.println(e);} 
		return con;
	}
}
