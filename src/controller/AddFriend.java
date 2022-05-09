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

import db.UserDB;

/**
 * Servlet implementation class AddFriend
 */
@WebServlet("/AddFriend")
public class AddFriend extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFriend() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Resource(name="jdbc/socialspark")
    private DataSource ds;
    private UserDB userDb;

	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		userDb = new UserDB(ds);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		int reqType = Integer.parseInt(request.getParameter("reqType"));
			
		if(reqType == 1)
		{
			boolean status = false;
			int senderId = (int) session.getAttribute("userid");
			int receiverId = Integer.parseInt(request.getParameter("searchId"));
			try {
				status = userDb.addFriend(senderId, receiverId);
				if(status)
				{
					out.println("Success");
					RequestDispatcher rd = request.getRequestDispatcher("/GetAllData");
					rd.forward(request, response);
				}
				else
				{
					out.println("error");
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		else 
		{
			boolean statusOne,statusTwo = false;
			
			int userId = Integer.parseInt(request.getParameter("userId"));
			int frndId = Integer.parseInt(request.getParameter("frndId"));
			
			try {
				statusOne = userDb.removeFriend(userId, frndId);
				statusTwo = userDb.removeFriend(frndId, userId);
				
				if(statusOne && statusTwo)
				{
					out.println("Success");
					userDb.removeFriend(userId, frndId);
					userDb.removeFriend(frndId, userId);
					
					RequestDispatcher rd = request.getRequestDispatcher("/ProfileServlet");
					rd.forward(request, response);
				}
				else
				{
					out.println("error");
				}
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
