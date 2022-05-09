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
import model.Post;
import model.User;

/**
 * Servlet implementation class GetAllData
 */
@WebServlet("/GetAllData")
public class GetAllData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllData() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Resource(name="jdbc/socialspark")
    private DataSource ds;
    private PostDB postDb;
    private UserDB userDb;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		postDb = new PostDB(ds);
		userDb = new UserDB(ds);
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		int userId = (int) session.getAttribute("userid");
		
		try {
			ArrayList<Post> posts = new ArrayList<>();
			posts = postDb.getAllPosts();
			
			request.setAttribute("posts", posts);
			
			ArrayList<User> suggestedFrnds = new ArrayList<>();
			suggestedFrnds = userDb.suggestedFrnds(userId);
			
			request.setAttribute("suggestedFrnds", suggestedFrnds);
			
			RequestDispatcher rd = request.getRequestDispatcher("NewsFeed.jsp");
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
