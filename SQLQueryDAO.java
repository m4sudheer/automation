package com.main.system.login.entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SQLQueryDAO {

	// JDBC driver name and database URL
	   static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://db4free.net:3306/automation99?autoReconnect=true&useSSL=false";

	   //  Database credentials
	   static final String USER = "m10sudheer";
	   static final String PASS = "Nani@12345";
	public static List<DashboardBean> queryList(String COB) {
		   Connection conn = null;
		   Statement stmt = null;
		   List<DashboardBean> dataList = new ArrayList<DashboardBean>();
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName(JDBC_DRIVER);

		      //STEP 3: Open a connection
		      System.out.println("Connecting to a selected database...");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      System.out.println("Connected database successfully...");
		      
		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();

		      String sql = "SELECT * FROM Dashboard where COB_name like '%"+COB+"'";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		         //Retrieve by column name
		    	  DashboardBean bean = new DashboardBean();
		         int id  = rs.getInt("id");
		         String COB_name = rs.getString("COB_name");
		         String app_name = rs.getString("app_name");
		         boolean app_url = rs.getBoolean("app_url");
		         bean.setId(id);
                 bean.setCOB_name(COB_name);
                 bean.setApp_name(app_name);
                 bean.setApp_url(app_url);
                 dataList.add(bean);
		      }
		      rs.close();
		     
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            conn.close();
		      }catch(SQLException se){
		      }// do nothing
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   return dataList;
	}
}
