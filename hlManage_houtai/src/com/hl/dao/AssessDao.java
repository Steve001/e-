package com.hl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hl.model.PageBean;
import com.hl.model.Assess;
import com.hl.util.StringUtil;

public class AssessDao {
	
	/* 显示所有评价信息 */
	public static List<Assess> assessManageList(Connection con, PageBean pageBean) throws SQLException{
		List<Assess> assess_all=new ArrayList<Assess>();
		StringBuffer sb=new StringBuffer("select * from assess where 1=1");
		if(pageBean != null) {
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getPageSize());
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString());
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Assess resAssess=new Assess();
			resAssess.setAssessId(rs.getInt("assessId"));
			resAssess.setUserPhone(rs.getNString("userPhone"));
			resAssess.setManagerName(rs.getNString("managerName"));
			resAssess.setNum1(rs.getInt("num1"));
			resAssess.setNum2(rs.getInt("num2"));
			resAssess.setAssess1(rs.getString("assess1"));
			resAssess.setAssess2(rs.getString("assess2"));
			resAssess.setAssessOthers(rs.getString("assessOthers"));
			resAssess.setcreateTime(rs.getString("createTime"));
			assess_all.add(resAssess);
		}
		return assess_all;
	}
	
	
	/*显示指定置业顾问评价信息*/
	public static List<Assess> assessShow(Connection con, String managerName) throws SQLException {
		String sql = "select * from assess where managerName=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, managerName);
		ResultSet rs=pstmt.executeQuery();
		List<Assess> assessList=new ArrayList();
		while (rs.next()) {
			Assess resAssess=new Assess();
			resAssess.setAssessId(rs.getInt("assessId"));
			resAssess.setUserPhone(rs.getNString("userPhone"));
			resAssess.setManagerName(rs.getNString("managerName"));
			resAssess.setNum1(rs.getInt("num1"));
			resAssess.setNum2(rs.getInt("num2"));
			resAssess.setAssess1(rs.getString("assess1"));
			resAssess.setAssess2(rs.getString("assess2"));
			resAssess.setAssessOthers(rs.getString("assessOthers"));
			resAssess.setcreateTime(rs.getString("createTime"));
			assessList.add(resAssess);
		}
		return assessList;
	}
	
	/*显示具体评价信息*/
	public static Assess assess_single_Show(Connection con, String assessId) throws SQLException {
		String sql = "select * from assess where assessId=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, assessId);
		ResultSet rs=pstmt.executeQuery();
		System.out.println(rs);
		Assess resAssess=new Assess();
		while (rs.next()) {
			resAssess.setAssessId(rs.getInt("assessId"));
			resAssess.setUserPhone(rs.getNString("userPhone"));
			resAssess.setManagerName(rs.getNString("managerName"));
			resAssess.setNum1(rs.getInt("num1"));
			resAssess.setNum2(rs.getInt("num2"));
			resAssess.setAssess1(rs.getString("assess1"));
			resAssess.setAssess2(rs.getString("assess2"));
			resAssess.setAssessOthers(rs.getString("assessOthers"));
			resAssess.setcreateTime(rs.getString("createTime"));
		}
		return resAssess;
	}
	
	/*获取评价总数*/
	public static int assessCount(Connection con, Assess assess) throws SQLException {
		StringBuffer sb=new StringBuffer("select count(*) as total  from assess where 1=1");
		if(StringUtil.isNotEmpty(assess.getManagerName())) {
			sb.append(" and user_name= '"+assess.getManagerName()+"'");
		}
		PreparedStatement pstmt = con.prepareStatement(sb.toString());
		ResultSet rs = pstmt.executeQuery();
		if(rs.next()) {
			return rs.getInt("total");
		} else {
			return 0;
		}
	}
	
}
