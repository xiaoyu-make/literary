package com.literary.web.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.literary.db.DbConn;
import com.literary.entity.DailySentence;
import com.literary.web.dao.AboutMeDao;

public class AboutMeDaoImpl implements AboutMeDao{
	    DailySentence dailySentence = null;
		PreparedStatement pdst = null;
		ResultSet rs = null;
		Connection conn = null;
	public DailySentence getDailySentence(){		
		String sql= "select * from daily_sentence order by date desc limit 1";
		conn = DbConn.getDbConn();
		try {
			pdst = conn.prepareStatement(sql);
			rs = pdst.executeQuery();
			while(rs.next()){
				int id = rs.getInt(1);
				String daily_sentence = rs.getString(2);
				Date date = rs.getDate(3);
				dailySentence = new DailySentence(id,daily_sentence,date);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbConn.closeConnAll(conn, pdst, rs);
		}		
		return dailySentence;		
	}
	@Override
	public Boolean insertDailySentence(String textarea_daily) {
		Date date = new Date();
		java.sql.Timestamp sqlDate123=new java.sql.Timestamp(date.getTime());		
		String sql = "insert into daily_sentence (daily_sentence,date) value (?,?)";
		conn = DbConn.getDbConn();
	    int i = 0;
		try {
			pdst = conn.prepareStatement(sql);
			pdst.setString(1, textarea_daily);
			pdst.setTimestamp(2, sqlDate123 );
	        i = pdst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DbConn.closeConn(conn, pdst);
		}
		return i > 0 ? true : false;
	}
	@Override
	public Boolean editDailySentence(String textarea_daily,String id) {
		Date date = new Date();
		java.sql.Timestamp sqlDate=new java.sql.Timestamp(date.getTime());		
		conn = DbConn.getDbConn();
		int n = 0;
		Integer intId = Integer.valueOf(id);
		try {
			String sql = "update daily_sentence set daily_sentence=?,date=? where id=?";
			pdst = conn.prepareStatement(sql);
			pdst.setString(1, textarea_daily);
			pdst.setTimestamp(2, sqlDate);
			pdst.setInt(3, intId);
            n = pdst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DbConn.closeConn(conn, pdst);
		}
		return n > 0 ? true : false;
	}
	@Override
	public Boolean deleteDailySentence(String[] id) {
		int i = 0;
		conn = DbConn.getDbConn();
		String sql = "delete from daily_sentence where id=?";
		try {
			pdst = conn.prepareStatement(sql);
			for (int j =0;j<id.length;j++) {
				pdst.setString(1, id[j]);
				int executeUpdate = pdst.executeUpdate();
				if(executeUpdate!=1)
					return false;
			}
			i = 1;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DbConn.closeConn(conn, pdst);
		}
		return i > 0 ? true : false;
	}
	/**
	 * 查找全部
	 * @return
	 */
	public List<DailySentence> getAllDailySentence(){		
		String sql= "select * from daily_sentence order by date desc";
		List<DailySentence> list = new ArrayList<>();
		conn = DbConn.getDbConn();
		try {
			pdst = conn.prepareStatement(sql);
			rs = pdst.executeQuery();
			while(rs.next()){
				int id = rs.getInt(1);
				String daily_sentence = rs.getString(2);
				Timestamp timestamp = rs.getTimestamp(3);
				dailySentence = new DailySentence(id,daily_sentence,timestamp);
				list.add(dailySentence);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DbConn.closeConnAll(conn, pdst, rs);
		}		
		return list;		
	}
	
}
