package com.main.system.login.entity;

public class DashboardBean {
	
	private int id;
	private String COB_name;
	private String app_name;
	private boolean app_url;
	private boolean app_server_health;
	private boolean app_running_status;
	private boolean app_db_connection;
	private boolean app_cache_clear;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCOB_name() {
		return COB_name;
	}
	public void setCOB_name(String cOB_name) {
		COB_name = cOB_name;
	}
	public String getApp_name() {
		return app_name;
	}
	public void setApp_name(String app_name) {
		this.app_name = app_name;
	}
	public boolean isApp_url() {
		return app_url;
	}
	public void setApp_url(boolean app_url) {
		this.app_url = app_url;
	}
	public boolean isApp_server_health() {
		return app_server_health;
	}
	public void setApp_server_health(boolean app_server_health) {
		this.app_server_health = app_server_health;
	}
	public boolean isApp_running_status() {
		return app_running_status;
	}
	public void setApp_running_status(boolean app_running_status) {
		this.app_running_status = app_running_status;
	}
	public boolean isApp_db_connection() {
		return app_db_connection;
	}
	public void setApp_db_connection(boolean app_db_connection) {
		this.app_db_connection = app_db_connection;
	}
	public boolean isApp_cache_clear() {
		return app_cache_clear;
	}
	public void setApp_cache_clear(boolean app_cache_clear) {
		this.app_cache_clear = app_cache_clear;
	}
	@Override
	public String toString() {
		return "DashboardDAO [id=" + id + ", COB_name=" + COB_name + ", app_name=" + app_name + ", app_url=" + app_url
				+ ", app_server_health=" + app_server_health + ", app_running_status=" + app_running_status
				+ ", app_db_connection=" + app_db_connection + ", app_cache_clear=" + app_cache_clear + "]";
	}

}
