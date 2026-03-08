package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import beans.Issue;
import dao.IssueDAO;

@WebServlet("/RegisterIssue")
public class RegisterIssue extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String suggestion = request.getParameter("suggestion");
			int department = Integer.parseInt(request.getParameter("department"));

			String district = request.getParameter("district");
			String taluka = request.getParameter("taluka");
			String pincode = request.getParameter("pincode");
			String location = request.getParameter("locationDescription");

			// Create Bean
			Issue issue = new Issue();

			issue.setTitle(title);
			issue.setIssue_description(description);
			issue.setSuggestions(suggestion);
			issue.setDepartment_id(department);

			issue.setDistrict(district);
			issue.setTaluka(taluka);
			issue.setPincode(pincode);
			issue.setLocality(location);

			// Default values
			issue.setPriority("low");
			issue.setIssue_status("pending");

			// Call DAO
			IssueDAO dao = new IssueDAO();

			boolean status = dao.registerIssue(issue);

			if (status) {
				response.sendRedirect("citizenSuccess.jsp");
			} else {
				response.sendRedirect("error.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}