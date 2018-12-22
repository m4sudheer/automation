package com.main.system.login.services;

import org.springframework.stereotype.Service;

@Service
public class LoginService {

	public boolean authentication(String username, String password) {
		
		return username.equalsIgnoreCase("sudheer") && password.equalsIgnoreCase("sudheer");
	}
}
