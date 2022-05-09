package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.sql.DataSource;

import model.Post;

public class PostDB {
	DataSource ds = null;
	
	public PostDB(DataSource ds) {
		this.ds = ds;
	}
	
	Connection conn = null;
	Statement smt = null;
	PreparedStatement psmt = null;
	ResultSet res = null;
	
	public boolean createPost(int userId,String content,int noOfLikes) throws SQLException {		
		
		String sql = "insert into posts(UserID,Content,NoOfLikes,CreatedDate,LastUpdatedOn) values (?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, userId);
			psmt.setString(2, content);
			psmt.setInt(3, noOfLikes);
			psmt.setTimestamp(4, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public String getPostContent(int postId) throws SQLException {
		String sql = "select * from posts p inner join User u on p.userid = u.userid where Postid = " + postId;
		
		smt = conn.createStatement();
		res = smt.executeQuery(sql);
		
		return res.getString(2);
	}
	
	public boolean editPost(int postId,String content) throws SQLException {		
		
		String sql = "UPDATE posts SET Content = ?, LastUpdatedOn = ? WHERE Postid = " + postId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, content);
			psmt.setTimestamp(2, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean deletePost(int postId) throws SQLException {		
		
		String sql = "DELETE FROM posts WHERE Postid = " + postId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public ArrayList<Post> getAllPosts() throws Exception{
		ArrayList<Post> tempPosts = new ArrayList<>();
		
		try {
			conn = this.ds.getConnection();
			
			String sql = "select p.*,concat(u.FirstName,' ',u.LastName) as 'Name' from posts p join user u on p.UserID = u.UserID order by p.LastUpdatedOn desc;";
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				
				Integer postId = res.getInt("Postid");
				Integer userId = res.getInt("UserID");
				String content = res.getString("Content").toString();
				Integer nbLikes = res.getInt("NoOfLikes");
				String createdDate = res.getTimestamp("CreatedDate").toString();
				String lastUpdatedOn = res.getTimestamp("LastUpdatedOn").toString();
				String name = res.getString("Name").toString();
				
				tempPosts.add(new Post(postId,userId,content,nbLikes,createdDate,lastUpdatedOn,name));
			}
			
		}finally {
			close(conn,smt,psmt,res);
		}

		return tempPosts;
	}
	
	public ArrayList<Post> getUserPosts(int userID) throws Exception{
		ArrayList<Post> tempUserPosts = new ArrayList<>();
		
		try {
			conn = this.ds.getConnection();
			
			String sql = "select p.*,concat(u.FirstName,' ',u.LastName) as 'Name' from posts p join user u on p.UserID = u.UserID where u.UserID = " + userID + " order by p.LastUpdatedOn desc;";
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				
				Integer postId = res.getInt("Postid");
				Integer userId = res.getInt("UserID");
				String content = res.getString("Content").toString();
				Integer nbLikes = res.getInt("NoOfLikes");
				String createdDate = res.getTimestamp("CreatedDate").toString();
				String lastUpdatedOn = res.getTimestamp("LastUpdatedOn").toString();
				String name = res.getString("Name").toString();
				
				tempUserPosts.add(new Post(postId,userId,content,nbLikes,createdDate,lastUpdatedOn,name));
			}
			
		}finally {
			close(conn,smt,psmt,res);
		}

		return tempUserPosts;
	}
	
	public boolean savedPost(int postID,int userID) throws SQLException {		
		
		String sql = "INSERT INTO saved_posts (Postid, UserID, Content, NoOfLikes, CreatedDate, LastUpdatedOn, SavedFor) SELECT Postid, UserID, Content, NoOfLikes, CreatedDate, LastUpdatedOn, ? FROM posts WHERE Postid =" + postID;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);	
			psmt.setInt(1, userID);
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public ArrayList<Post> getSavedPosts(int userID) throws Exception{
		ArrayList<Post> tempSavedPosts = new ArrayList<>();
		
		Connection conn = null;
		Statement smt = null;
		PreparedStatement psmt = null;
		ResultSet res = null;
		
		try {
			conn = this.ds.getConnection();
			
			String sql = "select p.*,concat(u.FirstName,' ',u.LastName) as 'Name' from saved_posts p join user u on p.UserID = u.UserID where p.SavedFor = " + userID +" order by p.LastUpdatedOn desc;";
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				
				Integer postId = res.getInt("Postid");
				Integer userId = res.getInt("UserID");
				String content = res.getString("Content").toString();
				Integer nbLikes = res.getInt("NoOfLikes");
				String createdDate = res.getTimestamp("CreatedDate").toString();
				String lastUpdatedOn = res.getTimestamp("LastUpdatedOn").toString();
				String name = res.getString("Name").toString();
				
				tempSavedPosts.add(new Post(postId,userId,content,nbLikes,createdDate,lastUpdatedOn,name));
			}
			
		}finally {
			close(conn,smt,psmt,res);
		}
		return tempSavedPosts;
	}
	
	public boolean deleteSavedPost(int postId) throws SQLException {		
		
		String sql = "DELETE FROM saved_posts WHERE Postid = " + postId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}

	public boolean saveLike(int postID,int userID) throws SQLException {
		String sql = "INSERT INTO likes (Postid, UserID) values (?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, postID);
			psmt.setInt(2, userID);
			
			psmt.executeUpdate();
			addLike(postID);
			return true;
			
			}finally {
				close(conn,smt,psmt,res);
			}
		
	}
	
	public void addLike(int postID) throws SQLException {
		String sql = "update posts set nooflikes = nooflikes+1 where postid = " + postID;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.executeUpdate();
			
			}finally {
				close(conn,smt,psmt,res);
			}
	}
	
	public void removeLike(int postID) throws SQLException {
		String sql = "update posts set nooflikes = nooflikes-1 where postid = " + postID;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.executeUpdate();
			
			}finally {
				close(conn,smt,psmt,res);
			}
	}
	
	
	// To Close the Connection
	private void close(Connection conn, Statement smt, PreparedStatement psmt, ResultSet res) {	
		try {
			if(conn != null)	
				conn.close();
			
			if(smt != null)
				smt.close();
				
			if(psmt != null)
				psmt.close();
			
			if(res != null)
				res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}	
	}
}
