package com.yash.repo;

import com.yash.pojo.User;

public interface InterUserRepo {
	public boolean addUser(User user);
	public boolean isValidUser(String email ,String password) ;
	
}
