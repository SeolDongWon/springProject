package com.mire.biz.common;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class PointCutCommon {
//	<aop:pointcut  id="allPointcut" expression="execution(* com.mire.biz..*Impl.*(..))"/>
	@Pointcut("execution(* com.mire.biz..*Impl.*(..))")
	public void allPointcut() {}
	
//	<aop:pointcut  id="getPointcut" expression="execution(* com.mire.biz..*Impl.get*(..))"/>
	@Pointcut("execution(* com.mire.biz..*Impl.get*(..))")
	public void getPointcut() {}
	
}
