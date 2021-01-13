package board;

public class Board {
	private int brdID;
	private String brdTitle;
	private String userID;
	private String brdDate;
	private String brdContent;
	private int brdAvailable;
	
	public int getBrdID() {
		return brdID;
	}
	
	public void setBrdID(int brdID) {
		this.brdID = brdID;
	}
	
	public String getBrdTitle() {
		return brdTitle;
	}
	
	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}
	
	public String getUserID() {
		return userID;
	}
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	public String getBrdDate() {
		return brdDate;
	}
	
	public void setBrdDate(String brdDate) {
		this.brdDate = brdDate;
	}
	
	public String getBrdContent() {
		return brdContent;
	}
	
	public void setBrdContent(String brdContent) {
		this.brdContent = brdContent;
	}
	
	public int getBrdAvailable() {
		return brdAvailable;
	}
	
	public void setBrdAvailable(int brdAvailable) {
		this.brdAvailable = brdAvailable;
	}
}