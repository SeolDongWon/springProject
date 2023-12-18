package com.mire.biz.common;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;
import org.springframework.util.StopWatch;

@Service
@Aspect
public class AroundAdvice {
//	@Pointcut("execution(* com.mire.biz..*Impl.*(..))")
//	public void allPointcut() {}
//	
//	@Pointcut("execution(* com.mire.biz..*Impl.get*(..))")
//	public void getPointcut() {}
//	
	@Around("PointCutCommon.allPointcut()")
	public Object aroundLog(ProceedingJoinPoint pjp) throws Throwable{
		System.out.println("[aroundLog start]");
		StopWatch sW = new StopWatch();
		sW.start();
		Object obj =pjp.proceed();
		sW.stop();
		String funcName = pjp.getSignature().getName();
		System.out.println("[aroundLog stop] "+funcName+" 실행시간 : "+sW.getLastTaskTimeMillis()+"ms");
		return obj;
	}
}
