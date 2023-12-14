package com.mire.ioc.injection;

import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class CollectionBeanClient {

	public static void main(String[] args) {
		AbstractApplicationContext beanFac = new GenericXmlApplicationContext("applicationcontext.xml");

		CollectionBean cBean = (CollectionBean) beanFac.getBean("collectionBean");
		
		List<String> list = cBean.getAddressList();
		
		for(String data: list) {
			System.out.println(data.toString());
		}
		
		Set<String> set = cBean.getAddressSet();

		for (String data : set) {
			System.out.println(data.toString());
		}
		
		Map<String, String> map = cBean.getAddressMap();

		Set<String> mapSet = map.keySet();

		for (String data : mapSet) {
			System.out.println(data);
			System.out.println(map.get(data));
		}
		
		Properties  prps = cBean.getAddressProps();

		Set<Object> prpsSet = prps.keySet();

		for (Object data : prpsSet) {
			System.out.println(data);
			System.out.println(prps.get(data));
		}
	
		beanFac.close();
	}
}
