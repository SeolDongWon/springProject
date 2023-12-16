package com.mire.biz.common;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

import com.mire.biz.user.UserVO;

@Service
@Aspect
public class AfterReturningAdvice {
//	@Pointcut("execution(* com.mire.biz..*Impl.*(..))")
//	public void allPointcut() {}
//	
//	@Pointcut("execution(* com.mire.biz..*Impl.get*(..))")
//	public void getPointcut() {}
	
	@AfterReturning(pointcut = "PointCutCommon.allPointcut()",returning = "returnObj")
	public void afterReturnLog(JoinPoint jp, Object returnObj) {

		String methodName = jp.getSignature().getName();
		Object[] args = jp.getArgs();
		Object obj = jp.getTarget();
		Date date = new Date();

		// 리턴값 가지고 확인할 수 있다.
		if (returnObj instanceof UserVO) {
			UserVO userVO = (UserVO) returnObj;
			if (userVO.getRole().equals("admin")) {
				System.out.println(userVO.getName() + " 관리자님 환영합니다." + date.toString());
			} else {
				System.out.println(userVO.getName() + " 회원님 방문" + date.toString());
			}
		}
		System.out.println("[afterReturnLog] 비지니스 로직 수행 후 리턴 동작 메소드 : " + methodName + " 매개변수 : " + args[0].toString()
				+ " 클래스 : " + obj.toString());
	}
}