package com.yash.repo;

import java.io.PrintWriter;
import java.sql.*;
import com.yash.utils.*;

import com.yash.pojo.User;

public class ImpUserRepo implements InterUserRepo  {
	DBConnection jdbcUtils;
	
	public ImpUserRepo() {
		jdbcUtils=new DBConnection();
	}
//	

	@Override
	public boolean addUser(User user) {
		System.out.print(user.getPassword());
		
		String q1="insert into user (uname,uemail,upassword) values(? , ? , ?) ";
		PreparedStatement pst=jdbcUtils.createPreparedStatement(q1);

		try {
			pst.setString(1,user.getUsername());
			pst.setString(2,user.getEmail());
			pst.setString(3,user.getPassword());
			pst.executeUpdate();
					
//			return rowaffected >0;	
//			return true;
		}
		catch (SQLException e){
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	@Override
	public boolean isValidUser(String email, String password) {
		
		String q2="select * from user where uemail= ? and upassword =?";
		PreparedStatement pst=jdbcUtils.createPreparedStatement(q2);
		try {
			pst.setString(1,email);
			pst.setString(2, password);
			 ResultSet resultSet = pst.executeQuery();

	            return resultSet.next();
			
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
			
		}
		
	}

}
