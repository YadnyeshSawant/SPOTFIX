package beans;

import java.util.Date;

public class Issue {

    private int issue_id;
    private int user_id;
    private String title;
    private String issue_description;
    private String suggestions;
    private int department_id;
    private String department_name;
    private String priority;
    private String issue_status;
    private Date submitted_date;
    private Date date_completed;
    private Date estimate_complete_time;
    private String locality;
    private String pincode;
    private String taluka;
    private String district;

    // Default Constructor
    public Issue() {
    }

    // Getters and Setters

    public int getIssue_id() {
        return issue_id;
    }

    public void setIssue_id(int issue_id) {
        this.issue_id = issue_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getIssue_description() {
        return issue_description;
    }

    public void setIssue_description(String issue_description) {
        this.issue_description = issue_description;
    }

    public String getSuggestions() {
        return suggestions;
    }

    public void setSuggestions(String suggestions) {
        this.suggestions = suggestions;
    }

    public int getDepartment_id() {
        return department_id;
    }

    public void setDepartment_id(int department_id) {
        this.department_id = department_id;
    }

    public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }

    public String getIssue_status() {
        return issue_status;
    }

    public void setIssue_status(String issue_status) {
        this.issue_status = issue_status;
    }

    public Date getSubmitted_date() {
        return submitted_date;
    }

    public void setSubmitted_date(Date submitted_date) {
        this.submitted_date = submitted_date;
    }

    public Date getDate_completed() {
        return date_completed;
    }

    public void setDate_completed(Date date_completed) {
        this.date_completed = date_completed;
    }

    public Date getEstimate_complete_time() {
        return estimate_complete_time;
    }

    public void setEstimate_complete_time(Date estimate_complete_time) {
        this.estimate_complete_time = estimate_complete_time;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getTaluka() {
        return taluka;
    }

    public void setTaluka(String taluka) {
        this.taluka = taluka;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

	
}