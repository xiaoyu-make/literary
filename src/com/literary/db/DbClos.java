package com.literary.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

public class DbClos {	
	public static void closDb(PreparedStatement pdst,Connection conn,ResultSet rslt){
		if(pdst!=null){
			try {
				pdst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(rslt!=null){
			try {
				rslt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public static void closDb(PreparedStatement pdst,Connection conn){
		if(pdst!=null){
			try {
				pdst.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
