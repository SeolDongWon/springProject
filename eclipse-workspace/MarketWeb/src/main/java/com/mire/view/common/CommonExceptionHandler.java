package com.mire.view.common;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

//@ControllerAdvice("com.mire.view")
public class CommonExceptionHandler {
//	@ExceptionHandler
	public ModelAndView handlerIllegalArgumentException(Exception e) {
		ModelAndView mav = new ModelAndView();
		//예외처리를 처리한 화면 네비게이션입니다.
//		mav.addObject("exception", e);
//		mav.setViewName("common/illegalArgumentError");
		
		return mav;
	}
}
