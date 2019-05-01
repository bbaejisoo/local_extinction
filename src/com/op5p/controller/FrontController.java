package com.op5p.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.op5p.model.BoardDTO;
import com.op5p.model.ChartDTO;
import com.op5p.model.MemberDTO;
import com.op5p.util.ChartUtil;

@WebServlet("*.io")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 경로 및 URI 확인
		String path = request.getContextPath();
		//System.out.println("getContextPath : " + path);
		String uri = request.getRequestURI();
		//System.out.println("getRequestURI : " + uri);
		// 인코딩 처리
		response.setCharacterEncoding("UTF-8");
		
		// .io를 잘라내고 순수 경로만 얻는다.
		String requestURI = uri.substring(path.length(), (uri.length()-3));
		
		// 조건에 따라 설정할 객체 생성
		CommonController controller = null;
		Map<String, Object> data = new HashMap<>();
		String page = null;
		
		// 요청 method 저장
		String method = request.getMethod().toLowerCase();
		data.put("method", method);
		
		// session에 member 속성을 확인한다.
		HttpSession session = request.getSession();
		Object sessionObj = session.getAttribute("member");
		
		// 로그아웃 요청이 들어오면 session 모두 종료
		// 메인 페이지로 Redirect !
		if(requestURI.equals("/admin/login/logout")) {
			session.invalidate();
			response.sendRedirect("sign.io");
			return;
		}
		
		System.out.println("uri : " + requestURI);
		//System.out.println("session : " + session.toString());
		
		// login 요청이 아니고, 세션 정보가 없는 경우..
		// 무조건 login 먼저 수행하도록 유도한다.
		if(requestURI.contains("admin")) {
			if(!requestURI.equals("/admin/login/sign") && sessionObj==null) {
				response.sendRedirect(path+"/admin/login/sign.io");
				return;
			}
		}
		
		switch (requestURI) {
		
		/* ==========================================
		 * 
		 * login/sign : 로그인 로직
		 * 
		 * ==========================================
		 */
		
		case "/admin/login/sign":
			controller = new LoginController();
			if(method.equals("get")) {
				page="login.jsp";
			}
			else {
				String member_id = request.getParameter("member_id");
				String member_pw = request.getParameter("member_pw");
				data.put("member_id", member_id);
				data.put("member_pw", member_pw);
				//System.out.println(member_id + "/" + member_pw);
			}
			break;
			
		/* ==========================================
		 * 
		 * [ NOTICE CRUD ]
		 * 
		 * notice : 게시판 목록 출력
		 * noticeWrite : 새 글 작성
		 * noticeModify : 글 수정
		 * noticeDelete : 글 삭제
		 * 
		 * ==========================================
		 */
			
		case "/admin/notice":
			//System.out.println(requestURI);
			controller = new NoticeListController();
			data.put("path", request.getServletContext().getRealPath("admin")+"/notices.json");
			page = "noticeList.jsp";
			break;
			
		case "/admin/noticeWrite":
			//System.out.println(requestURI);
			controller = new NoticeWriteController();
			
			if(method.equals("get")) {
				page ="noticeWrite.jsp";
			}
			else
			{
				String board_title = request.getParameter("board_title");
				String member_id = request.getParameter("member_id");
				String board_content = request.getParameter("board_content");
				int board_public = Integer.parseInt(request.getParameter("board_public"));
				
				BoardDTO board = new BoardDTO();
				board.setBoard_title(board_title);
				board.setMember_id(member_id);
				board.setBoard_content(board_content);
				board.setBoard_public(board_public);
				
				data.put("board", board);
				page = "notice.io";
			}
			break;
			
		case "/admin/noticeModify":
			controller = new NoticeModifyController();
			if(method.equals("get")) {
				int board_num = Integer.parseInt(request.getParameter("board_num"));
				data.put("board_num", board_num);
				page = "noticeModify.jsp";
			}
			else {
				int board_num = Integer.parseInt(request.getParameter("board_num"));
				String board_title = request.getParameter("board_title");
				String member_id = request.getParameter("member_id");
				String board_content = request.getParameter("board_content");
				int board_public = Integer.parseInt(request.getParameter("board_public"));
				
				BoardDTO board = new BoardDTO();
				board.setBoard_num(board_num);
				board.setBoard_title(board_title);
				board.setMember_id(member_id);
				board.setBoard_content(board_content);
				board.setBoard_public(board_public);
				
				data.put("board", board);
				page = "notice.io";
			}
			break;
			
		case "/admin/noticeDelete":
			controller = new NoticeDeleteController();
			int board_num = Integer.parseInt(request.getParameter("board_num"));
			data.put("board_num", board_num);
			page = "notice.io";
			break;
			
		/* ==========================================
		 * 
		 * [ CHART CRUD ]
		 * 
		 * chart : 차트 목록 출력
		 * chartCreate : 차트 생성
		 * chartModify : 차트 수정
		 * chartDelete : 차트 삭제
		 * 
		 * ==========================================
		 */
			
		case "/admin/chart":
			controller = new ChartListController();
			data.put("path", request.getServletContext().getRealPath("admin")+"/chartdata.json");
			page = "chartList.jsp";
			break;
			
		case "/admin/chartCreate":
			//System.out.println(requestURI);
			controller = new ChartCreateController();
			
			if(method.equals("get")) {
				page ="chartCreate.jsp";
			}
			else
			{
				ChartDTO chart = ChartUtil.makeChart(request);
				
				data.put("chart", chart);
				page = "chart.io";
			}
			break;
			
		case "/admin/chartModify":
			controller = new ChartModifyController();
			if(method.equals("get")) {
				String chart_id = request.getParameter("chart_id");
				System.out.println("chart_id : " + chart_id);
				data.put("chart_id", chart_id);
				page = "chartModify.jsp";
				
			}
			else {
				ChartDTO chart = ChartUtil.makeChart(request);
				
				data.put("chart", chart);
				page = "chart.io";
			}
			break;
			
		case "/admin/chartDelete":
			controller = new ChartDeleteController();
			String chart_id = request.getParameter("chart_id");
			data.put("chart_id", chart_id);
			page = "chart.io";
			break;
			
		/* ==========================================
		 * 
		 * [ CHART 출력 ]
		 * 
		 * chartList : 차트 전체 조회
		 * chartDetail : 차트 상세 정보 조회
		 * 
		 * ==========================================
		 */
			
		case "/chart/chartList":
			controller = new ChartListController();
			data.put("path", request.getServletContext().getRealPath("admin")+"/chartdata.json");
			page = "Charts.jsp";
			break;
			
		case "/chart/chartDetail":
			controller = new ChartModifyController();
			if(method.equals("get")) {
				chart_id = request.getParameter("chart_id");
				System.out.println("chart_id : " + chart_id);
				
				data.put("chart_id", chart_id);
				data.put("path", request.getServletContext().getRealPath("data"));
				page = "chartDetail.jsp";
			}
			
			break;
			
		default:
			break;
		}// switch end
		
		
		controller.execute(data);
		
		
		// 로그인 결과 확인
		Object loginResult = data.get("loginResult");
		
		if(loginResult != null) {
			// 로그인 성공 시, 관리자 페이지로 이동
			if(((String)loginResult).equals("yes")) {
				MemberDTO member = (MemberDTO)data.get("member");
				session.setAttribute("member", member);
				response.sendRedirect("../dashboard.jsp");
				return;
			}
			// 로그인 실패 시, 다시 로그인 화면으로 이동
			else {
				response.sendRedirect("sign.io");
				return;
			}
				
		}
		
		// data에 저장된 내용을 request의 속성에 기록한다
		for(String key:data.keySet()) {
			request.setAttribute(key, data.get(key));
		}
		
		System.out.println("page : " + page);
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
