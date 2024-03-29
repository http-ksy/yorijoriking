package com.sist.model;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.RequestMapping;
import com.sist.vo.*;
import com.sist.dao.ReserveDAO;

public class ReserveModel {
	 @RequestMapping("food/diary.do")
	 public String diaryData(HttpServletRequest request,HttpServletResponse response)
	 {
		 	String fdno=request.getParameter("fdno");
			String strYear=request.getParameter("year");
			String strMonth=request.getParameter("month");
			Date date=new Date();
			SimpleDateFormat sdf=new SimpleDateFormat("yyyy-M-d");
			String today=sdf.format(date);
			StringTokenizer st=new StringTokenizer(today,"-");
			String sy=st.nextToken();
			String sm=st.nextToken();
			String sd=st.nextToken();

			if(strYear==null)
				strYear=sy;
			if(strMonth==null)
				strMonth=sm;

			int year=Integer.parseInt(strYear);
			int month=Integer.parseInt(strMonth);
			int day=Integer.parseInt(sd);
			// 요일
			String[] strWeek={"일","월","화","수","목","금","토"};

			Calendar cal=Calendar.getInstance();
			cal.set(Calendar.YEAR,year);
			cal.set(Calendar.MONTH,month-1);
			cal.set(Calendar.DATE,1);  // 1일자

			int week=cal.get(Calendar.DAY_OF_WEEK);// 요일 구하기 
			int lastday=cal.getMaximum(Calendar.DATE); // 각달의 마지막 일 

			week=week-1;
			
			request.setAttribute("year", year);
			request.setAttribute("month", month);
			request.setAttribute("day", day);
			request.setAttribute("week", week);
			request.setAttribute("lastday", lastday);
			request.setAttribute("strWeek", strWeek);
			
			// 오라클 데이터 읽기 
			int[] resday=new int[32];
			ReserveDAO dao=ReserveDAO.newInstance();
			String r=dao.foodReserveDay(Integer.parseInt(fdno));
			st=new StringTokenizer(r,",");
			while(st.hasMoreTokens())
			{
				int a=Integer.parseInt(st.nextToken());
				if(a>=day)
				{
					resday[a]=1; //1 예약가능 0 예약불가능
				}
			}
			request.setAttribute("resday", resday);
		 return "../food/diary.jsp";
	 }
	 @RequestMapping("food/inwon.do")
	 public String reserve_inwon(HttpServletRequest request,HttpServletResponse response)
	 {
		 return "../food/inwon.jsp";
	 }
	 @RequestMapping("food/time.do")
	 public String reserve_time(HttpServletRequest request,HttpServletResponse response)
	 {
		 String day=request.getParameter("day");
		 ReserveDAO dao=ReserveDAO.newInstance();
		 String times=dao.reserve_day_time(Integer.parseInt(day));
		 StringTokenizer st=new StringTokenizer(times,",");
		 List<String> list=new ArrayList<String>();
		 while(st.hasMoreTokens())
		 {
			 String time=dao.reserve_get_time(Integer.parseInt(st.nextToken()));
			 list.add(time);
		 }
		 
		 request.setAttribute("list", list);
		 return "../food/time.jsp";
	 }
//	 @RequestMapping("reserve/reserve_ok.do")
//	 public String reserve_ok(HttpServletRequest request,HttpServletResponse response)
//	 {
//		 try
//		 {
//			 request.setCharacterEncoding("UTF-8");
//		 }catch(Exception ex) {}
//		 String fno=request.getParameter("fno");
//		 String rday=request.getParameter("rday");
//		 String rtime=request.getParameter("rtime");
//		 String inwon=request.getParameter("inwon");
//		 // DAO연결 
////		 System.out.println("fno="+fno);
////		 System.out.println("rday="+rday);
////		 System.out.println("rtime="+rtime);
////		 System.out.println("inwon="+inwon);
//		 HttpSession session=request.getSession();
//		 String id=(String)session.getAttribute("id");
//		 
//		 ReserveVO vo=new ReserveVO();
//		 vo.setFno(Integer.parseInt(fno));
//		 vo.setId(id);
//		 vo.setRday(rday);
//		 vo.setRtime(rtime);
//		 vo.setInwon(inwon);
//		 
//		 ReserveDAO dao=ReserveDAO.newInstance();
//		 dao.reserve_ok(vo);
//		 return "redirect:../mypage/mypage_reserve.do";
//	 }
//	 @RequestMapping("reserve/reserve_info.do")
//	 public String reserve_inf(HttpServletRequest request,HttpServletResponse response)
//	 {
//		 String no=request.getParameter("no"); // 예약정보
//		 String fno=request.getParameter("fno"); //맛집정보 
//		 //DataBase 
//		 ReserveDAO dao=ReserveDAO.newInstance();
//		 ReserveVO rvo=dao.reserveInfoData(Integer.parseInt(no));
//		 FoodVO fvo=dao.reserveFoodInfoData(Integer.parseInt(fno));
//		 request.setAttribute("fvo", fvo);
//		 request.setAttribute("rvo", rvo);
//		 return "../reserve/reserve_info.jsp";
//	 }
}
