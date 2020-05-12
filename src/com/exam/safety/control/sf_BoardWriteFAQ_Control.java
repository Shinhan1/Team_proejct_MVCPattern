package com.exam.safety.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.safety.handler.sf_Action;
import com.exam.safety.handler.sf_BoardWriteFAQ_Handler;
import com.exam.safety.handler.sf_BoardWriteFAQ_Manager_Handler;
import com.exam.safety.handler.sf_BoardWriteFAQ_Modify_Handler;
import com.exam.safety.handler.sf_boardFAQ_Handler;
import com.exam.safety.handler.sf_boardWirteFAQ_Write_Handler;
import com.exam.safety.handler.sf_boardWriteFAQ_Delete_Handler;
import com.exam.safety.handler.sf_boardWriteFAQ_Mo_Handler;

@WebServlet("/boardWriteFAQ.do")
public class sf_BoardWriteFAQ_Control extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String cmd = req.getParameter("cmd");
		sf_Action model = null;
		String viewPage = null;
		
		if (cmd == null || cmd.equalsIgnoreCase("list")) {
			// 전체 리스트 페이지
			model = new sf_boardFAQ_Handler();
		}else if(cmd.equalsIgnoreCase("manager")) {
			// 글 작성 페이지
			model = new sf_BoardWriteFAQ_Manager_Handler();
		}else if(cmd.equalsIgnoreCase("insertForm")) {
			// 글 작성 페이지
			model = new sf_boardWirteFAQ_Write_Handler();
		}else if(cmd.equalsIgnoreCase("insert")) {
			// 실제 글 작성 기능 수행
			model = new sf_BoardWriteFAQ_Handler();
		}else if(cmd.equalsIgnoreCase("modify")) {
			// 수정 form 보기
			model = new sf_boardWriteFAQ_Mo_Handler();
		}else if(cmd.equalsIgnoreCase("modifyOk")) {
			// 게시글 수정 기능 수행
			model = new sf_BoardWriteFAQ_Modify_Handler();
		}else if(cmd.equalsIgnoreCase("deleteOk")) {
			// 게시글 삭제 기능 수행
			model = new sf_boardWriteFAQ_Delete_Handler();
		}
		
		try {
			viewPage = model.process(req, resp);
			RequestDispatcher rd = req.getRequestDispatcher(viewPage);
			
			rd.forward(req, resp);
			
			
		} catch (SQLException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
}
