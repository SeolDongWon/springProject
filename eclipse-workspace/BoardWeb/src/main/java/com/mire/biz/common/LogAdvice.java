package com.mire.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

//<bean id="log" class="com.mire.biz.common.LogAdvice"></bean>
//	���� �Ʒ��� ������ ���� 
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
		System.out.println("[LogAdviceLog] �����Ͻ� ���� ���� �� ���� "+methodName+" �Ű�����"+args[0].toString()+" Ŭ����"+obj.toString());
	}
}
