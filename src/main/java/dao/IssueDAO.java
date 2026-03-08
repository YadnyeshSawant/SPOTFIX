package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.Issue;
import helper.DBConnection;

public class IssueDAO {

	public boolean registerIssue(Issue issue) {

		boolean status = false;

		try {

			Connection con = DBConnection.getConnection();

			String query = "INSERT INTO issues(title, issue_description, suggestions, department_id, priority, issue_status, locality, pincode, taluka, district, submitted_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW())";

			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, issue.getTitle());
			ps.setString(2, issue.getIssue_description());
			ps.setString(3, issue.getSuggestions());
			ps.setInt(4, issue.getDepartment_id());
			ps.setString(5, issue.getPriority());
			ps.setString(6, issue.getIssue_status());
			ps.setString(7, issue.getLocality());
			ps.setString(8, issue.getPincode());
			ps.setString(9, issue.getTaluka());
			ps.setString(10, issue.getDistrict());

			int rows = ps.executeUpdate();

			if (rows > 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
	
	
	public Issue getIssueById(int issueId) {

	    Issue issue = null;

	    try {

	        Connection con = DBConnection.getConnection();

	        String query = "SELECT i.*, d.department_name " +
                    "FROM issues i " +
                    "JOIN departments d " +
                    "ON i.department_id = d.department_id " +
                    "WHERE i.issue_id=?";

	        PreparedStatement ps = con.prepareStatement(query);
	        ps.setInt(1, issueId);

	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {

	            issue = new Issue();

	            issue.setIssue_id(rs.getInt("issue_id"));
	            issue.setTitle(rs.getString("title"));
	            issue.setIssue_description(rs.getString("issue_description"));
	            issue.setSuggestions(rs.getString("suggestions"));
	            issue.setPriority(rs.getString("priority"));
	            issue.setIssue_status(rs.getString("issue_status"));
	            issue.setLocality(rs.getString("locality"));
	            issue.setTaluka(rs.getString("taluka"));
	            issue.setDistrict(rs.getString("district"));
	            issue.setPincode(rs.getString("pincode"));
	            issue.setDepartment_name(rs.getString("department_name"));

	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return issue;
	}

	public List<Issue> getIssuesByDepartment(int userId) {

        List<Issue> issues = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String query = "SELECT * FROM issues WHERE department_id = "
                    + "(SELECT department_id FROM sub_department_coordinators WHERE user_id = ?)";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Issue issue = new Issue();

                issue.setIssue_id(rs.getInt("issue_id"));
                issue.setTitle(rs.getString("title"));
                issue.setSubmitted_date(rs.getDate("submitted_date"));
                issue.setIssue_description(rs.getString("issue_description"));
                issue.setPriority(rs.getString("priority"));
                issue.setIssue_status(rs.getString("issue_status"));
                issue.setLocality(rs.getString("locality"));
                issue.setDistrict(rs.getString("district"));

                issues.add(issue);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return issues;
    }
}