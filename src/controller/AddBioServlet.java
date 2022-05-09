package controller;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class AddBioServlet
 */
@WebServlet("/AddBioServlet")
public class AddBioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBioServlet() {
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
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		int userid = (int) session.getAttribute("userid");
		
		String dob = request.getParameter("dob");
		String nickname = request.getParameter("nickname");
		String language = request.getParameter("lang");
		String education = request.getParameter("edu");
		String occupation = request.getParameter("occu");
		String rStatus = request.getParameter("status");
		String website = request.getParameter("website");
		String bio = request.getParameter("bio");
		String country = request.getParameter("country");
		
		boolean status = false;
		try {
			status = userDb.aboutUser(userid, nickname, dob, language, education, occupation, rStatus, website, bio, country);
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(status)
		{
			out.println("Success");
			
			RequestDispatcher rd = request.getRequestDispatcher("./ProfileServlet");
			rd.forward(request, response);
		}
		else
		{
			out.println("error");
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
