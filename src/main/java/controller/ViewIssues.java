package controller;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import beans.Issue;
import beans.UserBean;
import dao.IssueDAO;

@WebServlet("/viewIssues")
public class ViewIssues extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        UserBean user = (UserBean)session.getAttribute("user");

        IssueDAO dao = new IssueDAO();

        List<Issue> issues = dao.getIssuesByDepartment(user.getUser_id());

        request.setAttribute("issues", issues);

        request.getRequestDispatcher("subReportedIssues.jsp").forward(request, response);
    }
}