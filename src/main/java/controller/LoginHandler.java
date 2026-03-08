package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import beans.UserBean;
import dao.UserDAO;

/**
 * Servlet implementation class LoginHandler
 */
@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginHandler() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.sendRedirect("Login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String upass = request.getParameter("upass");

		UserDAO ud = new UserDAO();
		UserBean user = ud.validateUser(uname, upass);

		if(user == null){
		    response.getWriter().print("Invalid Username or Password");
		    return;
		}

		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		System.out.println(user.getUser_id());
		if (user.getUser_type().equals("citizen")) {

		    request.getRequestDispatcher("citizenDashboard.jsp").forward(request, response);

		} else if (user.getUser_type().equals("department_coordinator")) {

		    response.sendRedirect("deptCoordinatorDashboard.jsp");

		} else if (user.getUser_type().equals("sub_branch_coordinator")) {

		    request.getRequestDispatcher("subDeptCordinatorDashboard.jsp").forward(request, response);

		} else if (user.getUser_type().equals("super_admin")) {

		    request.getRequestDispatcher("superAdmin.jsp").forward(request, response);
		}
	}

}