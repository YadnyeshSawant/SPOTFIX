package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import beans.Issue;
import dao.IssueDAO;

@WebServlet("/viewIssueDetails")
public class ViewIssueDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int issueId = Integer.parseInt(request.getParameter("issueId"));

		IssueDAO dao = new IssueDAO();

		System.out.println("Searching Issue:"+issueId);
		Issue issue = dao.getIssueById(issueId);

		request.setAttribute("issue", issue);

		request.getRequestDispatcher("subIssueReview.jsp").forward(request, response);
	}
}