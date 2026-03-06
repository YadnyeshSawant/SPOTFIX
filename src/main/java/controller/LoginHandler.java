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

		if (user.getUser_type().equals("citizen")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("citizenDashboard.jsp");

			// enum('citizen','department_coordinator','sub_branch_coordinator','super_admin')
		} else if (user.getUser_type().equals("department_coordinator")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("deptCoordinator.jsp");

		} else if (user.getUser_type().equals("sub_branch_coordinator")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			request.getRequestDispatcher("subDeptCordinator.jsp").forward(request, response);

		} else if (user.getUser_type().equals("super_admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			response.sendRedirect("superAdmin.jsp");

		} else {
			response.getWriter().print("Invalid Username or Password");

		}
	}

}