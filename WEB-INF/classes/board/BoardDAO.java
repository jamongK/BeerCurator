package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
	private Connection conn;
	private ResultSet rs;
	
	public BoardDAO() {
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
	
	public String getDate() {
		String SQL = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
	public int getNext() {
		String SQL = "SELECT brdID FROM board ORDER BY brdID DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int write(String brdTitle, String userID, String brdContent) {
		String SQL = "INSERT INTO board VALUES (?, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, brdTitle);
			pstmt.setString(3, userID);
			pstmt.setString(4, getDate());
			pstmt.setString(5, brdContent);
			pstmt.setInt(6, 1);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<Board> getList(int pageNumber) {
		String SQL = "SELECT * FROM board WHERE brdID < ? AND brdAvailable = 1 ORDER BY brdID DESC LIMIT 10";
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Board board = new Board();
				board.setBrdID(rs.getInt(1));
				board.setBrdTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBrdDate(rs.getString(4));
				board.setBrdContent(rs.getString(5));
				board.setBrdAvailable(rs.getInt(6));
				list.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public boolean nextPage(int pageNumber) { // for paging
		String SQL = "SELECT * FROM board WHERE brdID < ? AND brdAvailable = 1 ORDER BY brdID DESC LIMIT 10";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// type에 활용 + view.jsp참고
	public Board getBoard(int brdID) {
		String SQL = "SELECT * FROM board WHERE brdID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, brdID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				Board board = new Board();
				board.setBrdID(rs.getInt(1));
				board.setBrdTitle(rs.getString(2));
				board.setUserID(rs.getString(3));
				board.setBrdDate(rs.getString(4));
				board.setBrdContent(rs.getString(5));
				board.setBrdAvailable(rs.getInt(6));
				return board;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	// type에 활용
	
	public int update(int brdID, String brdTitle, String brdContent) {
		String SQL = "UPDATE board SET brdTitle = ?, brdContent = ? WHERE brdID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, brdTitle);
			pstmt.setString(2, brdContent);
			pstmt.setInt(3, brdID);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int delete(int brdID) {
		String SQL = "UPDATE board SET brdAvailable = 0 WHERE brdID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, brdID);
			return pstmt.executeUpdate(); // ù��° �Խù��� ���
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}

