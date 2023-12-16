package com.mire.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterThrowingAdvice {
	
//	@Pointcut("execution(* com.mire.biz..*Impl.*(..))")
//	public void allPointcut() {}
//	
//	@Pointcut("execution(* com.mire.biz..*Impl.get*(..))")
//	public void getPointcut() {}
//	
	@AfterThrowing(pointcut = "PointCutCommon.allPointcut()",throwing = "exception")
	public void afterThrowingLog(JoinPoint jp, Exception exception) {
		String methodName=jp.getSignature().getName();
		
		if(exception instanceof NumberFormatException) {
			System.out.println("[afterThrowingLog] 예외처리 동작 함수명 : "+methodName+" NumberFormatException ");
		}else if(exception instanceof IllegalArgumentException) {
			System.out.println("[afterThrowingLog] 예외처리 동작 함수명 : "+methodName+" IllegalArgumentException ");
		}else if(exception instanceof Exception) {
			System.out.println("[afterThrowingLog] 예외처리 동작 함수명 : "+methodName+" Exception ");
		}else {
			System.out.println("[afterThrowingLog] 예외처리 동작 함수명 : "+methodName+" 신속하게 검토바람 ");
		}
	}
}