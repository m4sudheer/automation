package com.main.system.login.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.main.system.login.entity.DashboardBean;
import com.main.system.login.entity.SQLQueryDAO;

@Service
public class MainDashService {


	public List<DashboardBean> getDataFromDB(String COB) {

		
		return SQLQueryDAO.queryList(COB);

	}
}
