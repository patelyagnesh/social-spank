package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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

/**
 * Servlet implementation class LikePostServlet
 */
@WebServlet("/LikePostServlet")
public class LikePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikePostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Resource(name="jdbc/socialspark")
    private DataSource ds;
    private PostDB postDb;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		postDb = new PostDB(ds);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		int likeCode = Integer.parseInt(request.getParameter("likeCode"));
		int postID = Integer.parseInt(request.getParameter("postId"));
		int userId = (int)session.getAttribute("userid");
		
		if(likeCode == 1)
		{
			boolean status = false;
			try {
				status = postDb.saveLike(postID, userId);
			}catch(Exception e){
				e.printStackTrace();
			}
			
			if(status)
			{
				out.println("Success");
				RequestDispatcher rd = request.getRequestDispatcher("./GetAllData");
				rd.forward(request, response);
			}
			else
			{
				out.println("error");
			}
		}
		else
		{
			try {
				postDb.removeLike(postID);
				RequestDispatcher rd = request.getRequestDispatcher("./GetAllData");
				rd.forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
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
