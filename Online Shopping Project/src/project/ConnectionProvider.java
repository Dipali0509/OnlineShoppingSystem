package project;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider
{
	static Connection con;
	public static Connection getconnection()
	{
 				
		try
		{
			  Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","root");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
}
