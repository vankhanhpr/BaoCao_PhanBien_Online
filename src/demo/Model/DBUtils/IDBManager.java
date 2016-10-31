package demo.Model.DBUtils;
import java.sql.*;
public interface IDBManager {

	public boolean execute(PreparedStatement pre);

	//public ResultSet get(PreparedStatement pre);
	public ResultSet get(String sql, int value);
	public ResultSet get(String sql, String user, String pass);
	//public ResultSet get(String sql, String value);
	

}
