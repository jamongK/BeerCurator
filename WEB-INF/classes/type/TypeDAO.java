package type;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TypeDAO {
	private Connection conn;
	private ResultSet rs;
	
	public TypeDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/beerdb";
			String dbID = "root";
			String dbPassword = "0102";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Type getType(int typeID) {
		String SQL = "SELECT * FROM type WHERE typeID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, typeID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Type type = new Type();
				type.setTypeID(rs.getInt(1));
				type.setTypeName(rs.getString(2));
				type.setColor(rs.getString(3));
				type.setTaste(rs.getString(4));
				type.setFeature(rs.getString(5));
				type.setProduct(rs.getString(6));
				return type;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
