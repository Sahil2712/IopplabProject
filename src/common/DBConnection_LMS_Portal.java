package common;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 *Program to setup a connection for database
 *Date Base Used: MySQL
 *External Jar Required: mysql-connector-java-8.0.19.jar
 *Author :Sahil Rajeev Naik
 *Date started: 20/05/2021
 *Date ended: 	2/06/2021
 *Testing :Raksha Udupi
*/

public class DBConnection_LMS_Portal {
	
	//This function returns the connection

	 /* * Method Name:getConnection()
	    * Return Type:Connection
	    * Parameters :void
	    * Description: Returns the connection added
	  */
		
	public Connection getConnection(){
		Connection connection=null;
		System.out.println("Connection called");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lms","root", "root");
			
				
		
		
		
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}

	
}
//connection = DriverManager.getConnection("jdbc:mysql://ec2-50-19-213-178.compute-1.amazonaws.com:3306/doha","doha", "doha");