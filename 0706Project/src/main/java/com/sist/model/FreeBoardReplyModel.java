package com.sist.model;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

public class FreeBoardReplyModel {

	@RequestMapping("board/reply_insert.do")
	public String reply_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			
		} catch (Exception e) {}
		String bno = request.getParameter("bno");
		String msg = request.getParameter("msg");
		
		//세션
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String name = (String)session.getAttribute("name");
		
		FreeBoardReplyVO vo = new FreeBoardReplyVO();
		vo.setBno(Integer.parseInt(bno));		
		vo.setId(id);
		vo.setName(name);
		vo.setMsg(msg);
		
		
//		System.out.println(bno);
//		System.out.println(id);
//		System.out.println(name);
//		System.out.println(msg);
		
		//DAO
		FreeBoardReplyDAO dao = FreeBoardReplyDAO.newInstance();
		dao.replyInsert(vo);
		
		return "redirect:../board/board_detail.do?bno="+bno;
	}
	
	@RequestMapping("board/reply_delete.do")
	public String reply_delete(HttpServletRequest request, HttpServletResponse response) {
		String no = request.getParameter("no");
		String bno = request.getParameter("bno");
		
		//DAO에 삭제 요청
		FreeBoardReplyDAO dao = FreeBoardReplyDAO.newInstance();
		dao.replyDelete(Integer.parseInt(no));
		return "redirect:../board/board_detail.do?bno="+bno;
	}
	
	@RequestMapping("board/reply_update.do") //bno,no
	public String reply_update(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}
		String bno = request.getParameter("bno");		
		String no = request.getParameter("no");
		String msg = request.getParameter("msg");
		
		FreeBoardReplyDAO dao = FreeBoardReplyDAO.newInstance();
		dao.replyUpdate(Integer.parseInt(no), msg);
		return "redirect:../board/board_detail.do?bno="+bno;
	}
	
	//대댓글
	@RequestMapping("board/reply_reply_insert.do")
	public String reply_reply_insert(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception e) {}
		String bno = request.getParameter("bno");
		String pno = request.getParameter("pno");
		String msg = request.getParameter("msg");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String name = (String)session.getAttribute("name");
		
		FreeBoardReplyVO vo= new FreeBoardReplyVO();
		vo.setBno(Integer.parseInt(bno));
		vo.setMsg(msg);
		vo.setId(id);
		vo.setName(name);
		
		FreeBoardReplyDAO dao = FreeBoardReplyDAO.newInstance();
		dao.replyReplyInsert(Integer.parseInt(pno), vo);
		return "redirect:../board/board_detail.do?bno="+bno;
	}
}
