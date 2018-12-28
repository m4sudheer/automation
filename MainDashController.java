package com.main.system.login.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.main.system.login.entity.DashboardBean;
import com.main.system.login.services.LoginService;
import com.main.system.login.services.MainDashService;

@Controller
@SessionAttributes("username")
public class MainDashController {
	@Autowired
	MainDashService dashService;

	@RequestMapping(value = "/main-dashboard", method = RequestMethod.GET)
	public String getMainDashBoard(@RequestParam String COB, ModelMap map) {
		List<DashboardBean> totallist = dashService.getDataFromDB(COB);
		map.put("lists", totallist);
		String username = (String) map.get("username");
		map.put("username", username);
		map.put("COB", COB);
		return "sub-dashboard";
	}

	@RequestMapping(value = "/sub-dashboard", method = RequestMethod.GET)
	public String getSubDashBoard(ModelMap map) {
		String username = (String) map.get("username");
		map.put("username", username);
		return "main-dashboard";
	}

}
