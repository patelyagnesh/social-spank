package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.sql.DataSource;

import model.AboutUser;
import model.Message;
import model.Notification;
import model.User;

public class UserDB {	
	DataSource ds = null;
	
	public UserDB(DataSource ds) {
		this.ds = ds;
	}
	
	Connection conn = null;
	Statement smt = null;
	PreparedStatement psmt = null;
	ResultSet res = null;
	
	public boolean registerUser(String fname,String lname,String email,String password,String gender) throws SQLException {		
		
		String sql = "insert into user(FirstName,LastName,Email,Password,Gender) values (?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, fname);
			psmt.setString(2, lname);
			psmt.setString(3, email);
			psmt.setString(4, password);
			psmt.setString(5, gender);
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public int loginUser(String email,String password) {
		
		String sql = "select * from user";
		
		try {
			
			conn = this.ds.getConnection();			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				if(res.getString("Email").equals(email) && res.getString("Password").equals(password)) {
					return res.getInt("UserID");
				}
			}
			return -1;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}
		finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public User getUser(int userid) throws SQLException {
		User u = null;
		
		String sql = "select UserID,Email,concat(FirstName,' ',LastName) as 'Name' from user where UserID =" + userid;
				
				try {
					conn = this.ds.getConnection();
					
					smt = conn.createStatement();
					res = smt.executeQuery(sql);
					
					while(res.next()) {
						u = new User(res.getInt("UserID"),res.getString("Email"),res.getString("Name"));
						return u;
					}
					return u;
				}catch(Exception e){
					e.printStackTrace(); 
					return u;
				}
				finally {
					close(conn,smt,psmt,res);
				}
	}
	
	public boolean aboutUser(int userid,String nickname,String dob, String languages,
			String education, String occupation, String rStatus, String website, String bio, String country) throws SQLException, ParseException {		
		
		String sql = "INSERT INTO about_user (`UserID`,`DOB`,`NickName`,`Languages`,`Education`,`Occupation`"
				+ ",`Relationship Status`,`Website`,`Bio`,`Country`,`CreatedDate`,`LastUpdatedOn`) VALUES\r\n" + 
				"(?,?,?,?,?,?,?,?,?,?,?,?);";
		
		try {
			java.util.Date date = new SimpleDateFormat("yyyy-MM-dd").parse(dob);
			java.sql.Date sqlDate = new java.sql.Date(date.getTime());
			
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, userid);			
			psmt.setDate(2, sqlDate);
			psmt.setString(3, nickname);
			psmt.setString(4, languages);
			psmt.setString(5, education);
			psmt.setString(6, occupation);
			psmt.setString(7, rStatus);
			psmt.setString(8, website);
			psmt.setString(9, bio);
			psmt.setString(10, country);
			psmt.setTimestamp(11, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(12, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public AboutUser userInfo(int userid) throws Exception{
		AboutUser details = null;
		try {
			conn = this.ds.getConnection();
			
			String sql = "SELECT AboutUserID,a.UserID,DOB,NickName,Languages,Education,Occupation,`Relationship Status`,Website,Bio,Country FROM about_user a inner join user u on a.userid = u.userid WHERE a.UserID = " + userid + " ORDER BY LastUpdatedOn DESC LIMIT 1;";
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
								
				Integer aboutUserId = res.getInt("AboutUserID");
				Integer userId = res.getInt("UserID");
				String dob = res.getDate("DOB").toString();
				String nickname = res.getString("NickName");
				String language = res.getString("Languages");
				String education = res.getString("Education");
				String occupation = res.getString("Occupation");
				String rStatus = res.getString("Relationship Status");
				String website = res.getString("Website");
				String bio = res.getString("Bio");
				String country = res.getString("Country");
				
				details = new AboutUser(aboutUserId,userId, nickname, dob, language, education, occupation, rStatus, website, bio, country);
			}
			
		}finally {
			close(conn,smt,psmt,res);
		}

		return details;
	}
	
	public AboutUser frndInfo(int userid) throws Exception{
		AboutUser frndInfo = null;
		try {
			conn = this.ds.getConnection();
			
			String sql = "SELECT u.userid, concat(d.firstname, ' ',d.lastname) as name,Nickname,bio,country FROM socialspark.about_user u " +
						"inner join user d on u.userid= d.userid where u.userid= " + userid + " order by u.LastUpdatedOn desc limit 1";
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
							
				Integer userId = res.getInt("userid");
				String name = res.getString("name");
				String nickname = res.getString("NickName");
				String bio = res.getString("bio");
				String country = res.getString("country");
				
				frndInfo = new AboutUser(userId, nickname, bio, country, name);
			}
			
		}finally {
			close(conn,smt,psmt,res);
		}

		return frndInfo;
	}
	
	public ArrayList<User> search(String name) throws SQLException {
		ArrayList<User> tempSearch = new ArrayList<>();
		
		String sql = "SELECT UserID,concat(FIRSTNAME, ' ', LASTNAME) AS 'Name' FROM USER WHERE concat(FIRSTNAME, ' ', LASTNAME) LIKE '%"+ name +"%'";
				
		try {
			conn = this.ds.getConnection();
			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
				
			while(res.next()) {
				tempSearch.add(new User(res.getInt("UserID"),res.getString("Name")));
				return tempSearch;
			}
			return tempSearch;
		}catch(Exception e){
			e.printStackTrace(); 
			return tempSearch;
		}
		finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public ArrayList<User> getFriends(int userid) throws SQLException {
		
		ArrayList<User> friendDetail = new ArrayList<>();
		String sql = "SELECT concat(F.FIRSTNAME,' ',F.LASTNAME) AS 'Name', F.USERID FROM frienddetails D INNER JOIN USER F ON D.FriendID = F.UserID where D.userid =" + userid;
		
		try {
			conn = this.ds.getConnection();smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				String name = res.getString("Name").toString();
				int frndId = res.getInt("USERID");
				friendDetail.add(new User(frndId, name));
				}
			}
		finally{
				close(conn,smt,psmt,res);
			}
		return friendDetail;
		}
	
	public boolean addFriend(int senderId,int receiverId) throws SQLException {		
		
		String sql = "INSERT INTO `friend_requests`(`SenderID`,`ReceiverID`,`DateSent`,`PendingConfirmation`,`CreatedDate`,`LastUpdateOn`) VALUES (?,?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, senderId);
			psmt.setInt(2, receiverId);
			psmt.setTimestamp(3, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setInt(4, 1);
			psmt.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(6, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			int nofiType = 1;
			int friendReqId = getFriendReqId(receiverId);
			addNotification(receiverId,friendReqId,nofiType);
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public int getFriendReqId(int userId) {
		
		String sql = "select FriendRequestID from friend_requests f where ReceiverID =" + userId + "\r\n" + 
			      "and not exists (select * from notifications n\r\n" + 
			      "where f.ReceiverID = n.UserID\r\n" + 
			      "and f.FriendRequestID = n.NotificationSourceID and NotificationTypeID = 1) order by LastUpdateOn desc\r\n" + 
			      "limit 1";
		
		try {
			
			conn = this.ds.getConnection();			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			res.next();
			int friendReqId = res.getInt("FriendRequestID");
			
			return friendReqId;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}
		finally {
			close(conn,smt,psmt,res);
		}
	}
	
	//Get Notification
	public ArrayList<Notification> getNotification(int userid) throws SQLException {
		
		ArrayList<Notification> tempNotification = new ArrayList<>();
		String sql = "select * from(\r\n" +"select NotificationID, concat(Firstname,' ',lastname) as Name,'Friend Request' as Type, f.SenderID,ReceiverID as UserID,FriendRequestID as NotificationSourceID,isread,n.lastUpdatedOn from notifications n \r\n" +"inner join friend_requests f on f.FriendRequestID = n.NotificationSourceID and NotificationTypeID=1 \r\n" +"inner join user u on u.UserID = f.SenderID where ReceiverID = " + userid + " union \r\n" +"select NotificationID, concat(Firstname,' ',lastname) as Name,'Message' as Type, m.SenderID,m.UserID,MessageID,isread,n.lastUpdatedOn\r\n" +" from notifications n inner join messages m on m.messageid = n.NotificationSourceID and NotificationTypeID=2 \r\n" +" inner join user u on u.UserID = m.SenderID where m.UserID = " + userid + " and IsRead = 0 )a order by lastUpdatedOn desc";
		
		try {
			conn = this.ds.getConnection();
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				int notiId = res.getInt("NotificationID");
				String name = res.getString("Name").toString();
				String type = res.getString("Type").toString();
				int senderId = res.getInt("SenderID");
				int notiSrcId = res.getInt("NotificationSourceID");
				boolean isRead = res.getBoolean("isread");
				
				tempNotification.add(new Notification(notiId, name, type, senderId, userid, notiSrcId, isRead));
				}
			}
		finally{
				close(conn,smt,psmt,res);
			}
		return tempNotification;
		}
	
	public boolean addNotification(int userId,int friendReqId,int notiType) throws SQLException {		
		
		String sql = "INSERT INTO `notifications` (`UserID`,`NotificationDate`,`NotificationTypeID`,`NotificationSourceID`,`IsRead`,`CreatedDate`,`LastUpdatedOn`)VALUES (?,?,?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, userId);
			psmt.setTimestamp(2, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setInt(3, notiType);
			psmt.setInt(4, friendReqId);
			psmt.setBoolean(5, false);
			psmt.setTimestamp(6, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(7, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean acceptFriendReq(int senderId,int receiverId) throws SQLException {		
		
		String sql = "INSERT INTO `frienddetails`(`UserID`,`FriendID`,`FriendStatusID`,`CreatedDate`,`LastUpdatedOn`) VALUES (?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, senderId);
			psmt.setInt(2, receiverId);
			psmt.setInt(3, 1);
			psmt.setTimestamp(4, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean removeFriend(int senderId,int receiverId) throws SQLException {		
		
		String sql = "DELETE FROM frienddetails WHERE UserID = " + senderId + " and FriendID = " + receiverId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean changePassword(int userId, String newPass) throws SQLException {		
		
		String sql = "UPDATE user SET Password = ? WHERE UserID = " + userId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, newPass);
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean deleteFrndReq(int frndReqId) throws SQLException {		
		
		String sql = "DELETE FROM friend_requests WHERE FriendRequestID = " + frndReqId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public int getMsgId(int userId) {
		
		String sql = "select MessageID from messages m where UserID = " + userId + " and not exists \r\n" +"(select * from notifications n where m.UserID = n.UserID and m.MessageID = n.NotificationSourceID and NotificationTypeID = 2 \r\n" +"and IsRead = 0) order by LastUpdatedOn desc limit 1;";
		
		try {
			
			conn = this.ds.getConnection();			
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			res.next();
			int msgId = res.getInt("MessageID");
			
			return msgId;
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}
		finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public boolean addMessage(int senderId,int receiverId,String msgcontent) throws SQLException {		
		
		String sql = "INSERT INTO messages (UserID,SenderID,MessageContent,CreatedOn,LastUpdatedOn) VALUES (?,?,?,?,?)";
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, receiverId);
			psmt.setInt(2, senderId);
			psmt.setString(3, msgcontent);
			psmt.setTimestamp(4, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.setTimestamp(5, new java.sql.Timestamp(System.currentTimeMillis()));
			psmt.executeUpdate();
			
			int notiType = 2;
			int msgId = getMsgId(receiverId);
			addNotification(receiverId,msgId,notiType);
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public ArrayList<Message> getMessages(int userId,int receiverId) throws SQLException {
		
		ArrayList<Message> tempMsg = new ArrayList<>();
		String sql = "select * from (\r\n" + 
				"Select MessageID ,UserID,senderid,messageContent,lastupdatedon,'Friend' as type from messages where userid = " + userId + " and senderid = " + receiverId + " \r\n" + 
				"union\r\n" + 
				"Select MessageID ,UserID,senderid,messageContent,lastupdatedon, 'User' as type from messages where userid = " + receiverId + " and senderid = " + userId + " \r\n" + 
				") a inner join user u on u.userid =a.userid inner join user r on r.userid = a.senderid order by LastUpdatedOn,MessageID;";
		
		try {
			conn = this.ds.getConnection();
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				int userID = res.getInt("UserID");
				int senderID = res.getInt("senderID");
				String msgContent = res.getString("messageContent").toString();
				String lastUpdatedOn = res.getDate("lastupdatedon").toString();
				String msgType = res.getString("type");
				
				tempMsg.add(new Message(userID, senderID, msgContent,lastUpdatedOn,msgType));
				}
			}
		finally{
				close(conn,smt,psmt,res);
			}
		return tempMsg;
		}
	
	public boolean notificationIsRead(int notiId) throws SQLException {		
		
		String sql = "UPDATE notifications SET IsRead = 1 WHERE NotificationID = " + notiId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);
			
			psmt.executeUpdate();
			
			return true;
		}finally {
			close(conn,smt,psmt,res);
		}
	}
	
	public ArrayList<User> suggestedFrnds(int userid) throws SQLException {
		
		ArrayList<User> suggestedFrnds = new ArrayList<>();
		String sql = "select UserID,concat(Firstname, ' ' ,lastname) as Name from user u where not exists (select * from frienddetails f where f.friendid = u.userid and userid = " + userid + " ) and userid <> " + userid;
		
		try {
			conn = this.ds.getConnection();
			smt = conn.createStatement();
			res = smt.executeQuery(sql);
			
			while(res.next()) {
				int frndId = res.getInt("UserID");
				String name = res.getString("Name").toString();
				suggestedFrnds.add(new User(frndId, name));
				}
			}
		finally{
				close(conn,smt,psmt,res);
			}
		return suggestedFrnds;
		}
	
	public boolean deleteAccount(int userId) throws SQLException {		
		
		String sql = "DELETE FROM user WHERE UserID = " + userId;
		
		try {
			conn = this.ds.getConnection();
			psmt = conn.prepareStatement(sql);			
			psmt.executeUpdate();
			
			return true;
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
