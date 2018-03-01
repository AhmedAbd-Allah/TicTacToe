import java.sql.* ;
import java.util.Properties;


public class DBConnect
{

	private Connection con;
	public Connection Connect_to()
	{


		try
		{
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/xoo?user=ahmed&password=ahmed");				
		}

		catch(SQLException ex)
		{
			ex.printStackTrace();
		}

		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		return con;
	}

}