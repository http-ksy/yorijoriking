package com.sist.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.dao.JjimDAO;
import com.sist.vo.JjimVO;

public class JjimModel {
	static String url [] = {"", "list/recipeDetail.do?rdno=", "", "", ""};
	
	@RequestMapping("jjim/insert.do")
	public void jjim_insert(HttpServletRequest request,HttpServletResponse response) {
		String cno = request.getParameter("jno");
		String type = request.getParameter("types");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		JjimVO vo = new JjimVO();
		System.out.println("insert.do");
		// no, type,id , cno
		vo.setType(Integer.parseInt(type));
		vo.setId(id);
		vo.setCno(Integer.parseInt(cno));
		JjimDAO dao = JjimDAO.newInstance();
		dao.JjimInsert(vo);
//		return "redirect:../"+url[Integer.parseInt(type)]+cno;
	}
	
	@RequestMapping("jjim/jjim_delete.do")
	public void jjim_delete(HttpServletRequest request,HttpServletResponse response) {
//		String cno = request.getParameter("jno");
//		String type = request.getParameter("type");
		String no = request.getParameter("no");
		JjimDAO dao = JjimDAO.newInstance();
		dao.JjimCancel(Integer.parseInt(no));
//		return "redirect:../"+url[Integer.parseInt(type)]+cno;
	}
	@RequestMapping("jjim/jjim_list.do")
	public String jjim_list(HttpServletRequest request,HttpServletResponse response)
	{
		String type=request.getParameter("type");
		if(type==null) type="1";
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		List<JjimVO> list=new ArrayList<>();
		JjimDAO dao=JjimDAO.newInstance();
		list=dao.jjimListData(id, Integer.parseInt(type));
		request.setAttribute("list", list);
		request.setAttribute("jsp","../my/jjim_list.jsp");
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		return "../jsp/main.jsp";
	}
}
