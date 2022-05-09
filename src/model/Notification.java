package model;

public class Notification {
	int notiID;
	String name;
	String type;
	int senderID;
	int userID;
	int notiSrcID;
	boolean isRead;
	
	public int getNotiID() {
		return notiID;
	}
	public void setNotiID(int notiID) {
		this.notiID = notiID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getSenderID() {
		return senderID;
	}
	public void setSenderID(int senderID) {
		this.senderID = senderID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public int getNotiSrcID() {
		return notiSrcID;
	}
	public void setNotiSrcID(int notiSrcID) {
		this.notiSrcID = notiSrcID;
	}
	public boolean isRead() {
		return isRead;
	}
	public void setRead(boolean isRead) {
		this.isRead = isRead;
	}
	
	public Notification(int notiID, String name, String type, int senderID, int userID, int notiSrcID, boolean isRead) {
		super();
		this.notiID = notiID;
		this.name = name;
		this.type = type;
		this.senderID = senderID;
		this.userID = userID;
		this.notiSrcID = notiSrcID;
		this.isRead = isRead;
	}
}
