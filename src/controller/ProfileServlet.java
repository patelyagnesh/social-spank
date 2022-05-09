package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import db.PostDB;
import db.UserDB;
import model.AboutUser;
import model.Post;
import model.User;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Resource(name="jdbc/socialspark")
    private DataSource ds;
    private UserDB userDb;
    private PostDB postDb;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		userDb = new UserDB(ds);
		postDb = new PostDB(ds);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
        int showId;
        
        if (request.getParameter("searchId") == null) 
        {
        	int userid = (int) session.getAttribute("userid");
        	showId = userid;
        }
        else 
        {
        	int searchid = (int)Integer.parseInt(request.getParameter("searchId"));
        	showId = searchid;
        }
        
		try {
			
			AboutUser userDetails = userDb.userInfo(showId);
			ArrayList<Post> userPosts = new ArrayList<>();
			ArrayList<Post> savedPosts = new ArrayList<>();
			ArrayList<User> friendDetails = new ArrayList<>();
			User userName = userDb.getUser(showId);
			ArrayList<User> suggestedFrnds = new ArrayList<>();
			
			userPosts = postDb.getUserPosts(showId);
			savedPosts = postDb.getSavedPosts(showId);
			friendDetails = userDb.getFriends(showId);
			suggestedFrnds = userDb.suggestedFrnds(showId);
			
			request.setAttribute("userdetails", userDetails);
			request.setAttribute("userPosts", userPosts);
			request.setAttribute("savedPosts", savedPosts);
			request.setAttribute("friendDetails", friendDetails);
			request.setAttribute("uName", userName);
			request.setAttribute("suggestedFrnds", suggestedFrnds);
			
			RequestDispatcher rd = request.getRequestDispatcher("Profile.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
