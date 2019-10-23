package com.hl.web;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hl.dao.AssessDao;
import com.hl.model.Assess;
import com.hl.model.PageBean;
import com.hl.util.DbUtil;
import com.hl.util.PropertiesUtil;
import com.hl.util.StringUtil;

public class AssessManagerServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;

	DbUtil dbUtil = new DbUtil();
	AssessDao assessDao=new AssessDao();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String assessManagerText = request.getParameter("assessManagerText");
		String searchType = request.getParameter("searchType");
		String page = request.getParameter("page");
		String action = request.getParameter("action");
		Assess assess = new Assess();
		
		if("assessPreSave".equals(action)) {
			assessPreSave(request, response);
			return;
		}else if("assessSave".equals(action)) {
			assessSave(request, response);
			return;
		}
		else if("list".equals(action)) {
			if(StringUtil.isNotEmpty(assessManagerText)) {
				if("manageName".equals(searchType)) {
					assess.setManagerName(assessManagerText);
				}
			}
			session.removeAttribute("s_userManagerText");
			session.removeAttribute("searchType");
			request.setAttribute("assessManagerText", assessManagerText);
			request.setAttribute("searchType", searchType);
		}
		if(StringUtil.isEmpty(page)) {
			page="1";
		}
		Connection con = null;
		PageBean pageBean = new PageBean(Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("pageSize")));
		request.setAttribute("pageSize", pageBean.getPageSize());
		request.setAttribute("page", pageBean.getPage());
		try {
			con=dbUtil.getCon();
			List<Assess> assessList = AssessDao.assessManageList(con, pageBean);
			int total=AssessDao.assessCount(con, assess);
			String pageCode = this.genPagation(total, Integer.parseInt(page), Integer.parseInt(PropertiesUtil.getValue("pageSize")));
			request.setAttribute("pageCode", pageCode);
			request.setAttribute("assessList", assessList);
			request.setAttribute("mainPage", "admin/assessManager.jsp");
			request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				dbUtil.closeCon(con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	/*指定置业顾问所有评价*/
	private void assessPreSave(HttpServletRequest request,
			 HttpServletResponse response)throws ServletException, IOException {
		String managerName = request.getParameter("managerName");
		if(StringUtil.isNotEmpty(managerName)) {
			Connection con = null;
			try {
				con = dbUtil.getCon();
				List<Assess> assessList=AssessDao.assessShow(con, managerName);
				request.setAttribute("assessList", assessList);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					dbUtil.closeCon(con);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} 
		request.setAttribute("mainPage", "admin/assessManager.jsp");
		request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
	}
	
	/*查看具体评价*/
	private void assessSave(HttpServletRequest request,
			 HttpServletResponse response)throws ServletException, IOException {
		String assessId = request.getParameter("assessId");
		if(StringUtil.isNotEmpty(assessId)) {
			Connection con = null;
			try {
				con = dbUtil.getCon();
				Assess assess=AssessDao.assess_single_Show(con, assessId);
				request.setAttribute("assess", assess);
				request.setAttribute("mainPage", "admin/assessSave.jsp");
				request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					dbUtil.closeCon(con);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} 
//		request.setAttribute("mainPage", "admin/assessSave.jsp");
//		request.getRequestDispatcher("mainAdmin.jsp").forward(request, response);
	}
	
	/*获取页码*/
	private String genPagation(int totalNum, int currentPage, int pageSize){
		int totalPage = totalNum%pageSize==0?totalNum/pageSize:totalNum/pageSize+1;
		StringBuffer pageCode = new StringBuffer();
		pageCode.append("<li><a href='userList?page=1'>首页</a></li>");
		if(currentPage==1) {
			pageCode.append("<li class='disabled'><a href='#'>上一页</a></li>");
		}else {
			pageCode.append("<li><a href='userList?page="+(currentPage-1)+"'>上一页</a></li>");
		}
		for(int i=currentPage-2;i<=currentPage+2;i++) {
			if(i<1||i>totalPage) {
				continue;
			}
			if(i==currentPage) {
				pageCode.append("<li class='active'><a href='#'>"+i+"</a></li>");
			} else {
				pageCode.append("<li><a href='userList?page="+i+"'>"+i+"</a></li>");
			}
		}
		if(currentPage==totalPage) {
			pageCode.append("<li class='disabled'><a href='#'>下一页</a></li>");
		} else {
			pageCode.append("<li><a href='userList?page="+(currentPage+1)+"'>下一页</a></li>");
		}
		pageCode.append("<li><a href='userList?page="+totalPage+"'>尾页</a></li>");
		return pageCode.toString();
	}
	
	
	
}
