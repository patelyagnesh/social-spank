package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import db.UserDB;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		String tempEmail = request.getParameter("email");
		String tempPass = request.getParameter("pass");
	
		try {
			int userID = userDb.loginUser(tempEmail, tempPass);
			
			if(userID == -1) {
				out.println("error");
			}else {
					User u = userDb.getUser(userID);
					if(u == null) {
						out.println("null");
					}else {
						session.setAttribute("user", u.getName());
						session.setAttribute("userid", u.getUserID());
						
						boolean remember = request.getParameter("remember") != null;
						
						if(remember)
						{
							Cookie c1 = new Cookie("Email",tempEmail);
							c1.setMaxAge(60*60*24*365);
							response.addCookie(c1);
							
							out.println(c1.getValue());
						}
						
						RequestDispatcher rd = request.getRequestDispatcher("/GetAllData");
						rd.forward(request, response);
					}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
