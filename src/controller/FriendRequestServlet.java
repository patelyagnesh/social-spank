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
 * Servlet implementation class FriendRequestServlet
 */
@WebServlet("/FriendRequestServlet")
public class FriendRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FriendRequestServlet() {
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
		
		int code = Integer.parseInt(request.getParameter("code"));
		int frndReqId = Integer.parseInt(request.getParameter("frndReqId"));
		
		boolean statusOne,statusTwo = false;
		if(code == 1)
		{
			try {
				int senderId = Integer.parseInt(request.getParameter("senderid"));
				int receiverId = (int) session.getAttribute("userid");
				
				statusOne = userDb.acceptFriendReq(senderId, receiverId);
				statusTwo = userDb.acceptFriendReq(receiverId,senderId);
				if(statusOne && statusTwo)
				{
					out.println("Success");
					userDb.deleteFrndReq(frndReqId);
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
			try {
				userDb.deleteFrndReq(frndReqId);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		RequestDispatcher rd = request.getRequestDispatcher("./ProfileServlet");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
