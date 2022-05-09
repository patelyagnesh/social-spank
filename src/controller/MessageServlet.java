package controller;

import java.io.IOException;
import java.sql.SQLException;
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

import db.UserDB;
import model.AboutUser;
import model.Message;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/MessageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageServlet() {
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
		
		try {
			int senderId = (int) session.getAttribute("userid");
			int receiverId = Integer.parseInt(request.getParameter("receiverId"));
			
			ArrayList<Message> msgs = new ArrayList<>();
			msgs = userDb.getMessages(senderId, receiverId);
			request.setAttribute("msgs", msgs);
			
			AboutUser frndInfo = userDb.frndInfo(receiverId);
			request.setAttribute("frndInfo", frndInfo);
		
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(Integer.parseInt(request.getParameter("isRead")) == 1)
		{
			int notiID = Integer.parseInt(request.getParameter("notiId"));
			try {
				userDb.notificationIsRead(notiID);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("Messages.jsp");
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
