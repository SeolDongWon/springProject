package com.mire.view.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HandlerMapping handlerMapping;
	private ViewResolver viewResolver;
	
	public DispatcherServlet() {
		super();
	}
	
	@Override
	public void init() throws ServletException {
		//1 controller 객체를 만든다.
		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();
		viewResolver.setPrefix("./");
		viewResolver.setSuffix(".jsp");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 1 클라이언트의 요청path 정보를 추출한다.
		String uri = request.getRequestURI();
		String path = uri.substring(uri.lastIndexOf("/"));
		request.setCharacterEncoding("UTF-8");
		System.out.println(path);
		
		// 2 해당 controller를 진행한다
		Controller controller = handlerMapping.getController(path);
		
		// 3 검색한 controller를 실행한다
		String viewName = controller.handleRequest(request, response);
		
		// 4 viewResolver를 통해 viewName에 해당하는 화면을 검색한다.
		if(!viewName.contains(".do")) {
			viewName = viewResolver.getView(viewName);
		}
		
		// 5 검색한 화면으로 이동한다.
		response.sendRedirect(viewName);
	}
}