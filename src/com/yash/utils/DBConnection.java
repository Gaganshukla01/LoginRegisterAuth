package com.yash.utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBConnection {
    static final String URL = "jdbc:mysql://localhost:3306/userlogin";
    static final String USER = "root";
    static final String PASSWORD = "Password@2024";

    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch
        (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    private Connection con = null;

    public Connection openConnection() {
        try {
            if (con == null) {
                con = DriverManager.getConnection(URL, USER, PASSWORD);
            }
            if (con.isClosed()) {
                con = DriverManager.getConnection(URL, USER, PASSWORD);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return con;
    }

    public PreparedStatement
    createPreparedStatement(String sql) {
        try {
            return openConnection().prepareStatement(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw new RuntimeException(ex.getMessage());
        }
    }
    
    

    public void closePreparedStatement(PreparedStatement pstmt) {
        try {
            pstmt.close();
        } catch (SQLException ex) {
        }
    }
    
}


//package com.yash.utils;
//
//import java.sql.*;
//
//public class DBConnection  {
//	
//	
//	static Connection con;
//	public static Connection createcon() {
//		try {
//			
//			Class.forName("com.mysql.jdbc.Driver");
//			
//			String url = "jdbc:mysql://localhost:3306/userlogin";
//		    String user = "root";
//		    String password = "Password@2024";
//		     
////		     loader
////		     Connection con=DriverManager.getConnection(url,user,password);
//		
//		     
//		     if(con==null) {
//		    	 Connection con=DriverManager.getConnection(url,user,password);	
//		     }
//		     if(con.isClosed()) {
//		    	 Connection con=DriverManager.getConnection(url,user,password);	
//		     }
//		     System.out.println("Succesfull");
//		     
//		}
//		
//		catch (Exception e){
//			e.printStackTrace();	
//		}
//		
//		return con;
//	}
//
//}
