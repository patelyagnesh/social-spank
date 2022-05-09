package model;

public class Post {
	int postID;
	int userID;
	String content;
	int nbLikes = 0;
	String createdDate;
	String lastUpdatedDate;
	String name;
	
	public int getPostID() {
		return postID;
	}
	public void setPostID(int postID) {
		this.postID = postID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getNbLikes() {
		return nbLikes;
	}
	public void setNbLikes(int nbLikes) {
		this.nbLikes = nbLikes;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public String getLastUpdatedDate() {
		return lastUpdatedDate;
	}
	public void setLastUpdatedDate(String lastUpdatedDate) {
		this.lastUpdatedDate = lastUpdatedDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Post(int postID, int userID, String content, int nbLikes, String createdDate, String lastUpdatedDate) {
		super();
		this.postID = postID;
		this.userID = userID;
		this.content = content;
		this.nbLikes = nbLikes;
		this.createdDate = createdDate;
		this.lastUpdatedDate = lastUpdatedDate;
	}
	
	public Post(int postID, int userID, String content, int nbLikes, String createdDate, String lastUpdatedDate,
			String name) {
		super();
		this.postID = postID;
		this.userID = userID;
		this.content = content;
		this.nbLikes = nbLikes;
		this.createdDate = createdDate;
		this.lastUpdatedDate = lastUpdatedDate;
		this.name = name;
	}	
}
