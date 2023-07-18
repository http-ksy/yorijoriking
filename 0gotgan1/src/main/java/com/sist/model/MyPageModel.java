package com.sist.model;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.MemberVO;
import com.sist.vo.ReserveFoodVO;
import com.sist.vo.ReserveShareVO;
public class MyPageModel {
	@RequestMapping("my/mypage.do")
	public String my_page(HttpServletRequest request, HttpServletResponse response) {
	 	try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		MyDAO dao=MyDAO.newInstance();
		MemberVO vo=dao.myInfo(id);
	 	request.setAttribute("vo", vo);
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		 return "../jsp/main.jsp";
	}
	@RequestMapping("my/myinfo.do")
	public String my_page_info(HttpServletRequest request, HttpServletResponse response) {
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex) {}
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		MyDAO dao=MyDAO.newInstance();
		MemberVO vo=dao.myInfo(id);
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "../my/myinfo.jsp");
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		 return "../jsp/main.jsp";
	}
	@RequestMapping("my/my_update.do")
	public String my_page_update(HttpServletRequest request, HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}
		catch(Exception ex) {}
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		MyDAO dao=MyDAO.newInstance();
		MemberVO vo=dao.myInfo(id);
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "../my/my_update.jsp");
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		
		return "../jsp/main.jsp";
	}
	@RequestMapping("my/my_update_ok.do")
	public String my_update_ok(HttpServletRequest request, HttpServletResponse response)
	{
//		name=?,nickname=?,birthday=?,email=?,sex=?,post=?,addr1=?,addr2=?
		try
		{
			request.setCharacterEncoding("UTF-8");
		}
		catch(Exception ex) {}
		String id=request.getParameter("id");
		String nickname=request.getParameter("nickname");
		String email=request.getParameter("email");
		String post=request.getParameter("post");
		String addr1=request.getParameter("addr1");
		String addr2=request.getParameter("addr2");
		String phone=request.getParameter("phone");
		MemberVO vo=new MemberVO();
		vo.setId(id);
		vo.setNickname(nickname);
		vo.setEmail(email);
		vo.setPost(post);
		vo.setAddr1(addr1);
		vo.setAddr2(addr2);
		vo.setPhone(phone);
		
		MyDAO dao=MyDAO.newInstance();
		dao.myinfoUpdate(vo);
		
		return "redirect: ../my/myinfo.do";
	}
	
	@RequestMapping("my/my_delete_ok.do")
	public String user_delete(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		MyDAO dao=MyDAO.newInstance();
		dao.myinfoDelete(id);
		System.out.println(id);
		session.invalidate();
		return "redirect:../jsp/main.do";
	} // 자동으로 로그아웃까지 돼야하는데 안댐
	//예약
	@RequestMapping("my/mypage_reserve.do")
	public String mypage_reserve(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		String fid=(String)session.getAttribute("id");
		ReserveDAO dao=ReserveDAO.newInstance();
		List<ReserveFoodVO> list=dao.reserveFoodInfoData(fid);
		
		request.setAttribute("list", list);
		request.setAttribute("jsp", "../my/mypage_reserve.jsp");
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		return "../jsp/main.jsp";
	}
	@RequestMapping("my/mypage_reserve1.do")
	public String mypage_sreserve(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();
		String sid=(String)session.getAttribute("id");
		ReserveDAO dao=ReserveDAO.newInstance();
		List<ReserveShareVO> list=dao.reserveShareInfoData(sid);
		
		request.setAttribute("list", list);
		request.setAttribute("jsp", "../my/mypage_reserve1.jsp");
		request.setAttribute("main_jsp", "../my/mypage.jsp");
		return "../jsp/main.jsp";
	}
}
