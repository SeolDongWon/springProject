package com.mire.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;

//<bean id="log" class="com.mire.biz.common.LogAdvice"></bean>
//	위와 아래는 역할이 같다 
@Service
//<aop:aspect ref="log4">
@Aspect
public class LogAdvice {
	
////	<aop:pointcut  id="allPointcut" expression="execution(* com.mire.biz..*Impl.*(..))"/>
//	@Pointcut("execution(* com.mire.biz..*Impl.*(..))")
//	public void allPointcut() {}
//	
////	<aop:pointcut  id="getPointcut" expression="execution(* com.mire.biz..*Impl.get*(..))"/>
//	@Pointcut("execution(* com.mire.biz..*Impl.get*(..))")
//	public void getPointcut() {}
	
//	<aop:after-throwing method="afterThrowingLog" pointcut-ref="allPointcut" throwing="exception"/>
	@Before("PointCutCommon.allPointcut()")
	public void printLog(JoinPoint jp) {

		String methodName = jp.getSignature().getName();
		Object[]args = jp.getArgs();
		Object obj = jp.getTarget();
		System.out.println("[LogAdviceLog] 비지니스 로직 수행 후 동작 "+methodName+" 매개변수"+args[0].toString()+" 클래스"+obj.toString());
	}
}