package com.sist.model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.RequestMapping;
import com.sist.dao.ShareDAO;
import com.sist.vo.RecipeVO;
import com.sist.vo.ShareVO;

public class ShareModel {
	@RequestMapping("share/shareList.do")
	public String share_list(HttpServletRequest request,HttpServletResponse response)
  {
		String page = request.getParameter("page");
		
		 final int BLOCK=10;
		 if(page==null)
			 page="1";
		 
		 ShareDAO sdao=ShareDAO.newInstance();
		 int curpage=Integer.parseInt(page);
		 int startpage=((curpage-1)/BLOCK*BLOCK)+1;
		 int endpage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		 int totalpage=sdao.shareTotalPage();
		 if(endpage>totalpage)
				endpage=totalpage; 
		 List<ShareVO> slist=sdao.shareListData(curpage);
		 request.setAttribute("curpage", curpage);
		 request.setAttribute("totalpage", totalpage);
		 request.setAttribute("startpage", startpage);
		 request.setAttribute("endpage", endpage);
		 request.setAttribute("slist", slist);
	    request.setAttribute("main_jsp", "../share/shareList.jsp");
	  return "../jsp/main.jsp";
  }
	@RequestMapping("share/shareDetail_before.do")
	public String share_detail_before(HttpServletRequest request,HttpServletResponse response)
	{
		String skdno=request.getParameter("skdno");
		Cookie cookie=new Cookie("share_"+skdno, skdno);
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		response.addCookie(cookie);
		return "redirect:../share/shareDetail.do?skdno="+skdno;
	}
	@RequestMapping("share/shareDetail.do")
	public String share_Detail(HttpServletRequest request,HttpServletResponse response)
	{
		  ShareDAO sdao=ShareDAO.newInstance();
		  String skdno=request.getParameter("skdno");
		  ShareVO svo=sdao.shareDetailData(Integer.parseInt(skdno));
		  request.setAttribute("svo", svo);
		  Cookie[] cookies=request.getCookies();
		  List<ShareVO> clist=new ArrayList<>();
		  if(cookies!=null)
		  {
			  for(int i=cookies.length-1;i>=0;i--)
			  {
				  if(cookies[i].getName().startsWith("share"))
				  {
				  String skdno2=cookies[i].getValue();
				  ShareVO vo=sdao.shareDetailData(Integer.parseInt(skdno2));
				  clist.add(vo);
				  }
			  }
				  
		  }
		request.setAttribute("clist", clist);
		request.setAttribute("skdno", skdno);
		request.setAttribute("main_jsp", "../share/shareDetail.jsp");
		  return "../jsp/main.jsp";
	}
}