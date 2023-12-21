package com.mire.biz.tv;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) throws InterruptedException {
		AbstractApplicationContext beanFactory = new GenericXmlApplicationContext("applicationcontext.xml");
		
		TV tv=(TV) beanFactory.getBean("stv");
		tv.powerOn();
		tv.powerOff();
		tv.volumeUp();
		tv.volumeDwon();
		
		beanFactory.close();
		
	}
}
