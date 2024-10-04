package com.yash.controller;

import java.io.*;
import com.yash.repo.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.yash.repo.InterUserRepo;

@WebServlet("/login")
public class Login extends HttpServlet {
	
	public  void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		
		String name = req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		InterUserRepo iur = new ImpUserRepo();
		if(iur.isValidUser(email,password)) {

			res.sendRedirect("welcome.jsp");
		}
		else {
			 res.sendRedirect("register.jsp");
		}
			
	}

} 