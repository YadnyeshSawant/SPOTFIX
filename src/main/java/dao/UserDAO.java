package dao;

import java.sql.*;

import beans.UserBean;
import helper.DBConnection;

public class UserDAO {

    public UserBean validateUser(String uname, String upass) {

     
    	UserBean ub = new UserBean();

        try {
        	
        	Connection con = DBConnection.getConnection();
        	
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM user WHERE email=? AND user_password=?"
            );

            ps.setString(1, uname);
            ps.setString(2, upass);
            

            ResultSet rs = ps.executeQuery();
//          user_id, email, contact, full_name, user_password, address, district, pincode, user_type
            if (rs.next()) {
             ub.setUser_id(rs.getInt("user_id"));
             ub.setEmail(rs.getString("email"));
             ub.setContact(rs.getLong("contact"));
             ub.setFull_name(rs.getString("Full_Name"));
             ub.setUser_password(rs.getString("user_password"));
             ub.setAddress(rs.getString("address"));
             ub.setDistrict(rs.getString("district"));
             ub.setPincode(rs.getInt("pincode"));
             ub.setUser_type(rs.getString("user_type"));
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ub; // null = invalid login
    }
}