package com.yash.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.yash.pojo.User;
import com.yash.repo.*;

@WebServlet("/register")
public class Register extends HttpServlet {
	
	public void service(HttpServletRequest req , HttpServletResponse res) throws IOException {
		
		PrintWriter out = res.getWriter();
		String username=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		User user=new User(username,email,password);
 
	
		
		InterUserRepo iur = new ImpUserRepo();
		if(iur.addUser(user)) {
			 res.sendRedirect("login.jsp");
		}
		else {
			res.sendRedirect("register.jsp");
		}

		
	}

}
