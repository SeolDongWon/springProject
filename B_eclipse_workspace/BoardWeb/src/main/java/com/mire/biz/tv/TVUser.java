package com.mire.biz.tv;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TVUser {

	public static void main(String[] args) {
		
		AbstractApplicationContext acFac = new GenericXmlApplicationContext("applicationContext.xml");
		
		TV tv = (TV) acFac.getBean("tv");
		tv.pwerOn();
		tv.volUp();
		
	}
}
