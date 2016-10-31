package demo.Model.DBUtils;
import java.sql.Connection;
import java.sql.SQLException;
public interface IConnectionPool {

	//Trả về kết nối
	public Connection getConnection() throws SQLException;

	
}
