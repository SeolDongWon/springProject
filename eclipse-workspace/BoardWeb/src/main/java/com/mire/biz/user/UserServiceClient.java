package com.mire.biz.user;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {

	public static void main(String[] args) {
		System.out.println("UserServiceClient start");
		//1. Spring �����̳ʸ� �����Ѵ�.
		AbstractApplicationContext beanFactory = new GenericXmlApplicationContext("applicationContext.xml");
		
		//2. Spring �����̳ʷκ��� UserServiceImpl ��ü�� Lookup�Ѵ�.
		UserService userService = (UserService) beanFactory.getBean("userServiceImpl");
		
		//3.�α��α�� �׽�Ʈ
		UserVO vo= new UserVO();
		vo.setId("test");
		vo.setPassword("test123");
		
		UserVO user = userService.getUser(vo);
		if(user!=null) {
			System.out.println(user.getName()+"�� ȯ���մϴ�.");
		}else {
			System.out.println("�α��� ����");
		}
		
		//4.Spring �����̳ʸ� �����Ѵ�.
		beanFactory.close();
		
		
	}
}
