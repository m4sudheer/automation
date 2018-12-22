package com.main.system.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.main.system.login.services.LoginService;

@Controller
@SessionAttributes("username")
public class LoginController {
	@Autowired
	LoginService loginService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLogin(ModelMap map) {
		return "login";
	}


	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String postLogin(@RequestParam String username, @RequestParam String password, ModelMap map) {

		if(loginService.authentication(username, password)==true) {
			map.put("username", username);
			return "main-dashboard";
		}
		else {
			map.put("error_msg","* invalid credentials");
			return "login";
		}
	}

}
